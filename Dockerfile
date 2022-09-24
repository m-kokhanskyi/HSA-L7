FROM nginx:alpine

COPY nginx.conf /etc/nginx/

RUN apk update \
    && apk upgrade \
    && apk add --no-cache bash

RUN set -x ; \
    addgroup -g 82 -S www-data ; \
    adduser -u 82 -D -S -G www-data www-data && exit 0 ; exit 1
COPY ./default.conf /etc/nginx/conf.d/default.conf

COPY ./public /var/www/public
RUN chown www-data:www-data /var/www -R

EXPOSE 80