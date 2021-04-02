# Copyright (c) 2021, yujiechen
# All rights reserved.

include(CMakePackageConfigHelpers)
include(hunter_assert_not_empty_string)

function(hunter_install_wedpr_crypto_config)

    hunter_assert_not_empty_string("${HUNTER_wedpr-crypto_VERSION}")
    hunter_assert_not_empty_string("${HUNTER_PACKAGE_INSTALL_PREFIX}")
    hunter_assert_not_empty_string("${HUNTER_SELF}")

    set(templates "${HUNTER_SELF}/cmake/templates")
    set(configs   "${HUNTER_PACKAGE_INSTALL_PREFIX}/lib/cmake/wedpr-crypto")
    file(MAKE_DIRECTORY "${templates}" "${HUNTER_PACKAGE_INSTALL_PREFIX}/lib/cmake" "${configs}")

    write_basic_package_version_file("${configs}/wedpr-cryptoConfig.cmake" VERSION "${HUNTER_wedpr-crypto_VERSION}" COMPATIBILITY ExactVersion)

    configure_file(
            "${templates}/wedpr-cryptoConfig.cmake.in"
            "${configs}/wedpr-cryptoConfig.cmake"
            @ONLY
    )

endfunction()


function(hunter_install_wedpr_crypto_targets)

    hunter_assert_not_empty_string("${HUNTER_PACKAGE_INSTALL_PREFIX}")
    hunter_assert_not_empty_string("${HUNTER_SELF}")
    hunter_assert_not_empty_string("${TARGET_CONFIGURATION}")
    hunter_assert_not_empty_string("${TARGET_CRYPTO_LIB_FILE}")
    hunter_assert_not_empty_string("${TARGET_EXTEND_CRYPTO_LIB_FILE}")
    hunter_assert_not_empty_string("${WEDPR_INCLUDE_INSTALL_DST_DIR}")

    set(templates "${HUNTER_SELF}/cmake/templates")
    set(configs   "${HUNTER_PACKAGE_INSTALL_PREFIX}/lib/cmake/wedpr-crypto")

    configure_file(
            "${templates}/wedpr-cryptoTargets.cmake.in"
            "${configs}/wedpr-cryptoTargets-${TARGET_CONFIGURATION}.cmake"
            @ONLY
    )

endfunction()