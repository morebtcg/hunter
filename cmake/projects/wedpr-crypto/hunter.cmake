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
    "https://github.com/WeBankBlockchain/WeDPR-Lab-Crypto/archive/d7500c8b72cf701297700b4eda84bfe8a5abbc73.tar.gz"
    SHA1
    94f2f9672dbc649c836ae39c35073ded58910bec
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
