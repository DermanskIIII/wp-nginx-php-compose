FROM php:8.2-fpm
RUN apt-get update && \
    apt-get install -y --no-install-recommends apt-utils libzip-dev libc-client2007e-dev libkrb5-dev libxml2-dev \ 
    libpng-dev \
    libmagick++-dev
RUN docker-php-ext-configure imap --with-kerberos --with-imap-ssl && \
    docker-php-ext-install zip mysqli imap xml exif gd intl
RUN echo '' | pecl install imagick
RUN sed -i "s/listen = 127.0.0.1:9000/listen = 0.0.0.0:9000/" /usr/local/etc/php-fpm.d/www.conf 