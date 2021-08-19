# Copyright (c) 2021, octopus
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    bcos-boostssl
    VERSION
    1.0.0-3e516c87
    URL
    "https://github.com/FISCO-BCOS/bcos-boostssl/archive/3e516c87463101aaddae543ba752b65cebf9500f.tar.gz"
    SHA1
    71fcc2dd7058bbcb85429bc0a88876ec139b3696
)

hunter_cmake_args(
    bcos-boostssl
    CMAKE_ARGS
    CMAKE_INSTALL_LIBDIR=lib
    CMAKE_INSTALL_BINDIR=bin
    CMAKE_INSTALL_INCLUDEDIR=include
)
hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(bcos-boostssl)
hunter_download(PACKAGE_NAME bcos-boostssl)
