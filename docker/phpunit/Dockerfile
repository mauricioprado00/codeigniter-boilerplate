FROM php:7.1.28-apache-stretch

RUN curl -o phpunit.phar -L https://phar.phpunit.de/phpunit-4.1.phar  && \
    chmod +x phpunit.phar && \
    mv phpunit.phar /usr/local/bin/phpunit
