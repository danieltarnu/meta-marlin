PACKAGECONFIG_append = " networkd resolved"

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " \
    file://eth.network \
    file://en.network \
    file://wlan.network \
    file://start-wifi.sh \
    file://start-wifi.service \
"

FILES_${PN} += " \
    ${sysconfdir}/systemd/network/eth.network \
    ${sysconfdir}/systemd/network/en.network \
    ${sysconfdir}/systemd/network/wlan.network \
    ${sysconfdir}/systemd/system/start-wifi.service \
    ${bindir}/start-wifi.sh \
"

SYSTEM_SERVICE_${PN} = " \
	start-wifi.service \
"

SYSTEM_AUTO_ENABLE_${PN} = "enable"

do_install_append() {
    install -d ${D}${sysconfdir}/systemd/network
    install -m 0644 ${WORKDIR}/eth.network ${D}${sysconfdir}/systemd/network
    install -m 0644 ${WORKDIR}/en.network ${D}${sysconfdir}/systemd/network
    install -m 0644 ${WORKDIR}/wlan.network ${D}${sysconfdir}/systemd/network
    
    # install wifi service
    install -c -m 0755 ${WORKDIR}/start-wifi.service ${D}${sysconfdir}/systemd/system
    install -Dm 0755 ${WORKDIR}/start-wifi.sh ${D}/${bindir}
    
}