#!/bin/sh
VARLIB_DIR=${VARLOCAL_DIR}/aziot
VARLOCAL_DIR=/var/local/lib/aziot
mkdir -p ${VARLIB_DIR}
mkdir -p ${VARLOCAL_DIR}
mkdir -p ${VARLOCAL_DIR}/{certd,keyd,identityd,tpmd,edged}
chown -R iotedge:iotedge ${VARLOCAL_DIR}/aziot/edged/
chown -R aziotcs:aziotcs ${VARLOCAL_DIR}/aziot/certd/
chown -R aziotks:aziotks ${VARLOCAL_DIR}/aziot/keyd/
chown -R aziotid:aziotid ${VARLOCAL_DIR}/aziot/identityd/
chown -R aziottpm:aziottpm ${VARLOCAL_DIR}/aziot/tpmd

chown -R iotedge:iotedge /etc/aziot/edged/
chown -R aziotcs:aziotcs /etc/aziot/certd/
chown -R aziotks:aziotks /etc/aziot/keyd/
chown -R aziotid:aziotid /etc/aziot/identityd/
chown -R aziottpm:aziottpm /etc/aziot/tpmd
