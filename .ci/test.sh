#!/bin/bash

sudo xcode-select -s /Applications/Xcode_9.4.1.app/Contents/Developer

mkdir $BUILD_DIRECTORY/build && cd $BUILD_DIRECTORY/build
cmake ..
make lightgbm -j4 || exit -1
