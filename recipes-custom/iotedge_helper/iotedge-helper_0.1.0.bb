SUMMARY = "Mount IoTEdge Home dirs"

inherit systemd

SYSTEMD_AUTO_ENABLE:${PN} = "enable"
SYSTEMD_SERVICE:${PN} = "aziot-helper.service"


SRC_URI += "file://aziot-helper.service \
            file://setup_aziot_dirs.sh \
"
S = "${WORKDIR}"

do_install() {
    install -d ${D}${bindir}
    install -m 0755 ${S}/setup_aziot_dirs.sh ${D}${bindir}
    install -d ${D}${systemd_unitdir}/system
    install -m 644 ${S}/aziot-helper.service ${D}${systemd_unitdir}/system
}