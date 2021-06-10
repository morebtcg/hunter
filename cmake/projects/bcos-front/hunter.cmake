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
    3.0.0-b0e1dc1f
    URL
    "https://github.com/FISCO-BCOS/bcos-front/archive/b0e1dc1f0fe02662b132fb397a7ddfa85a61d9e4.tar.gz"
    SHA1
    657b90c4710a9a3c0aa3d1a9abf89ea1e01bceea
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
