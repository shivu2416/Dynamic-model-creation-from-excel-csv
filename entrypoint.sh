#!/bin/bash

if [ "$DB_NAME" = "test" ]
then
    echo "Waiting for databse..."
    while ! nc -z $DB_HOST $DB_PORT; do
      sleep 0.1
    done

    echo "MySQL started"
fi

python manage.py makemigrations
python manage.py migrate
python manage.py runserver 0.0.0.0:8000

exec "$@"