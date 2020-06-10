
SUMMARY = "Python package for providing Mozilla's CA Bundle."
HOMEPAGE = "https://certifiio.readthedocs.io/en/latest/"
AUTHOR = "Kenneth Reitz <me@kennethreitz.com>"
LICENSE = "MPL-2.0"
LIC_FILES_CHKSUM = "file://LICENSE;md5=f77f61d14ee6feac4228d3ebd26cc1f1"

SRC_URI = "https://files.pythonhosted.org/packages/b4/19/53433f37a31543364c8676f30b291d128cdf4cd5b31b755b7890f8e89ac8/certifi-2020.4.5.2.tar.gz"
SRC_URI[md5sum] = "29c9e1bafcf66b49074e8ad9628932bf"
SRC_URI[sha256sum] = "5ad7e9a056d25ffa5082862e36f119f7f7cec6457fa07ee2f8c339814b80c9b1"

S = "${WORKDIR}/certifi-2020.4.5.2"

RDEPENDS_${PN} = ""

inherit setuptools3
