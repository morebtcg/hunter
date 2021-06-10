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
    bcos-gateway
    VERSION
    3.0.0-9600cc23
    URL
    "https://github.com/FISCO-BCOS/bcos-gateway/archive/9600cc238c0cdd66646ee2d66c6ccd358ee59ae2.tar.gz"
    SHA1
    6ac1222c229e27d3816df76dba0f8a9938c1a455
)

hunter_cmake_args(
    bcos-gateway
    CMAKE_ARGS
    CMAKE_INSTALL_LIBDIR=lib
    CMAKE_INSTALL_BINDIR=bin
    CMAKE_INSTALL_INCLUDEDIR=include
)
hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(bcos-gateway)
hunter_download(PACKAGE_NAME bcos-gateway)
