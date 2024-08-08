#!/bin/sh

python manage.py makemigrations
python manage.py migrate 
python manage.py collectstatic 

# daphne eshopperproject.asgi:application -b 0.0.0.0 -p 8000

celery --app=eshopperproject worker --pool=solo -l INFO
celery -A eshopperproject beat -l INFO
