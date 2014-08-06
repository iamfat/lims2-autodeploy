#!/bin/sh

GLOGON_CONFIG_FILE=${DOCKER_GLOGON_SERVER_DIR}/config/default.js
[ ! -r $GLOGON_CONFIG_FILE ] || sed -i 's/\(my_port:[^0-9]*\)[0-9]*/\17890/' $GLOGON_CONFIG_FILE
[ ! -r /etc/xinetd.d/lims_device ] || sed -i '/service device_computer/,/\}/d' /etc/xinetd.d/lims_device
supervisorctl restart glogon-server
