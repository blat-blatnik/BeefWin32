# BeefWin32

[Beef](https://www.beeflang.org/) bindings for the various Win32 APIs.

This is a **mostly untested work in progress**. Use at your own peril.

**Note** Currently, this will not work with Beef 0.43.1 or prior. The blockers are already fixed, but until Beef 0.43.2 releases you will need to use a nightly build from December 17, 2021 onwards. You can get nightly builds [here](https://nightly.beeflang.org/index.html).

## Current state

- All the types, constants, functions, and COM classes should be working at the moment (I've only tested a few).
- DirectInput API is not present in the win32 metadata at all - Microsoft is trying to kill DI. I still plan to add manual bindings to it.
- All the generated code is placed into a single static class - `Win32`. I might decide to group them in some other way later.
- Some types had name conflicts. When that happens, I rename one of them `XYZ -> XYZ_ALT` or `XyzAbc -> XyzAbcAlt`.
- Some COM classes have `ToString`, `GetType`, `GetFlags`, or `Equals` methods. Since every class/struct in Beef implicitly defines these methods, I had to rename them `ComToString`, `ComGetType`, `ComGetFlags`, `ComEquals` respectively.
- Some functions and COM methods take parameters with types that are never defined in the metadata. For now, I've changed their signature so they all take `void*` instead.
- Structs and unions with anonymous members are very annoying to access since Beef doesn't support anonymous members yet. I plan to add properties to make this easier.
- Bitfields are just smushed into an integral type in the metadata. Which makes working with some structures very tedious. The only way to fix this would be to manually add in properties for them.

## How to use

Copy the [`output/`](./output/) directory into your Beef project's `src/` directory (You can also rename it to `Win32` instead of `output` if you want). You can then access all of the Win32 types, constants, and functions through the `Win32` class inside of the `Win32` namespace.

## Examples

Here's an example using QueryPerformanceCounter:

```c#
using System;
using Win32;
namespace Example {
    class Program {
        public static void Main() {
            Win32.QueryPerformanceFrequency(var qpf);
            Win32.QueryPerformanceCounter(var first);
            while (true) {
                Win32.QueryPerformanceCounter(var qpc);
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
            Win32.CoCreateInstance(Win32.CLSID_FileOpenDialog, null, .ALL, Win32.IFileOpenDialog.IID, (void**)&dialog);
            defer dialog.Release();

            dialog.GetOptions(var options);
            options |= (uint32)(Win32.FILEOPENDIALOGOPTIONS.PICKFOLDERS | .PATHMUSTEXIST);
            dialog.SetOptions(options);
            dialog.SetTitle("Hello Win32".ToScopedNativeWChar!());
            dialog.Show(0);

            if (dialog.GetResult(var resultFolder) >= 0) {
                defer resultFolder.Release();
                resultFolder.GetDisplayName(.FILESYSPATH, var result16);
                defer Win32.CoTaskMemFree(result16);

                String result = scope .(result16);
                Console.WriteLine($"You chose '{result}'");
            }
        }
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
