#!/bin/bash
mkdir /var/lib/aziot
mkdir -p /var/lib/aziot/{certd,keyd,identityd,tpmd,edged}
chown -R iotedge:iotedge /var/lib/aziot/edged/
chown -R aziotcs:aziotcs /var/lib/aziot/certd/
chown -R aziotks:aziotks /var/lib/aziot/keyd/
chown -R aziotid:aziotid /var/lib/aziot/identityd/
chown -R aziottpm:aziottpm /var/lib/aziot/tpmd

chown -R iotedge:iotedge /etc/aziot/edged/
chown -R aziotcs:aziotcs /etc/aziot/certd/
chown -R aziotks:aziotks /etc/aziot/keyd/
chown -R aziotid:aziotid /etc/aziot/identityd/
chown -R aziottpm:aziottpm /etc/aziot/tpmd
