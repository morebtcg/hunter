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
    "https://github.com/FISCO-BCOS/bcos-crypto/archive/7105847c29ef622a32c5b906179f097bbd9d9ee5.tar.gz"
    SHA1
    caa27b71bf55dc9c534a86053f84ec5d8d250d94
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
