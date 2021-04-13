# Copyright (c) 2013, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_download)
include(hunter_pick_scheme)

hunter_pick_scheme(
    DEFAULT
    url_sha1_boost_library_all
)

hunter_download(
    PACKAGE_NAME
    Boost
    PACKAGE_COMPONENT
    all
    PACKAGE_INTERNAL_DEPS_ID "48"
)
