# Validate keymaps tool
According to [documentation](https://source.android.com/docs/core/interaction/input/validate-keymaps):
> The Android framework has a small tool called validatekeymaps to validate the syntax of input device configuration files, key layout files, key character maps files and virtual key definition files.

This projects contains a subset of Android Open Source Project sources so you can easily build `validatekeymaps` without checking out AOSP sources and installing specific build tools.

Additionaly there is code to compile JS/WASM version of `validatekeymaps` using [Emscripten](https://emscripten.org/). The result is available [here](https://ris58h.github.io/validatekeymaps/).
