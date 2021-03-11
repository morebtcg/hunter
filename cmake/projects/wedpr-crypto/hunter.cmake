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
    "https://github.com/WeBankBlockchain/WeDPR-Lab-Crypto/archive/eafa357144c6aacb8f53a19c64329c3b2df3f154.tar.gz"
    SHA1
    8b25cfd08dd3a20c44bbba1f5382bf8ee74f9e19
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
