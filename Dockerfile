FROM php:5.6-apache

RUN apt-get update && apt-get install -y \
		libapache2-mod-auth-mysql \
		php5-mysql \
	&& docker-php-configure --with-mysql
