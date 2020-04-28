# Demo: Running Newman Tests with Docker in Github Actions

## Introduction

This is the repository to a [demo shown on Youtube](https://youtu.be/xiB2oGi45Gs). It is a continuation of the tutorial of [how to dockerize a web-server](https://github.com/olapiv/docker-nginx-tutorial) and shows how API tests can be executed in Github Actions everytime a commit is pushed to Master on Github.

## Setup

### General

* Install Docker
* Run either:

    Locally: `docker-compose -f docker-compose.base.yml -f docker-compose.local.yml up --build`
    or
    on Github Cloud: `docker-compose -f docker-compose.base.yml -f docker-compose.staging.yml up --build`
    or
    on Production Server: `docker-compose -f docker-compose.base.yml -f docker-compose.production.yml up --build`
