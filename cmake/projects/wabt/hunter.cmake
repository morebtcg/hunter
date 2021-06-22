include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    wabt
    VERSION
    1.0.23
    URL
    "https://codeload.github.com/WebAssembly/wabt/tar.gz/1.0.23"
    SHA1
    cb4c3f3b8280ee6c812747897d12fa5fe43dee8f
)

hunter_cmake_args(wabt CMAKE_ARGS
            BUILD_TESTS=OFF BUILD_TOOLS=OFF BUILD_LIBWASM=OFF)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(wabt)
hunter_download(PACKAGE_NAME wabt)
