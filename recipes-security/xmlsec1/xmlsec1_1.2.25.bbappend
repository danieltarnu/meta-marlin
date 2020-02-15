FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI_remove = " http://www.aleksey.com/xmlsec/download/${BP}.tar.gz \
"

SRC_URI_append = " http://www.aleksey.com/xmlsec/download/old/${BP}.tar.gz \
"
