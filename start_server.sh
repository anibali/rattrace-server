#!/bin/sh

docker-compose run --rm web rm tmp/pids/server.pid
docker-compose run --rm web rake db:reset
docker-compose up

