#!/bin/bash

set -e

sed -i "s/module=APPLICATION.wsgi:application/module=$APPLICATION.wsgi:application/g" /etc/container/uwsgi.ini

if [ ! -f "/opt/application/manage.py" ]
then
  pip install django==1.8
  echo "creating basic django project (module: $APPLICATION)"
  django-admin.py startproject $APPLICATION /opt/application/
else
  pip install -r /opt/application/requirements.txt
fi

cd /opt/application
python manage.py collectstatic -l --noinput
python manage.py migrate

exec /usr/bin/supervisord
