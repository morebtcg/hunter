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
    bcos-rpc
    VERSION
    3.0.0-7b9045a
    URL
    "https://github.com/FISCO-BCOS/bcos-rpc/archive/7b9045a714371e0a71eb90735e83c3058dcd7e93.tar.gz"
    SHA1
    b27d60962e41e0beddfb69ac8efea182f8d1bce4
)

hunter_cmake_args(
    bcos-rpc
    CMAKE_ARGS
    CMAKE_INSTALL_LIBDIR=lib
    CMAKE_INSTALL_BINDIR=bin
    CMAKE_INSTALL_INCLUDEDIR=include
)
hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(bcos-rpc)
hunter_download(PACKAGE_NAME bcos-rpc)
