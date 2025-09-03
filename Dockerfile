FROM solr:9.9

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

ENV SOLR_HOME=/solr_home

ADD data /solr-conf
VOLUME /solr_home
COPY scripts /scripts

LABEL ca.unb.lib.generator="solr" \
  com.microscaling.docker.dockerfile="/Dockerfile" \
  com.microscaling.license="MIT" \
  org.label-schema.build-date=$BUILD_DATE \
  org.label-schema.description="solr-drupal provides a quickstart basis for local Solr development in Drupal 8." \
  org.label-schema.name="solr-drupal" \
  org.label-schema.schema-version="1.0" \
  org.label-schema.vcs-ref=$VCS_REF \
  org.label-schema.vcs-url="https://github.com/unb-libraries/docker-solr-drupal" \
  org.label-schema.vendor="University of New Brunswick Libraries" \
  org.label-schema.version=$VERSION \
  org.opencontainers.image.authors="UNB Libraries <libsupport@unb.ca>" \
  org.opencontainers.image.source="https://github.com/unb-libraries/docker-solr-drupal"
