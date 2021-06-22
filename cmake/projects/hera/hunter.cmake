include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    hera
    VERSION
    0.0.1-06eec787
    URL
    "https://github.com/FISCO-BCOS/hera/archive/06eec7873a8df1f2b233dfa22faff30822e5691b.tar.gz"
    SHA1
    8f7484641b5e214525e3f5486acf96babb125db3
)

hunter_cmake_args(hera CMAKE_ARGS
    BUILD_SHARED_LIBS=OFF
    HERA_WASMTIME=ON
    HERA_WASMER=OFF
    HERA_WASMER_NATIVE_ENGINE=OFF
    HERA_WASMER_LLVM_BACKEND=OFF
    HERA_DEBUGGING=OFF
    HUNTER_STATUS_DEBUG=ON
    HUNTER_USE_CACHE_SERVERS=NO)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(hera)
hunter_download(PACKAGE_NAME hera)
