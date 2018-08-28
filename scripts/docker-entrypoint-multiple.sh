#!/bin/bash
#
# docker-entrypoint for docker-solr

set -e

for core in "$@"
do
  echo "Creating Core $core"
  CORE_NAME=$(echo $core | cut -f1 -d:)
  CORE_CONF=$(echo $core | cut -f2 -d:)
  /opt/docker-solr/scripts/precreate-core $CORE_NAME $CORE_CONF
done

docker-entrypoint.sh solr-foreground
