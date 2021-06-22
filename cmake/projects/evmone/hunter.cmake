include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    evmone
    VERSION
    0.4.1-37799f82
    URL
    "https://github.com/FISCO-BCOS/evmone/archive/37799f8226c72e2e64e59583f07ab834868de33e.tar.gz"
    SHA1
    cd2d588087b0b951c773499a74a6725e538c5c49
)

hunter_cmake_args(evmone CMAKE_ARGS
    BUILD_SHARED_LIBS=OFF
    HUNTER_STATUS_DEBUG=ON
    HUNTER_USE_CACHE_SERVERS=NO)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(evmone)
hunter_download(PACKAGE_NAME evmone)
