# Development NGINX PHP MYSQL and REDIS Server with Docker

This is a Development Server Environment created with docker. It contains: PHP-FPM 7.3.16 NGINX 1.14 MYSQL 5.7 REDIS.
All images are Debian Buster images.

## PHP-FPM Instaled modules

Cmath, Ctype, Curl, Date, Dom, Exif, Fileinfo, Filter, FTP, Gd, Hash, Iconv, Intl, Json, Libxml, Mbstring, Mysqlnd, OpenSSL, Pcntl, Pcre, PDO, Pdo_mysql, Pdo_sqlite, Phar, POSIX, Readline, Redis, Reflection, Session, SimpleXML, Sodium, SPL, Sqlite3, Standard, Tokenizer, XML, XMLReader, XMLwriter Zend OPcache

## The Server will be started with docker-compose up or if do you want running it detached with docker-compose up -d

In the docker-compose.yml you should change and add your settings depending on your system or configuration.

## Environment setting with .env

All environment settings could be made in the .env file. To do this you need to copy the env.dist into .env and customize the settings with your own.

- USER user witch one you will run the composer
- USER_GUID the user group id, this can leave it how is it
- TIME_ZONE you time zone like Europe\Berlin
- TIME_ZONE_PATH this is the time zone path for /etc/localtime settings
- MYSQL_ROOT_PASSWORD MySQL root password
- MYSQL_DATABASE the database with you want work
- MYSQL_USER MySQL user for your database
- MYSQL_PASSWORD the password for you database
- MYSQL_PORT MySQL port if you don't run another MySQL server on your machine you can leave it with 3306
- REDIS_PORT this is the Redis standard port if you don't run another Redis server on your machine leave it how it is
- APP_VOLUMEN_PATH ist the path to your app wich one you develop
- MYSQL_DB_PATH in this path will be your MySQL server save the databases. This is important if you want to have the data after you shout down your docker containers.
