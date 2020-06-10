
SUMMARY = "An Amazon S3 Transfer Manager"
HOMEPAGE = "https://github.com/boto/s3transfer"
AUTHOR = "Amazon Web Services <kyknapp1@gmail.com>"
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=b1e01b26bacfc2232046c90a330332b3"

SRC_URI = "https://files.pythonhosted.org/packages/50/de/2b688c062107942486c81a739383b1432a72717d9a85a6a1a692f003c70c/s3transfer-0.3.3.tar.gz"
SRC_URI[md5sum] = "e351d246498fca53e2ca2bf75c550d60"
SRC_URI[sha256sum] = "921a37e2aefc64145e7b73d50c71bb4f26f46e4c9f414dc648c6245ff92cf7db"

S = "${WORKDIR}/s3transfer-0.3.3"

RDEPENDS_${PN} = ""

inherit setuptools3
