#!/bin/sh

ICCO_CONFIG_FILE=${DOCKER_ICCO_SERVER_DIR}/config/default.js
[ ! -r $ICCO_CONFIG_FILE ] || {
	sed -i "
	    s/\(\"port\"[^0-9]*\)[0-9]*/\1${DOCKER_ICCO_SERVER_PORT}/
	    s/\(\"service_port\"[^0-9]*\)[0-9]*/\1${DOCKER_ICCO_SERVER_PORT}/
	    s/\(\"agent_port\"[^0-9]*\)[0-9]*/\1${DOCKER_ICCO_AGENT_PORT}/
	" $ICCO_CONFIG_FILE
}

supervisorctl restart icco-server icco-agent
