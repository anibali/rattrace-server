## Prepare database

docker-compose run --rm web rake db:migrate
docker-compose run --rm web rake db:setup

## Start everything

docker-compose -f production.yml up
