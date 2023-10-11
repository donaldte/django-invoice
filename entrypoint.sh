#!/bin/bash 

set -e 

source /env/bin/activate 
python manage.py makemigrations 
python manage.py migrate 

if [$1 == 'gunicorn']; then 

    exec gunicorn django_invoice.wsgi:application -b 0.0.0.0:8000

else

    exec python manage.py runserver 0.0.0.0:8000

fi