FROM solr:7-alpine
MAINTAINER UNB Libraries <libsupport@unb.ca>

LABEL name="solr-drupal"
LABEL vcs-ref=""
LABEL vcs-url="https://github.com/unb-libraries/docker-solr-drupal"

ADD config /solr-conf
VOLUME /opt/solr/server/solr/mycores/

CMD ["solr-precreate", "drupal", "/solr-conf"]
