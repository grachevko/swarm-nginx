FROM nginx:1.15.0-alpine

MAINTAINER Konstantin Grachev <me@grachevko.ru>

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
HEALTHCHECK --interval=5s --timeout=5s --start-period=10s CMD nc -z 127.0.0.1 80
