# BeefWin32

[Beef](https://www.beeflang.org/) bindings for the various Win32 APIs.

This is an **_incomplete_**, **_untested_**, **_work in progress_**. Use at your own peril.

## Current state

- All the types, constants, and functions should be present.
- COM classes are currently unusable.
- DirectInput API is not present in the win32 metadata at all - Microsoft is trying to kill DI. I still plan to add manual bindings to it.
- I had to remove 1 function (`CreateDispatcherQueueController`) because it uses a type that's not present in the JSON.
- All the generated code is placed into a single static class - `Win32`. I might decide to group them in some other way later.
- Some types had name conflicts. When that happens, I rename one of them `XYZ` -> `XYZ_ALT` or `XyzAbc` -> `XyzAbcAlt`.
- Structs and unions with anonymous members are very annoying to access since Beef doesn't support anonymous members yet. I plan to add properties to make this easier.
- Currently I ignore `[In]`/`[Out]`/`[Optional]` attributes on function parameters, but I plan to make `[Out]` pointer parameters either `ref` or `out`, and non-`[Optional]` pointer parameters `ref`.  

## How to run

```bash
$ python3 generator.py
```

This will parse JSON files from `./json/`, and the output Beef files will be placed at `./output/`.

## How it works

These bindings are generated from the [Win32 metadata](https://github.com/microsoft/win32metadata). I use [win32json](https://github.com/marlersoft/win32json), which converts that metadata to JSON. Then, I use python to parse the JSON and to generate the Beef bindings.
