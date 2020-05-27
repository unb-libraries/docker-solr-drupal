FROM solr:8.4
MAINTAINER UNB Libraries <libsupport@unb.ca>

LABEL name="solr-drupal"
LABEL vcs-ref="8.x"
LABEL vcs-url="https://github.com/unb-libraries/docker-solr-drupal"

ADD data /solr-conf
VOLUME /opt/solr/server/solr/mycores/

COPY scripts /opt/docker-solr/scripts

CMD ["solr-precreate", "drupal", "/solr-conf"]
