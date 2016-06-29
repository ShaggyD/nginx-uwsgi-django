Docker Nginx, Uwsgi and Django Image
==================
This image provids a fully functional image that runs a django project through nginx and uwsgi.

## Quick Start:
To pull the image: 
```
$ docker pull shaggyd/nginx-uwsgi-django
```

To start the image from your django directory:
```
docker run --rm -it --name tmp-django-server -v `pwd`:/opt/application/ -p 80:80 -e "APPLICATION=audi" shaggyd/nginx-uwsgi-django
```

You must have a enviroment variable with your django application name like `-e "APPLICATION=audi"` where *audi* is the project name/directory. 


You can mount the application volume to run a specific application.  The default volume inside in the container is `/opt/django/app`.  Here is an example:
`docker run -p 80 -d -e MODULE=myapp -v /home/mbentley/myapp:/opt/django/app mbentley/django-uwsgi-nginx`

By default, this just runs a default 'welcome to django' project.
