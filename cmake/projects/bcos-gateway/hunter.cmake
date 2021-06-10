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
    bcos-gateway
    VERSION
    3.0.0-1fb592e4
    URL
    "https://github.com/FISCO-BCOS/bcos-gateway/archive/1fb592e42d203774714a040e8fc5114102c62c58.tar.gz"
    SHA1
    5531d44e036bdea66a00bbf76f3af3d8e111410c
)

hunter_cmake_args(
    bcos-gateway
    CMAKE_ARGS
    CMAKE_INSTALL_LIBDIR=lib
    CMAKE_INSTALL_BINDIR=bin
    CMAKE_INSTALL_INCLUDEDIR=include
)
hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(bcos-gateway)
hunter_download(PACKAGE_NAME bcos-gateway)
