# BeefWin32

[Beef](https://www.beeflang.org/) bindings for the various Win32 APIs.

This is a **mostly untested work in progress**. Use at your own peril.

## Current state

- Most of the types, constants, functions, and COM classes should be working at the moment (I've only tested a few).
- DirectInput API is not present in the win32 metadata at all - Microsoft is trying to kill DI. I still plan to add manual bindings to it.
- Some types had name conflicts. When that happens, I rename one of them `XYZ -> XYZ_ALT` or `XyzAbc -> XyzAbcAlt`.
- Some COM classes have `ToString`, `GetType`, `GetFlags`, or `Equals` methods. Since every class/struct in Beef implicitly defines these methods, I had to rename them `ComToString`, `ComGetType`, `ComGetFlags`, `ComEquals` respectively.
- Some functions and COM methods take parameters with types that are never defined in the metadata. For now, I've changed their signature so they all take `void*` instead.
- Bitfields are just smushed into an integral type in the metadata. Which makes working with some structures very tedious. The only way to fix this would be to manually add in properties for them.

## How to use

Requires Beef version from February 2024 or newer. You can download the latest nightly [here](https://www.beeflang.org/#releases). 

Copy the [`output/`](./output/) directory into your Beef project's `src/` directory (You can also rename it to `Win32` instead of `output` if you want). You can then access the Win32 APIs through their respective namespaces.

The [`namespaces.txt`](./namespaces.txt) file lists the namespace of all functions, structs, and constants, in case you can't find them.

## Examples

Here's an example using QueryPerformanceCounter:

```c#
namespace Example;
using System;
using Win32.System.Performance;
class Program {
    public static void Main() {
        QueryPerformanceFrequency(var qpf);
        QueryPerformanceCounter(var first);
        while (true) {
            QueryPerformanceCounter(var qpc);
            int64 delta = qpc.QuadPart - first.QuadPart;
            double seconds = delta / (double)qpf.QuadPart;
            Console.WriteLine(seconds);
        }
    }
}
```

Here's a full example using COM classes that makes an Open Folder Dialog:

```c#
namespace Example;
using System;
using Win32.UI.Shell;
using Win32.System.Com;
class Program {
    static void Main() {
        IFileOpenDialog* dialog = null;
        CoCreateInstance(CLSID_FileOpenDialog, null, .ALL, IFileOpenDialog.IID, (void**)&dialog);
        defer dialog.Release();
        dialog.GetOptions(var options);
        options |= (uint32)(FILEOPENDIALOGOPTIONS.PICKFOLDERS | .PATHMUSTEXIST);
        dialog.SetOptions(options);
        dialog.SetTitle("Hello Win32".ToScopedNativeWChar!());
        dialog.Show(0);
        if (dialog.GetResult(var resultFolder) >= 0) {
            defer resultFolder.Release();
            resultFolder.GetDisplayName(.FILESYSPATH, var result16);
            String result = scope .(result16);
            Console.WriteLine($"You chose '{result}'");
            CoTaskMemFree(result16);
        }
    }
}
```

This minimal example opens a window:

```c#
namespace Example;
using System;
using Win32.Foundation;
using Win32.UI.WindowsAndMessaging;
using Win32.System.LibraryLoader;
class Program {
    static void Main() {
        HINSTANCE instance = GetModuleHandleW(null);
        WNDCLASSEXW @class = .{
            cbSize = sizeof(WNDCLASSEXA),
            style = .HREDRAW | .VREDRAW,
            lpfnWndProc = => WindowProc,
            hInstance = instance,
            hCursor = LoadCursorW(0, IDC_ARROW),
            lpszClassName = "Example".ToScopedNativeWChar!()
        };
        RegisterClassExW(@class);
        RECT rect = .{ left = 0, top = 0, right = 1280, bottom = 720 };
        AdjustWindowRect(out rect, .OVERLAPPEDWINDOW, 0);
        HWND window = CreateWindowExW(
            0,
            @class.lpszClassName,
            "Example".ToScopedNativeWChar!(),
            .OVERLAPPEDWINDOW,
            CW_USEDEFAULT,
            CW_USEDEFAULT,
            rect.right - rect.left,
            rect.bottom - rect.top,
            0,
            0,
            instance,
            null);
        ShowWindow(window, .SHOW);
        MSG message = .();
        while (IsWindowVisible(window) != 0) {
            while (PeekMessageW(out message, window, 0, 0, .REMOVE) != 0) {
                TranslateMessage(message);
                DispatchMessageW(message);
            }
        }
    }
    [CallingConvention(.Stdcall)]
    static LRESULT WindowProc(HWND window, uint32 message, WPARAM wparam, LPARAM lparam) {
        return DefWindowProcW(window, message, wparam, lparam);
    }
}
```

## How to run the generator

```bash
$ python3 generator.py
```

This will parse JSON files from [`json/`](./json/), and the output Beef files will be placed at [`output/`](./output/). You need Python 3.9+ to run this.

At the top of [`generator.py`](./generator.py) there are some configuration options that control how the code is generated. Take a look at them if you want to customize the generation.

## How it works

These bindings are generated from the [Win32 metadata](https://github.com/microsoft/win32metadata). I use [win32json](https://github.com/marlersoft/win32json), which converts that metadata to JSON. Then, I use python to parse the JSON and to generate the Beef bindings.
