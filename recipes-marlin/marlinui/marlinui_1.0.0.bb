SUMMARY = "bitbake-layers recipe"
DESCRIPTION = "Recipe created by bitbake-layers"
LICENSE = "MIT"

SRC_URI = " \ 
	file://marlinui-1.0.0-1.aarch64.rpm \
	file://LICENSE.txt \
"
DEPENDS += "qtmultimedia qtquickcontrols"

SRC_URI[md5sum] = "cbd0958636993d26d5c69a5509891a66"
SRC_URI[sha256sum] = "73348cc0d669f486f0ac93c279863a3fe6d31361837cf6aea8948a45ff54f13d"

LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=9fc642ff452b28d62ab19b7eea50dfb9"


FILES_${PN} += " \
	/usr/local/bin/* \
	"

S = "${WORKDIR}"

do_install () {
	#mkdir -p ${D}/usr/local/bin/ 
	#mkdir -p ${D}/usr/share/applications/
        #mkdir -p ${D}/usr/share/test1/
	install -d ${D}/usr/local/bin/MarlinUI 
	install -d ${D}/usr/local/lib
	install -m 0755 ${S}/usr/bin/MarlinUI ${D}/usr/local/bin/MarlinUI
	install -m 0755 ${S}/usr/lib ${D}/usr/local/lib
}
