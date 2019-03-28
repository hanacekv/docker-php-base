FROM alpine:3.9

LABEL maintainer="Vojtěch Hanáček <hanacekv@gmail.com>"

RUN apk --update upgrade \
    && apk --update add \
        build-base \
        "php7>7.0" \
        php7-apcu \
        php7-ctype \
        php7-curl \
        php7-iconv \
        php7-json \
        php7-mbstring \
        php7-openssl \
        php7-pcntl \
        php7-pear \
        php7-phar \
        php7-posix \
        php7-tokenizer \
    && ln -s /usr/sbin/php-fpm7 /usr/bin/php-fpm \
    && rm -rf /var/cache/apk/* /tmp/*

CMD ["/bin/sh"]