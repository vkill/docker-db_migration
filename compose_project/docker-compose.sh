#!/usr/bin/env bash

set -e

script_path=$(cd $(dirname $0) ; pwd -P)
script_path_root="${script_path}/"

docker-compose -p ${PROJECT_NAME-db_migration} \
                -f "${script_path_root}docker-compose.yml" \
                -f "${script_path_root}../compose/docker-compose.yml" \
                -f "${script_path_root}../compose/docker-compose.override.yml" \
                $*
