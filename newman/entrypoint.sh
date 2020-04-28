#!/bin/sh

sleep 1m; 

newman run postman_collection.json -e postman_environment.json;