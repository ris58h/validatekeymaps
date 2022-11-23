patch -i emscripten/platform.patch

emcc -O2 -o validatekeymaps.js -std=c++17 platform/**/*.cc platform/**/*.cpp \
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
  -isystem emscripten/include \
  -sENVIRONMENT=web \
  -sINVOKE_RUN=0 \
  -sEXPORTED_RUNTIME_METHODS=callMain,FS

patch -i emscripten/platform.patch -R
