#!/bin/bash
#
# docker-entrypoint for docker-solr
set -e

for core in "$@"
do
  echo "*Creating Core* $core"
  CORE_NAME=$(echo $core | cut -f1 -d:)
  CORE_CONF=$(echo $core | cut -f2 -d:)
  precreate-core $CORE_NAME $CORE_CONF
  echo "Core $CORE_NAME created with config $CORE_CONF"
done

echo "Starting Solr..."
exec docker-entrypoint.sh solr-foreground
