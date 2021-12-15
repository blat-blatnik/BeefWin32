# BeefWin32

[Beef](https://www.beeflang.org/) bindings for the various Win32 APIs.

This is an **_incomplete_**, **_untested_**, **_work in progress_**. Use at your own peril.

## Current state

- All the types, constants, and functions should be present.
- COM classes are currently unusable.
- `PROPERTYKEY` constants aren't implemented yet. 
- I had to remove 1 function (`CreateDispatcherQueueController`) because it uses a type that's not present in the JSON.
- I removed another function, `System.TpmBaseServices.GetDeviceID`, because `GetDeviceID` is also defined in `Media.Audio.DirectSound`. But I think there's a way to import both. 
- All the generated code is placed into a single static class - `Win32`. I might decide to group them in some other way later.
- Some types had name conflicts. When that happens, I rename one of them `XYZ` -> `XYZ_ALT` or `XyzAbc` -> `XyzAbcAlt`.
- Structs and unions with annonymous members are very annoying to access since Beef doesn't support annonymous members yet. I plan to add properties to make this easier.
- Currently I ignore `[In]`/`[Out]`/`[Optional]` attributes on function parameters, but I plan to make `[Out]` pointer parameters either `ref` or `out`, and non-`[Optional]` pointer parameters `ref`.  

## How to run

```bash
$ python3 generator.py
```

This will parse JSON files from `./json/`, and the output Beef files will be placed at `./output/`.

## How it works

These bindings are generated from the [Win32 metadata](https://github.com/microsoft/win32metadata). I use [win32json](https://github.com/marlersoft/win32json), which converts that metadata to JSON. Then, I use python to parse the JSON and to generate the Beef bindings.
