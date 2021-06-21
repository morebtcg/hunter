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
    bcos-executor
    VERSION
    3.0.0-511d88b9
    URL
    "https://github.com/FISCO-BCOS/bcos-executor/archive/511d88b933743858a47cd11e876c0d6aa30f64e8.tar.gz"
    SHA1
    39df9b0fea6f48e1f0e77b62d2ca4dbc05d612e5
)

hunter_cmake_args(
    bcos-executor
    CMAKE_ARGS
    CMAKE_INSTALL_LIBDIR=lib
    CMAKE_INSTALL_BINDIR=bin
    CMAKE_INSTALL_INCLUDEDIR=include
)
hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(bcos-executor)
hunter_download(PACKAGE_NAME bcos-executor)
