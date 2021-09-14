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
    tarscpp
    VERSION
    "2.4.0-f040b641"
    URL
    "https://github.com/cyjseagull/TarsCpp/archive/721aeea68abdd0801c3d3b94e70ac299b043448c.tar.gz"
    SHA1
    da5b8ddf655a28723b3477ae03df779b3579778e
)
hunter_pick_scheme(DEFAULT url_sha1_tarscpp)
hunter_cacheable(tarscpp)
hunter_download(PACKAGE_NAME tarscpp)
