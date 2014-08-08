#!/bin/sh

EPC_CONFIG_FILE=${DOCKER_EPC_SERVER_DIR}/config/default.json
[ ! -r $EPC_CONFIG_FILE ] || sed -i "s/\(\"rpc_url\".*:\)[0-9]*\"/\1${DOCKER_EPC_PORT}\"/" $EPC_CONFIG_FILE

supervisorctl restart epc-server
