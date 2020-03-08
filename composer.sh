#!/usr/bin/env bash
pushd $1 > /dev/null
app=$(pwd)
popd > /dev/null
docker-compose run --rm -v $app:/app composer "$2"
