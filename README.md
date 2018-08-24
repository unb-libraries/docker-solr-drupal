# Solr for Docker/Drupal
## Local solr instance for Drupal Solr development
This image provides a quickstart basis for local Solr 7.x development in Drupal 8. It is unsuitable and not used in production - use the community image!

## Getting Started
See [newspapers.lib.unb.ca](https://github.com/unb-libraries/newspapers.lib.unb.ca/blob/dev/docker-compose.yml) for an example of use. In your docker-compose.yml:

```
drupal-solr-lib-unb-ca:
  image: unblibraries/solr-drupal:7.x
  ports:
  - "8983:8983"
  entrypoint:
  - docker-entrypoint.sh
  - solr-precreate
  - newspapers.lib.unb.ca
  - /solr-conf
```

where
## License
- Solr for Docker/Drupal is licensed under the MIT License:
  - http://opensource.org/licenses/mit-license.html
- Attribution is not required, but much appreciated:
  - `Solr for Docker/Drupal by UNB Libraries`
