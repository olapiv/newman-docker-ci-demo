#!/bin/sh

## Use this in case you are using a database server:
# echo "Waiting for database server..."
# while ! nc -z $DB_HOST $DB_PORT; do
#     sleep 0.1
# done
# echo "Database server started"

python manage.py migrate
python manage.py collectstatic --no-input --clear

gunicorn hello_django.wsgi:application --bind 0.0.0.0:8000

exec "$@"