#!/bin/sh

REGEXP="s|ldap://[^']*|ldap://localhost|"

CONFIG_FILE_FMT="${DOCKER_LIMS2_DIR}/%s/config/auth.php"

LAB_CONFIG="$(printf ${CONFIG_FILE_FMT} sites/${SITE_ID}/labs/${LAB_ID})"
[ ! -w $LAB_CONFIG ] || sed -i $REGEXP $LAB_CONFIG
