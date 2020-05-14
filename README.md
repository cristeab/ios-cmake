ios-cmake
=========

A toolchain file and examples using cmake for iOS development. This is a fork of a similar project found on https://code.google.com/p/ios-cmake/

Tested with Xcode 11.4.1

In order to compile the static library for the iOS simulator (fat file: i386 x86_64), change to the folder where the library sources reside, then:

	mkdir build
	cd build
 	cmake .. -DCMAKE_TOOLCHAIN_FILE=../../../toolchain/iOS.cmake -DIOS_PLATFORM=SIMULATOR
 	make
 	make install

 Once the library is compiled and installed, change to the folder where the sample application sources reside, then open Xcode project:

 	open hello-app.xcodeproj


Set IOS_PLATFORM to OS to build for Device (the generated library is a fat file: armv7 armv7s arm64).
