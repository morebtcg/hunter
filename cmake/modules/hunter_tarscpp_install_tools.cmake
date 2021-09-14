# Copyright (c) 2021, yujiechen
# All rights reserved.

include(CMakePackageConfigHelpers)
include(hunter_assert_not_empty_string)

function(hunter_install_tarscpp_config)

    hunter_assert_not_empty_string("${HUNTER_tarscpp_VERSION}")
    hunter_assert_not_empty_string("${HUNTER_PACKAGE_INSTALL_PREFIX}")
    hunter_assert_not_empty_string("${HUNTER_SELF}")

    set(templates "${HUNTER_SELF}/cmake/templates")
    set(configs   "${HUNTER_PACKAGE_INSTALL_PREFIX}/lib/cmake/tarscpp")
    file(MAKE_DIRECTORY "${templates}" "${HUNTER_PACKAGE_INSTALL_PREFIX}/lib/cmake" "${configs}")

    write_basic_package_version_file("${configs}/tarscppConfig.cmake" VERSION "${HUNTER_tarscpp_VERSION}" COMPATIBILITY ExactVersion)

    configure_file(
            "${templates}/tarscppConfig.cmake.in"
            "${configs}/tarscppConfig.cmake"
            @ONLY
    )

endfunction()


function(hunter_install_tarscpp_targets)

    hunter_assert_not_empty_string("${HUNTER_PACKAGE_INSTALL_PREFIX}")
    hunter_assert_not_empty_string("${HUNTER_SELF}")
    hunter_assert_not_empty_string("${TARGET_CONFIGURATION}")
    hunter_assert_not_empty_string("${TARS_PARSE_LIB}")
    hunter_assert_not_empty_string("${TARS_SERVANT_LIB}")
    hunter_assert_not_empty_string("${TARS_UTIL_LIB}")
    hunter_assert_not_empty_string("${TARS_INCLUDE_DST_DIR}")

    set(templates "${HUNTER_SELF}/cmake/templates")
    set(configs   "${HUNTER_PACKAGE_INSTALL_PREFIX}/lib/cmake/tarscpp")

    configure_file(
            "${templates}/tarscppTargets.cmake.in"
            "${configs}/tarscppTargets-${TARGET_CONFIGURATION}.cmake"
            @ONLY
    )

endfunction()