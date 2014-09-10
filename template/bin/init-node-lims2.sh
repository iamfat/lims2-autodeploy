#!/bin/sh

logdir=$DOCKER_NODE_LIMS2_LOG_DIR
[ -e "$logdir" ] || mkdir -p "$logdir"
chown -R genee:admin "$logdir"
