FROM php:7.1.28-apache-stretch

ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_RUN_DIR /var/run/apache2

RUN apt-get update

# Configure PHP
RUN set -x \
    && apt-get update
RUN buildDeps=" \
            cron \
            rsyslog \
            libpng-dev \
            libjpeg-dev \
            libmcrypt-dev \
            libxml2-dev \
            freetype* \
            vim \
            nano \
        "; \
    apt-get install -y $buildDeps --no-install-recommends
RUN rm -rf /var/lib/apt/lists/*
RUN apt-get install libpng-dev
RUN apt-get install libjpeg-dev
RUN docker-php-ext-configure gd --with-jpeg-dir=/usr
RUN docker-php-ext-install gd
RUN docker-php-ext-install mbstring
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install mcrypt
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install zip
RUN docker-php-ext-install sockets
RUN docker-php-ext-install soap
RUN docker-php-ext-install bcmath
RUN apt-get purge -y --auto-remove

RUN a2enmod \
        ssl \
        rewrite

RUN a2ensite \
        000-default \
        default-ssl

# install xdebug
RUN cd /tmp/ && \
    apt-get update && \
    apt-get install -y autoconf automake && \
    curl http://xdebug.org/files/xdebug-2.9.1.tgz > xdebug-2.9.1.tgz && \
    tar -zxvf xdebug-2.9.1.tgz && \
    cd xdebug-2.9.1 && \
    phpize && \
    ./configure && \
    make && \
    cp modules/xdebug.so /usr/local/lib/php/extensions/no-debug-non-zts-20160303

# Make sure the volume mount point is empty
RUN rm -rf /var/www/html/*


