FROM harbor/base
MAINTAINER Nick Groenen

COPY bin/build.sh /build.sh
RUN /build.sh && rm /build.sh

ENV RUN_NGINX True
EXPOSE 80 443
