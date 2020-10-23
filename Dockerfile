FROM webdevops/php:ubuntu-18.04

ENV WEB_DOCUMENT_ROOT=/app \
    WEB_DOCUMENT_INDEX=index.php \
    WEB_ALIAS_DOMAIN=*.vm \
    WEB_PHP_TIMEOUT=600 \
    WEB_PHP_SOCKET=""
ENV WEB_PHP_SOCKET=127.0.0.1:9000

COPY conf/ /opt/docker/

RUN set -x \
    # Install nginx
    && apt-install \
        nginx \
        stress \
        cpulimit \
        sudo \
    && docker-run-bootstrap \
    && docker-image-cleanup

EXPOSE 80 443

ADD index.php /app/
ADD cpuload.sh /app/
RUN chmod 777 /app/cpuload.sh
