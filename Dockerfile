FROM solr:8.4

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL ca.unb.lib.generator="solr" \
  org.opencontainers.image.title="solr-drupal" \
  org.opencontainers.image.description="solr-drupal provides a quickstart basis for local Solr development in Drupal 8." \
  org.opencontainers.image.vendor="University of New Brunswick Libraries" \
  org.opencontainers.image.authors="UNB Libraries <libsupport@unb.ca>" \
  org.opencontainers.image.source="https://github.com/unb-libraries/docker-solr-drupal" \
  org.opencontainers.image.version="$VERSION" \
  org.opencontainers.image.revision="$VCS_REF" \
  org.opencontainers.image.created="$BUILD_DATE"

ADD data /solr-conf
VOLUME /opt/solr/server/solr/mycores/
COPY scripts /opt/docker-solr/scripts

CMD ["solr-precreate", "drupal", "/solr-conf"]
