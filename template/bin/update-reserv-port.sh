#!/bin/sh

echo "\$config['io.address'] = 'http://wine.genee.cn:${RESERV_PUB_PORT}';" >> $DOCKER_LIMS2_DIR/modules/calendars/config/calendar.php
