include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    evmc
    VERSION
    7.3.0-e0bd9d5d
    URL
    "https://github.com/FISCO-BCOS/evmc/archive/e0bd9d5dc68ec3a00fe9a3c5e81c98946449a20d.tar.gz"
    SHA1
    34acad43523f85531fb4b0ab8af60f2e45ff1989
)

hunter_cmake_args(evmc CMAKE_ARGS
    BUILD_SHARED_LIBS=OFF
    HUNTER_STATUS_DEBUG=ON
    HUNTER_USE_CACHE_SERVERS=NO)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(evmc)
hunter_download(PACKAGE_NAME evmc)
