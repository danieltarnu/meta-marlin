
SUMMARY = "Extensions to the standard Python datetime module"
HOMEPAGE = "https://dateutil.readthedocs.io"
AUTHOR = "Gustavo Niemeyer <gustavo@niemeyer.net>"
LICENSE = "BSD"
LIC_FILES_CHKSUM = "file://LICENSE;md5=e3155c7bdc71f66e02678411d2abf996"

SRC_URI = "https://files.pythonhosted.org/packages/be/ed/5bbc91f03fa4c839c4c7360375da77f9659af5f7086b7a7bdda65771c8e0/python-dateutil-2.8.1.tar.gz"
SRC_URI[md5sum] = "f2a1d4b680b297b367a974664ca3a4f6"
SRC_URI[sha256sum] = "73ebfe9dbf22e832286dafa60473e4cd239f8592f699aa5adaf10050e6e1823c"

S = "${WORKDIR}/python-dateutil-2.8.1"

RDEPENDS_${PN} = "python3-six"

inherit setuptools3
