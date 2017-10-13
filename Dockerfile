FROM nginx:alpine

MAINTAINER Konstantin Grachev <me@grachevko.ru>

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
