# Copyright (c) 2021, yujiechen
# All rights reserved.

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_configuration_types)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    wedpr-crypto
    VERSION
    "1.1.0-5fd2ab0a0"
    URL
    "https://github.com/WeBankBlockchain/WeDPR-Lab-Crypto/archive/5fd2ab0a0aed570e9fc7d7af6ee5aed89dab2739.tar.gz"
    SHA1
    d0834d74d2308c4cfa2c9737dc3dcb627cb3dfee
)

hunter_cmake_args(
    wedpr-crypto
    CMAKE_ARGS
    CMAKE_INSTALL_LIBDIR=lib
    CMAKE_INSTALL_BINDIR=bin
    CMAKE_INSTALL_INCLUDEDIR=include
)
hunter_pick_scheme(DEFAULT url_sha1_wedpr-crypto)
hunter_cacheable(wedpr-crypto)
hunter_download(PACKAGE_NAME wedpr-crypto)
