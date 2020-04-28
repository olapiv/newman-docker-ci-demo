# Demo: Running Newman Tests with Docker in Github Actions

## Introduction

This is the repository to a [demo shown on Youtube](https://youtu.be/xiB2oGi45Gs). It is a continuation of the tutorial of [how to dockerize a web-server](https://github.com/olapiv/docker-nginx-tutorial) and shows how API tests can be executed in Github Actions everytime a commit is pushed to Master on Github.

See the configuration for Github Actions in the [main.yml file](.github/workflows/main.yml).

## Setup

* Install Docker
* Run either:
  * Locally: `docker-compose -f docker-compose.base.yml -f docker-compose.local.yml up --build`
  * on Github Cloud: `docker-compose -f docker-compose.base.yml -f docker-compose.staging.yml up --build`
  * on Production Server: `docker-compose -f docker-compose.base.yml -f docker-compose.production.yml up --build`

For the configuration on the production server to work, your own Dockerhub account is required!

## Potential Improvements

Currently, none of the Docker builds are being cached in Github Actions. Consider using [actions/cache@v1](https://github.com/actions/cache) with:

```sh
docker save \
    hello_django $(docker history -q hello_django | grep -v "<missing>") \
    hello_django_nginx $(docker history -q hello_django_nginx | grep -v "<missing>") \
    hello_django_certbot $(docker history -q hello_django_certbot | grep -v "<missing>") \
    hello_django_newman $(docker history -q hello_django_newman | grep -v "<missing>") \
    --output <CHOSEN_CACHE_PATH>
```

and

```sh
docker load --input <CHOSEN_CACHE_PATH>
```
