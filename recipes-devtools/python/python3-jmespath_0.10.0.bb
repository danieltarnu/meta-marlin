
SUMMARY = "JSON Matching Expressions"
HOMEPAGE = "https://github.com/jmespath/jmespath.py"
AUTHOR = "James Saryerwinnie <js@jamesls.com>"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=2683790f5fabb41a3f75b70558799eb4"

SRC_URI = "https://files.pythonhosted.org/packages/3c/56/3f325b1eef9791759784aa5046a8f6a1aff8f7c898a2e34506771d3b99d8/jmespath-0.10.0.tar.gz"
SRC_URI[md5sum] = "65bdcb5fa5bcf1cc710ffa508e78e408"
SRC_URI[sha256sum] = "b85d0567b8666149a93172712e68920734333c0ce7e89b78b3e987f71e5ed4f9"

S = "${WORKDIR}/jmespath-0.10.0"

RDEPENDS_${PN} = ""

inherit setuptools3
