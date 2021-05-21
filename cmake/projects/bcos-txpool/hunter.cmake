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
    bcos-txpool
    VERSION
    3.0.0-c891b734
    URL
    "https://github.com/FISCO-BCOS/bcos-txpool/archive/c891b73449f585e023c019a5e4843d854b0ff993.tar.gz"
    SHA1
    15c92bc98909276f7fc6ac1861dd6e2bf6d69b87
)

hunter_cmake_args(
    bcos-txpool
    CMAKE_ARGS
    CMAKE_INSTALL_LIBDIR=lib
    CMAKE_INSTALL_BINDIR=bin
    CMAKE_INSTALL_INCLUDEDIR=include
)
hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(bcos-txpool)
hunter_download(PACKAGE_NAME bcos-txpool)
