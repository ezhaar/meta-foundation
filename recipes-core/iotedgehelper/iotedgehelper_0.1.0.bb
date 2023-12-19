SUMMARY = "Mount IoTEdge Home dirs"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COREBASE}/meta/files/common-licenses/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
inherit systemd

SYSTEMD_AUTO_ENABLE:${PN} = "enable"
SYSTEMD_SERVICE:${PN} = "aziot_helper.service"


SRC_URI += "file://aziot_helper.service \
            file://setup_aziot_dirs.sh \
"
S = "${WORKDIR}"

do_install() {
    install -d ${D}${bindir}
    install -m 0755 ${S}/setup_aziot_dirs.sh ${D}${bindir}
    install -d ${D}${systemd_unitdir}/system
    install -m 644 ${S}/aziot_helper.service ${D}${systemd_unitdir}/system
}