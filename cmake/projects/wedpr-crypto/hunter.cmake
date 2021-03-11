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
    "1.0.0"
    URL
    "https://github.com/WeBankBlockchain/WeDPR-Lab-Crypto/archive/fd702678baa3a7720f21699b76832fa79def8c1b.tar.gz"
    SHA1
    dab0eb7034b226f28ddb51be7915287523e430ff
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
