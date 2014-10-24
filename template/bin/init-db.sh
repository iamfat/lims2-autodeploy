#!/bin/sh

php ${DOCKER_LIMS2_DIR}/cli/create_orm_tables.php

if [ x"$1" = x--add-user ]; then
	LIMS2_GENEE_EMAIL=$(date '+%s@geneegroup.com')
	php ${DOCKER_LIMS2_DIR}/cli/add_user.php 'genee|database' <<EOF
$LIMS2_GENEE_EMAIL

${LIMS2_GENEE_PASSWORD:-123456}
EOF
fi
