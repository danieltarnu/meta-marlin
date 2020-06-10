
SUMMARY = "Low-level, data-driven core of boto 3."
HOMEPAGE = "https://github.com/boto/botocore"
AUTHOR = "Amazon Web Services <>"
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=2ee41112a44fe7014dce33e26468ba93"

SRC_URI = "https://files.pythonhosted.org/packages/7c/b4/fd5f0e872c910db2685737c50797db273e6d8de706d9131aef4e8f0f04a5/botocore-1.16.25.tar.gz"
SRC_URI[md5sum] = "e6e190bb28743b495e7e469b855c7302"
SRC_URI[sha256sum] = "b55b3acab42b58c24481a9fbb33d53fb7d8d03dfc0338af0132f6c5010006d0d"

S = "${WORKDIR}/botocore-1.16.25"

RDEPENDS_${PN} = ""

inherit setuptools3
