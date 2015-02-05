#!/bin/sh

REGEXP="s/\(\['computer'\]\['port'\] *= *\)[0-9]*/\1${GLOGON_PUB_PORT}/"
GLOBAL_CONFIG=$DOCKER_LIMS2_DIR/modules/equipments/config/device.php
[ ! -r "$GLOBAL_CONFIG" ] || sed -i "$REGEXP" $GLOBAL_CONFIG
SITE_CONFIG=$DOCKER_LIMS2_DIR/sites/$SITE_ID/globals.php
[ ! -r "$SITE_CONFIG" ] || sed -i "$REGEXP" $SITE_CONFIG
LAB_CONFIG=$DOCKER_LIMS2_DIR/sites/$SITE_ID/labs/$LAB_ID/config/device.php
[ ! -r "$LAB_CONFIG" ] || sed -i "$REGEXP" $LAB_CONFIG

[ ! -r /etc/xinetd.d/lims_device ] || sed -i '/service device_computer/,/\}/d' /etc/xinetd.d/lims_device

EQUIP_CONFIG=$DOCKER_LIMS2_DIR/sites/$SITE_ID/labs/$LAB_ID/config/equipment.php
if [ ! -e "$EQUIP_CONFIG" ]; then
	printf "<?php\n\n" > "$EQUIP_CONFIG"
fi
echo "\$config['computer_host'] = explode(':', \$_SERVER['HTTP_HOST'], 2)[0];" >> "$EQUIP_CONFIG"
