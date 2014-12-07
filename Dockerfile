FROM harbor/base
MAINTAINER Nick Groenen

COPY bin/build.sh /build.sh
RUN /build.sh && rm /build.sh
COPY conf/supervisor/*.conf /etc/supervisor/conf.d/

EXPOSE 80 443
