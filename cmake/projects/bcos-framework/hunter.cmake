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
    "https://github.com/FISCO-BCOS/bcos-framework/archive/bd9af18f47b7c0d6644ff5dfb0ba79f8f1d03538.tar.gz"
    SHA1
    f461d4d0321b2d1f6e23199e8ceb9b2a5d6b5f70
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
