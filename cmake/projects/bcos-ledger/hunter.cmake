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
    bcos-ledger
    VERSION
    3.0.0-d66e456d
    URL
    "https://github.com/FISCO-BCOS/bcos-ledger/archive/d66e456dba9c1e74db0a0ee4c4790227ccf22b97.tar.gz"
    SHA1
    828ce31e131be0a4078f2c47515cd1981fb98c1e
)

hunter_cmake_args(
    bcos-ledger
    CMAKE_ARGS
    CMAKE_INSTALL_LIBDIR=lib
    CMAKE_INSTALL_BINDIR=bin
    CMAKE_INSTALL_INCLUDEDIR=include
)
hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(bcos-ledger)
hunter_download(PACKAGE_NAME bcos-ledger)
