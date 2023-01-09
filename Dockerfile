FROM openresty/openresty:alpine

ARG VERSION

COPY apps/assets/ /usr/share/nginx/
COPY apps/${VERSION}/ /usr/share/nginx/html/

