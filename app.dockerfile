FROM php:7.4-fpm
RUN apt-get update && apt-get install -y  \
    mariadb-client libmagickwand-dev --no-install-recommends \
    && pecl install imagick \
    && docker-php-ext-enable imagick \
    && docker-php-ext-install  pdo_mysql