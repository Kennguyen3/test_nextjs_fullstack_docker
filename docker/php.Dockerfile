FROM php:8.2-fpm

RUN apt-get update && \
    apt-get install -y git zip
RUN docker-php-ext-install pdo_mysql mysqli
RUN curl --silent --show-error https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer