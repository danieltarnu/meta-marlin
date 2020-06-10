
SUMMARY = "The AWS SDK for Python"
HOMEPAGE = "https://github.com/boto/boto3"
AUTHOR = "Amazon Web Services <>"
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://LICENSE;md5=2ee41112a44fe7014dce33e26468ba93"

SRC_URI = "https://files.pythonhosted.org/packages/6d/e3/bdd48e60b6ec83e77c4f5e300aff9999f0eac97f92b468cc69bd0871f096/boto3-1.13.25.tar.gz"
SRC_URI[md5sum] = "bc48c8cde73389ebf987a12641ab65e8"
SRC_URI[sha256sum] = "1c37c727e0e6f872f5262a893a1ed5422ef0f1ed6075d35b809e20c3072dad5b"

S = "${WORKDIR}/boto3-1.13.25"

RDEPENDS_${PN} = "python3-botocore python3-jmespath python3-s3transfer"

inherit setuptools3
