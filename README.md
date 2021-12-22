# BeefWin32

[Beef](https://www.beeflang.org/) bindings for the various Win32 APIs.

This is a **mostly untested work in progress**. Use at your own peril.

## Current state

- All the types, constants, functions, and COM classes should be working at the moment (I've only tested a few).
- DirectInput API is not present in the win32 metadata at all - Microsoft is trying to kill DI. I still plan to add manual bindings to it.
- All the generated code is placed into a single static class - `Win32`. I might decide to group them in some other way later.
- Some types had name conflicts. When that happens, I rename one of them `XYZ -> XYZ_ALT` or `XyzAbc -> XyzAbcAlt`.
- Some COM classes have `ToString`, `GetType`, `GetFlags`, or `Equals` methods. Since every class/struct in Beef implicitly defines these methods, I had to rename them `ComToString`, `ComGetType`, `ComGetFlags`, `ComEquals` respectively.
- Some functions and COM methods take parameters with types that are never defined in the metadata. For now, I've changed their signature so they all take `void*` instead.
- Structs and unions with anonymous members are very annoying to access since Beef doesn't support anonymous members yet. I plan to add properties to make this easier.
- Currently I ignore `[In]`/`[Out]`/`[Optional]` attributes on function parameters, but I plan to make use of them to add `in`/`out`/`ref` qualifiers at some point.

## How to use

Copy the `output` directory into your Beef project's `src` directory (You can also rename it to `Win32` instead of `output` if you want). You can then access all of the Win32 types, constants, and functions through the `Win32` class inside of the `Win32` namespace.

Here's an example using QueryPerformanceCounter:

```c#
using System;
using Win32;
namespace Test {
    class Program {
        public static void Main() {
            Win32.LARGE_INTEGER qpc = ?, first = ?;
            Win32.LARGE_INTEGER qpf = ?;
            Win32.QueryPerformanceFrequency(&qpf);
            Win32.QueryPerformanceCounter(&first);
            while (true) {
                Win32.QueryPerformanceCounter(&qpc);
                int64 delta = qpc.QuadPart - first.QuadPart;
                double seconds = delta / (double)qpf.QuadPart;
                Console.WriteLine(seconds);
            }
        }
    }
}
```

Here's a full example using COM classes that makes an Open Folder Dialog:

```c#
using System;
using Win32;
namespace Example {
    class Program {
        static void Main() {
            Win32.IFileOpenDialog* dialog = null;
            var iid = Win32.IFileOpenDialog.IID;
            var cid = Win32.CLSID_FileOpenDialog;
            Win32.CoCreateInstance(&cid, null, .CLSCTX_ALL, &iid, (void**)&dialog);

            Win32._FILEOPENDIALOGOPTIONS options = ?;
            dialog.GetOptions((uint32*)&options);
            options |= .FOS_PICKFOLDERS | .FOS_PATHMUSTEXIST;
            dialog.SetOptions((uint32)options);
            dialog.SetTitle("Hello Win32".ToScopedNativeWChar!());
            dialog.Show(0);
            
            Win32.IShellItem* resultFolder = null;
            if (0 < dialog.GetResult(&resultFolder)) {
                char16* result16 = null;
                resultFolder.GetDisplayName(.SIGDN_FILESYSPATH, &result16);

                String result = scope .(result16);
                Console.WriteLine($"You chose '{result}'");

                Win32.CoTaskMemFree(result16);
                resultFolder.Release();
            }
            dialog.Release();
        }
    }
}
```

## How to run the generator

```bash
$ python3 generator.py
```

This will parse JSON files from `./json/`, and the output Beef files will be placed at `./output/`. You need Python 3.9+ to run this.

## How it works

These bindings are generated from the [Win32 metadata](https://github.com/microsoft/win32metadata). I use [win32json](https://github.com/marlersoft/win32json), which converts that metadata to JSON. Then, I use python to parse the JSON and to generate the Beef bindings.
