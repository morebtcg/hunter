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
    tbb
    VERSION
    "2020.3"
    URL
    "https://codeload.github.com/oneapi-src/oneTBB/tar.gz/v2020.3"
    SHA1
    ae543670251a6d667e6f077ecfab0d5bb09b270c
)

hunter_cmake_args(
    tbb
    CMAKE_ARGS
    CMAKE_INSTALL_LIBDIR=lib
    CMAKE_INSTALL_BINDIR=bin
    CMAKE_INSTALL_INCLUDEDIR=include
)
hunter_pick_scheme(DEFAULT url_sha1_tbb)
hunter_cacheable(tbb)
hunter_download(PACKAGE_NAME tbb)
