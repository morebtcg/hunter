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
    bcos-crypto
    VERSION
    3.0.0
    URL
    "https://github.com/FISCO-BCOS/bcos-crypto/archive/43df75238d143b9c892b5810f10997841ed01ef3.tar.gz"
    SHA1
    0d041d392a113339b0e2f2bbc7a7ba9e326c99d3
)

hunter_cmake_args(
    bcos-crypto
    CMAKE_ARGS
    CMAKE_INSTALL_LIBDIR=lib
    CMAKE_INSTALL_BINDIR=bin
    CMAKE_INSTALL_INCLUDEDIR=include
)
hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(bcos-crypto)
hunter_download(PACKAGE_NAME bcos-crypto)
