#!/bin/bash

brew install android-platform-tools sdl2 ffmpeg libusb pkg-config meson
curl -L -o scrcpy-server https://github.com/Genymobile/scrcpy/releases/download/v2.7/scrcpy-server-v2.7
meson setup x --buildtype=release --strip -Db_lto=true \
    -Dprebuilt_server=./scrcpy-server
ninja -Cx