#!/bin/sh

VARLIB_DIR=/var/lib
IOT_HOME=${VARLIB_DIR}/aziot
IOT_CONFIG_DIR=/etc/aziot
mkdir -p ${IOT_HOME}
mkdir -p ${IOT_HOME}/{certd,keyd,identityd,tpmd,edged}
chown -R iotedge:iotedge ${IOT_HOME}/edged/
chown -R aziotcs:aziotcs ${IOT_HOME}/certd/
chown -R aziotks:aziotks ${IOT_HOME}/keyd/
chown -R aziotid:aziotid ${IOT_HOME}/identityd/
chown -R aziottpm:aziottpm ${IOT_HOME}/tpmd

chown -R iotedge:iotedge ${IOT_CONFIG_DIR}/edged/
chown -R aziotcs:aziotcs ${IOT_CONFIG_DIR}/certd/
chown -R aziotks:aziotks ${IOT_CONFIG_DIR}/keyd/
chown -R aziotid:aziotid ${IOT_CONFIG_DIR}/identityd/
chown -R aziottpm:aziottpm ${IOT_CONFIG_DIR}/tpmd
