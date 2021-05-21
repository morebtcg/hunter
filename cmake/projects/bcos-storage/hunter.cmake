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
    bcos-storage
    VERSION
    3.0.0-4dbdc895
    URL
    "https://github.com/FISCO-BCOS/bcos-storage/archive/4dbdc895a3d8d359cea667c60e2a876697b33dc6.tar.gz"
    SHA1
    6939056455a99639298545b04d65092d9c386209
)

hunter_cmake_args(
    bcos-storage
    CMAKE_ARGS
    CMAKE_INSTALL_LIBDIR=lib
    CMAKE_INSTALL_BINDIR=bin
    CMAKE_INSTALL_INCLUDEDIR=include
)
hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(bcos-storage)
hunter_download(PACKAGE_NAME bcos-storage)
