#!/bin/bash

set -e

source ${NGINX_RUNTIME_DIR}/functions

[[ $DEBUG == true ]] && set -x

setup_config

exec "$@"
