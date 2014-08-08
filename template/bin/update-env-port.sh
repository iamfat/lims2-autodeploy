#!/bin/sh

ENV_CONFIG_FILE=${DOCKER_ENV_SERVER_DIR}/config/default.json
[ ! -r $ENV_CONFIG_FILE ] || sed -i "s/\(\"rpc_url\".*:\)[0-9]*\"/\1${DOCKER_ENV_PORT}\"/" $ENV_CONFIG_FILE

supervisorctl restart env-server
