do_install() {
    qmake5_base_do_install

    # remove things unused in nativesdk, we need the headers and libs
    rm -rf ${D}${datadir} \
           ${D}${libdir}/cmake \
           ${D}${libdir}/pkgconfig

    # Install CMake's toolchain configuration
    #mkdir -p ${D}${datadir}/cmake/OEToolchainConfig.cmake.d/
    #install -m 644 ${WORKDIR}/OEQt5Toolchain.cmake ${D}${datadir}/cmake/OEToolchainConfig.cmake.d/

    # Fix up absolute paths in scripts
    sed -i -e '1s,#!/usr/bin/python,#! ${USRBINPATH}/env python,' \
        ${D}${OE_QMAKE_PATH_QT_ARCHDATA}/mkspecs/features/uikit/devices.py
}
