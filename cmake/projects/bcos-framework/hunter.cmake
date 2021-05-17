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
    3.0.0-78eb4d2f
    URL
    "https://github.com/FISCO-BCOS/bcos-framework/archive/78eb4d2f54388abc7343bd82b569a215e0c56be8.tar.gz"
    SHA1
    9a09e503539ce883c82633756f3f7fea257eb203
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
