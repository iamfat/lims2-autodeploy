#!/bin/sh

sed -i "s|\(\$config\['root'\]=.*\)://\(genee.*@[^/]*\)/|\1://genee:${GENEE_PASSWORD}@mysql/|" ${DOCKER_LIMS2_DIR}/application/config/database.php
