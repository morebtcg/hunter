# Copyright (c) 2021, yujiechen
# All rights reserved.

include(CMakePackageConfigHelpers)
include(hunter_assert_not_empty_string)

function(hunter_install_tbb_config)

    hunter_assert_not_empty_string("${HUNTER_tbb_VERSION}")
    hunter_assert_not_empty_string("${HUNTER_PACKAGE_INSTALL_PREFIX}")
    hunter_assert_not_empty_string("${HUNTER_SELF}")

    set(templates "${HUNTER_SELF}/cmake/templates")
    set(configs   "${HUNTER_PACKAGE_INSTALL_PREFIX}/lib/cmake/tbb")
    file(MAKE_DIRECTORY "${templates}" "${HUNTER_PACKAGE_INSTALL_PREFIX}/lib/cmake" "${configs}")

    write_basic_package_version_file("${configs}/tbbConfig.cmake" VERSION "${HUNTER_tbb_VERSION}" COMPATIBILITY ExactVersion)

    configure_file(
            "${templates}/tbbConfig.cmake.in"
            "${configs}/tbbConfig.cmake"
            @ONLY
    )

endfunction()


function(hunter_install_tbb_targets)

    hunter_assert_not_empty_string("${HUNTER_PACKAGE_INSTALL_PREFIX}")
    hunter_assert_not_empty_string("${HUNTER_SELF}")
    hunter_assert_not_empty_string("${TARGET_CONFIGURATION}")
    hunter_assert_not_empty_string("${TARGET_LIB_FILE}")

    set(templates "${HUNTER_SELF}/cmake/templates")
    set(configs   "${HUNTER_PACKAGE_INSTALL_PREFIX}/lib/cmake/tbb")

    configure_file(
            "${templates}/tbbTargets.cmake.in"
            "${configs}/tbbTargets-${TARGET_CONFIGURATION}.cmake"
            @ONLY
    )

endfunction()