FROM php:7.1-fpm

WORKDIR /usr/src/app

RUN apt-get update \
    && apt-get install -y unzip zlib1g-dev gnupg \
    && docker-php-ext-install zip pdo_mysql
#    && apt-get clean \
#    && rm -rf /var/lib/apt/lists/*

RUN curl -s http://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
ENV COMPOSER_ALLOW_SUPERUSER 1

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -- \
    && apt-get install -y nodejs

COPY composer.json .
COPY composer.lock .
COPY package.json .
COPY package-lock.json .

CMD ["/bin/sh"]
