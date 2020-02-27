SUMMARY = "bitbake-layers recipe"
DESCRIPTION = "Recipe created by bitbake-layers"
LICENSE = "MIT"

SRC_URI = " \ 
	file://marlingui-1.0.0-1.aarch64.rpm \
	file://LICENSE.txt \
"

PACKAGES = "${PN}-dbg ${PN}"

#DEPENDS += " qtquickcontrols2 xz gcc gcc-runtime glibc pseudo quilt boost"
DEPENDS += " qtquickcontrols2 gcc boost"

#SRC_URI[md5sum] = "cbd0958636993d26d5c69a5509891a66"
#SRC_URI[sha256sum] = "73348cc0d669f486f0ac93c279863a3fe6d31361837cf6aea8948a45ff54f13d"

LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=9fc642ff452b28d62ab19b7eea50dfb9"


FILES_${PN} += " \
	${bindir}/MarlinGUI* \
	${libdir}* \
	"

S = "${WORKDIR}"
LIBDIR = "${S}/usr/lib"
BINDIR = "${S}/usr/bin"

do_install () {
	install -d ${D}/${bindir}/MarlinGUI 
	install -d ${D}/${libdir}
	cp -r ${BINDIR}/MarlinGUI ${D}/${bindir}/MarlinGUI
	cp -r ${LIBDIR} ${D}/${libdir}
	#install -m 0755 ${S}/usr/bin/MarlinGUI/MarlinGUI ${D}/${bindir}/MarlinGUI
	#install -m 0755 ${S}/usr/lib/libEmbeddedTestRunner.so ${D}/${libdir}
	#install -m 0755 ${S}/usr/lib/libEmbeddedTestRunner.so.1 ${D}/${libdir}
	#install -m 0755 ${S}/usr/lib/libEmbeddedTestRunner.so.1.0 ${D}/${libdir}
	#install -m 0755 ${S}/usr/lib/libEmbeddedTestRunner.so.1.0.0 ${D}/${libdir}

	#install -m 0755 ${S}/usr/lib/libMarlinBL.so ${D}/${libdir}
	#install -m 0755 ${S}/usr/lib/libMarlinBL.so.1 ${D}/${libdir}
	#install -m 0755 ${S}/usr/lib/libMarlinBL.so.1.0 ${D}/${libdir}
	#install -m 0755 ${S}/usr/lib/libMarlinBL.so.1.0.0 ${D}/${libdir}
}