FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI_append = "file://drivers.cfg"

do_configure_append () {
    cat ../*.cfg >> ${B}/.config
}