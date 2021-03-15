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
    bcos-crypto
    VERSION
    3.0.0
    URL
    "https://github.com/FISCO-BCOS/bcos-crypto/archive/8bd41d063ab87b0bd7122d15d82fa263298a92ba.tar.gz"
    SHA1
    e9b9586017f6c4af23cc1a06d062d68dbbb4685b
)

hunter_cmake_args(
    bcos-crypto
    CMAKE_ARGS
    CMAKE_INSTALL_LIBDIR=lib
    CMAKE_INSTALL_BINDIR=bin
    CMAKE_INSTALL_INCLUDEDIR=include
)
hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(bcos-crypto)
hunter_download(PACKAGE_NAME bcos-crypto)
