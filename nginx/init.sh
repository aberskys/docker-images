#!bin/bash

if [ ! -f /etc/nginx/nginx.conf ]
then
    cp -r /etc/nginx/nginx.default/* /etc/nginx
fi

NGINX=/usr/sbin/nginx

$NGINX -g "daemon off;"
