#!/bin/sh

# Wait for database to get up and running
if [ "$DATABASE" = "postgres" ]; then
    echo "Waiting for postgres..."

    while ! nc -z $DATABASE_HOST $DATABASE_PORT; do
        sleep 0.1
    done

    echo "PostgreSQL started"
fi

# DB Management
echo "Making migrations and migrating the database."
python manage.py makemigrations main --noinput
python manage.py migrate main --noinput

exec "$@"
