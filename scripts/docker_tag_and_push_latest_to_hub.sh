#!/usr/bin/env bash

set -e

docker pull vkill/db_migration_activerecord:5.2-alpine
docker tag vkill/db_migration_activerecord:5.2-alpine vkill/db_migration:latest
docker push vkill/db_migration:latest
