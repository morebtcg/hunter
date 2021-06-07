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
    bcos-sync
    VERSION
    3.0.0-50e0e264
    URL
    "https://github.com/FISCO-BCOS/bcos-sync/archive/50e0e264f87941aa63471a5273798c873295b45f.tar.gz"
    SHA1
    84e2e7376c3048b9a622c35fe2190906738e9beb
)

hunter_cmake_args(
    bcos-sync
    CMAKE_ARGS
    CMAKE_INSTALL_LIBDIR=lib
    CMAKE_INSTALL_BINDIR=bin
    CMAKE_INSTALL_INCLUDEDIR=include
)
hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(bcos-sync)
hunter_download(PACKAGE_NAME bcos-sync)
