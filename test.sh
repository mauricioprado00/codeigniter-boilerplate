#!/usr/bin/env bash

target="$1"

docker-compose run --rm -w /app app \
    ./vendor/bin/phpunit \
        --bootstrap vendor/autoload.php \
        "${@:2}"  ${target}

