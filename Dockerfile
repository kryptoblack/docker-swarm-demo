FROM openresty/openresty:alpine

ARG VERSION

COPY conf/nginx.conf /etc/nginx/conf.d/default.conf

COPY apps/assets/ /usr/share/nginx/
COPY apps/${VERSION}/ /usr/share/nginx/html/
