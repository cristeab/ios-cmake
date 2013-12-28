ios-cmake
=========

A toolchain file and examples using cmake for iOS development. This is a fork of a similar project found on https://code.google.com/p/ios-cmake/

This version has been tested with xcode 5.0 and iOS SDK 7.0

In order to compile the static library for the iOS simulator, change to the folder where the library sources reside, then:
 mkdir build
 cd build
 cmake .. -DCMAKE_TOOLCHAIN_FILE=../../../toolchain/iOS.cmake -DIOS_PLATFORM=SIMULATOR
 make
 make install

 Once the library compiled and installed, change to the folder where the sample application sources reside, then open XCode with:
  open hello-app.xcodeproj
