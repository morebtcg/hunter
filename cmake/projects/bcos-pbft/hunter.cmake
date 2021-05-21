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
    bcos-pbft
    VERSION
    3.0.0-2897aeea
    URL
    "https://github.com/FISCO-BCOS/bcos-pbft/archive/2897aeea40b92bd2d461c0d39a3f58dc35227e77.tar.gz"
    SHA1
    e69076e34ea16aeb3a5ed38b16523db4bb92021e
)

hunter_cmake_args(
    bcos-pbft
    CMAKE_ARGS
    CMAKE_INSTALL_LIBDIR=lib
    CMAKE_INSTALL_BINDIR=bin
    CMAKE_INSTALL_INCLUDEDIR=include
)
hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(bcos-pbft)
hunter_download(PACKAGE_NAME bcos-pbft)
