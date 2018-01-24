FROM php:7.2-apache

ENV LOCALE fr_FR.UTF-8

ENV TZ=Europe/Paris

RUN docker-php-ext-install mysqli && \
    docker-php-ext-enable mysqli

RUN apt-get update && \
    apt-get install -y --no-install-recommends git zip unzip wget

RUN curl --silent --show-error https://getcomposer.org/installer | php

RUN mv composer.phar /usr/local/bin/composer

# COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
COPY 000-symfony.conf /etc/apache2/sites-available/000-symfony.conf

RUN a2enmod rewrite && \
    a2enmod ssl

RUN a2dissite 000-default && \
    a2ensite 000-symfony

RUN groupadd -f -g 1000 docker && \
    useradd -u 1000 -g docker docker && \
    mkdir -p /home/docker

RUN chown -R docker:docker /home/docker

WORKDIR /var/www/html/

EXPOSE 80 443