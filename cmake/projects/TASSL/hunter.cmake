# Copyright (c) 2013-2014, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_check_toolchain_definition)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    TASSL
    VERSION
    1.1.1b_v1.4
    URL
    "https://codeload.github.com/jntass/TASSL-1.1.1b/zip/fe885b939c13c715633e4c05df8811a1ea7ca079"
    SHA1
    3f207bbd209bec67a5aca27c0ffafe9c57ad1884
)

if(MINGW)
  hunter_pick_scheme(DEFAULT url_sha1_tassl)
elseif(WIN32)
  if("${HUNTER_TASSL_VERSION}" VERSION_LESS "1.1")
    hunter_pick_scheme(DEFAULT url_sha1_tassl_windows)
  else()
    hunter_pick_scheme(DEFAULT url_sha1_tassl_windows_1_1_plus)
  endif()
elseif(APPLE)
  if(IOS)
    hunter_pick_scheme(DEFAULT url_sha1_tassl_ios)
  else()
    hunter_pick_scheme(DEFAULT url_sha1_tassl_macos)
  endif()
else()
  hunter_pick_scheme(DEFAULT url_sha1_tassl)
endif()

if(MINGW)
  hunter_check_toolchain_definition(NAME "__MINGW64__" DEFINED _hunter_mingw64)
  if(_hunter_mingw64)
    hunter_cmake_args(TASSL CMAKE_ARGS HUNTER_TASSL_MINGW64=TRUE)
  endif()
endif()

hunter_cacheable(TASSL)
hunter_download(PACKAGE_NAME TASSL PACKAGE_INTERNAL_DEPS_ID "29")
