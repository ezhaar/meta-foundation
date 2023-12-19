#!/bin/sh

VARLIB_DIR=/var/lib
mkdir -p ${VARLIB_DIR}/aziot
mkdir -p ${VARLIB_DIR}/{certd,keyd,identityd,tpmd,edged}
chown -R iotedge:iotedge ${VARLIB_DIR}/aziot/edged/
chown -R aziotcs:aziotcs ${VARLIB_DIR}/aziot/certd/
chown -R aziotks:aziotks ${VARLIB_DIR}/aziot/keyd/
chown -R aziotid:aziotid ${VARLIB_DIR}/aziot/identityd/
chown -R aziottpm:aziottpm ${VARLIB_DIR}/aziot/tpmd

chown -R iotedge:iotedge /etc/aziot/edged/
chown -R aziotcs:aziotcs /etc/aziot/certd/
chown -R aziotks:aziotks /etc/aziot/keyd/
chown -R aziotid:aziotid /etc/aziot/identityd/
chown -R aziottpm:aziottpm /etc/aziot/tpmd
