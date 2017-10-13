#!/usr/bin/env sh

if [ -z $NGINX_BACKEND_HOST ]; then
    >&2 echo env "NGINX_BACKEND_HOST" must be declared
    exit 1
else
    sed -i 's/%BACKEND_HOST%/'"$NGINX_BACKEND_HOST"'/g' /etc/nginx/nginx.conf
fi

exec "$@"
