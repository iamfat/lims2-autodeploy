#!/bin/sh

REGEXP="s|\(\$config\['root'\]=.*\)://\(genee.*@[^/]*\)/|\1://genee:${GENEE_PASSWORD:-83719730}@mysql/|"

CONFIG_FILE_FMT="${DOCKER_LIMS2_DIR}/%s/config/database.php"

sed -i $REGEXP "$(printf ${CONFIG_FILE_FMT} application)"

LAB_CONFIG="$(printf ${CONFIG_FILE_FMT} sites/${SITE_ID}/labs/${LAB_ID})"
[ ! -w $LAB_CONFIG ] || sed -i $REGEXP $LAB_CONFIG
