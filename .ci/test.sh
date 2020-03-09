#!/bin/bash

if [[ $OS_NAME == "macos" ]]; then
    if  [[ $COMPILER == "clang" ]]; then
        brew install libomp
        if [[ $AZURE == "true" ]]; then
            sudo xcode-select -s /Applications/Xcode_9.4.1.app/Contents/Developer
        fi
fi

mkdir $BUILD_DIRECTORY/build && cd $BUILD_DIRECTORY/build
cmake ..
make _lightgbm -j4 || exit -1
