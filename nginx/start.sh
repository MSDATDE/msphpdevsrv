#!/usr/bin/env bash
#Change Settings in nginx site config
sed -i 's/%NGINX_PORT/'${NGINX_PORT}'/g' /etc/nginx/conf.d/default.conf
sed -i 's/%SERVER_NAME/'${SERVER_NAME}'/g' /etc/nginx/conf.d/default.conf
sed -i 's~%DOCUMENT_ROOT~'${DOCUMENT_ROOT}'~g' /etc/nginx/conf.d/default.conf
sed -i 's/%FASTCGI_HOST/'${FASTCGI_HOST}'/g' /etc/nginx/conf.d/default.conf
sed -i 's/%FASTCGI_PORT/'${FASTCGI_PORT}'/g' /etc/nginx/conf.d/default.conf

echo ${TIME_ZONE} > /etc/timezone;
ln -fs /usr/share/zoneinfo/${TIME_ZONE_PATH} /etc/localtime;
dpkg-reconfigure --frontend noninteractive tzdata;

nginx -g "daemon off;"