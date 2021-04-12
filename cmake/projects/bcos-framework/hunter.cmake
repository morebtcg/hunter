# Copyright (c) 2021, yujiechen
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    bcos-framework
    VERSION
    3.0.0
    URL
    "https://github.com/FISCO-BCOS/bcos-framework/archive/3db19402d6fda362ac8d9cc95c6d8c1fe269f60f.tar.gz"
    SHA1
    2fa721cae7bed5fdc4756550e00589fd52f2c568
)

hunter_cmake_args(
    bcos-framework
    CMAKE_ARGS
    CMAKE_INSTALL_LIBDIR=lib
    CMAKE_INSTALL_BINDIR=bin
    CMAKE_INSTALL_INCLUDEDIR=include
)
hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(bcos-framework)
hunter_download(PACKAGE_NAME bcos-framework)
