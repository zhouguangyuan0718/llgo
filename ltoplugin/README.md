# LLGo LTO Plugin

This directory contains the optional LLVM new pass manager plugin used by LLGo
full LTO builds. It is not required to build or use LLGo.

Build with the same LLVM 21 toolchain used by LLGo:

```sh
cmake -S ltoplugin -B ltoplugin/build \
  -DLLVM_DIR=/path/to/llvm-21/lib/cmake/llvm \
  -DCMAKE_BUILD_TYPE=Release
cmake --build ltoplugin/build
```

Load the plugin when building with full LTO on Linux or macOS:

```sh
llgo build -lto=full -lto-pass-plugin=/path/to/LLGOLTOPlugin.so ./...
```

On macOS, the built plugin usually uses the `.dylib` suffix; pass that path to
the same `-lto-pass-plugin` flag.

The plugin registers `llgo-lto-pre-globaldce` and also inserts that pass through
LLVM's full LTO early extension point, so loading the plugin is enough for the
pass to run before the normal full LTO optimization pipeline proceeds.

LLGo forwards the plugin path through LLVM 21 lld's `--load-pass-plugin` option.
This is supported by both ELF `ld.lld` and Mach-O `ld64.lld`. LLGo selects lld
for native links; invoking Apple `ld64` directly is outside this plugin path.
