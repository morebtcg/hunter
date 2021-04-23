# Copyright (c) 2021, octopus
# All rights reserved.

include(CMakePackageConfigHelpers)
include(hunter_assert_not_empty_string)
include(hunter_status_debug)

function(hunter_install_tassl_config)

    hunter_status_debug("HUNTER_TASSL_VERSION => ${HUNTER_TASSL_VERSION}")
    hunter_status_debug("HUNTER_PACKAGE_INSTALL_PREFIX => ${HUNTER_PACKAGE_INSTALL_PREFIX}")
    hunter_status_debug("HUNTER_SELF => ${HUNTER_SELF}")

    hunter_assert_not_empty_string("${HUNTER_TASSL_VERSION}")
    hunter_assert_not_empty_string("${HUNTER_PACKAGE_INSTALL_PREFIX}")
    hunter_assert_not_empty_string("${HUNTER_SELF}")

    set(templates "${HUNTER_SELF}/cmake/templates")
    set(configs   "${HUNTER_PACKAGE_INSTALL_PREFIX}/lib/cmake/tassl")
    file(MAKE_DIRECTORY "${templates}" "${HUNTER_PACKAGE_INSTALL_PREFIX}/lib/cmake" "${configs}")

    write_basic_package_version_file("${configs}/tasslConfig.cmake" VERSION "${HUNTER_TASSL_VERSION}" COMPATIBILITY ExactVersion)

    configure_file(
            "${templates}/tasslConfig.cmake.in"
            "${configs}/tasslConfig.cmake"
            @ONLY
    )

endfunction()


function(hunter_install_tassl_targets)

    hunter_status_debug("HUNTER_PACKAGE_INSTALL_PREFIX => ${HUNTER_PACKAGE_INSTALL_PREFIX}")
    hunter_status_debug("HUNTER_SELF => ${HUNTER_SELF}")
    hunter_status_debug("TARGET_CONFIGURATION => ${TARGET_CONFIGURATION}")

    hunter_assert_not_empty_string("${HUNTER_PACKAGE_INSTALL_PREFIX}")
    hunter_assert_not_empty_string("${HUNTER_SELF}")
    hunter_assert_not_empty_string("${TARGET_CONFIGURATION}")

    set(templates "${HUNTER_SELF}/cmake/templates")
    set(configs   "${HUNTER_PACKAGE_INSTALL_PREFIX}/lib/cmake/tassl")

    configure_file(
            "${templates}/tasslTargets.cmake.in"
            "${configs}/tasslTargets-${TARGET_CONFIGURATION}.cmake"
            @ONLY
    )

endfunction()