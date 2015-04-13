FROM php:5.6-apache
MAINTAINER arturluizbr

RUN cd /tmp \
    && pecl channel-update pecl.php.net \
    && pecl download xdebug-2.3.2 \
    && tar zxvf xdebug-2.3.2.tgz -C /usr/src/php/ext/ \
    && docker-php-ext-install mysqli mysql xdebug-2.3.2 \
    && rm -f xdebug-2.3.2.tgz
    && a2enmod rewrite
