#!/bin/sh

echo "\$config['dc_gdoor']['port'] = ${GDOOR_PUB_PORT}; // gdoor 门禁端口" >> $DOCKER_LIMS2_DIR/modules/entrance/config/device.php
