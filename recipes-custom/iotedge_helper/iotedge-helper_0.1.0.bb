SUMMARY = "Mount IoTEdge Home dirs"
LICENSE = "MIT"
# License checksum file is always required
LIC_FILES_CHKSUM = "file://${COREBASE}/meta/files/common-licenses/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

inherit systemd

SYSTEMD_AUTO_ENABLE:${PN} = "enable"
SYSTEMD_SERVICE:${PN} = "aziot-helper.service"


SRC_URI += "file://aziot-helper.service"

# Change source directory to workdirectory where hello-world.cpp is
S = "${WORKDIR}"


# Install binary to final directory /usr/bin
do_install() {
    install -d ${D}${systemd_unitdir}/system
    install -m 644 ${WORKDIR}/aziot-helper.service ${D}${systemd_unitdir}/system
}