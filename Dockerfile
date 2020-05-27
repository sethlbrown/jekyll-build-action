# This image is cached on the Github Actions VM, so it drastically reduces build time
FROM jekyll/builder:3
USER root

#RUN chmod a+w -R /usr/gem/cache
RUN apk update && apk add pkgconfig imagemagick6 imagemagick6-dev imagemagick6-libs
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
