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
    bcos-tars-protocol
    VERSION
    3.0.0-1aa32df7
    URL
    "https://github.com/FISCO-BCOS/bcos-tars-protocol/archive/bf11394555ec27b0fb97c9c2f36f26cd49377ae1.tar.gz"
    SHA1
    eefcc20d1f516617ed2bd29e6bb431107879aacd
)

hunter_cmake_args(
    bcos-tars-protocol
    CMAKE_ARGS
    CMAKE_INSTALL_LIBDIR=lib
    CMAKE_INSTALL_BINDIR=bin
    CMAKE_INSTALL_INCLUDEDIR=include
)
hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(bcos-tars-protocol)
hunter_download(PACKAGE_NAME bcos-tars-protocol)
