#!/usr/bin/env bash
echo ${TIME_ZONE} > /etc/timezone;
ln -fs /usr/share/zoneinfo/${TIME_ZONE_PATH} /etc/localtime;
dpkg-reconfigure --frontend noninteractive tzdata;

sed -i 's/;date.timezone =.*/date.timezone = Europe\/Berlin/g' /usr/local/etc/php/php.ini

php-fpm