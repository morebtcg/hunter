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
    bcos-front
    VERSION
    3.0.0-2ed687bb
    URL
    "https://github.com/FISCO-BCOS/bcos-front/archive/2ed687bb6ee2dae018b69c1e01d1e9090e262e1a.tar.gz"
    SHA1
    52aebbf7c53a088f44c443244e8def63bf75d61b
)

hunter_cmake_args(
    bcos-front
    CMAKE_ARGS
    CMAKE_INSTALL_LIBDIR=lib
    CMAKE_INSTALL_BINDIR=bin
    CMAKE_INSTALL_INCLUDEDIR=include
)
hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(bcos-front)
hunter_download(PACKAGE_NAME bcos-front)
