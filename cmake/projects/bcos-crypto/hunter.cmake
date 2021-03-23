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
    "https://github.com/FISCO-BCOS/bcos-crypto/archive/52b549106bed9fca43bd44b747bf0a826f2d8933.tar.gz"
    SHA1
    b4c78bb8c29477801b5525bf3e1a2ff1badcd83a
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
