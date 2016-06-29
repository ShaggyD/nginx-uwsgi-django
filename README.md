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


By default, if you have no application in your current directory or volume mounted it will create a sample django project and display the default 'welcome to django' page.
