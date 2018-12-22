#!/usr/bin/env bash

set -e

script_path=$(cd $(dirname $0) ; pwd -P)
script_path_root="${script_path}/"

docker build \
  -t vkill/db_migration_activerecord:5.2-alpine \
  -f "${script_path_root}../activerecord/Dockerfile" \
  "${script_path_root}../activerecord"
