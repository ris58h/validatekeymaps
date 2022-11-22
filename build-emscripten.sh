patch -i emscripten/platform.patch

emcc -o validatekeymaps.html -std=c++17 platform/**/*.cc platform/**/*.cpp \
  -isystem platform/external/fmtlib/include \
  -isystem platform/frameworks/native/include \
  -isystem platform/frameworks/native/libs/gui/include \
  -isystem platform/frameworks/native/libs/math/include \
  -isystem platform/frameworks/native/libs/ui/include \
  -isystem platform/libnativehelper/include_jni \
  -isystem platform/system/core/libcutils/include \
  -isystem platform/system/core/libsystem/include \
  -isystem platform/system/core/libutils/include \
  -isystem platform/system/libbase/include \
  -isystem platform/system/logging/liblog/include \
  -isystem emscripten/include

patch -i emscripten/platform.patch -R
