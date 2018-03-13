FROM arm32v7/php:7.2.3-apache-stretch

ENV LOCALE fr_FR.UTF-8

ENV TZ=Europe/Paris

RUN docker-php-ext-install mysqli && \
    docker-php-ext-install pdo_mysql && \
    docker-php-ext-enable mysqli && \
    docker-php-ext-enable pdo_mysql

RUN apt-get update && \
    apt-get install -y --no-install-recommends zip unzip git wget gnupg build-essential curl

RUN apt-get update && \
    curl -sL https://deb.nodesource.com/setup_9.x | bash - && \
#    echo "deb http://ftp.de.debian.org/debian stretch main" | tee /etc/apt/sources.list.d/test.list && \
    apt-get install -y nodejs

RUN apt-get update && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && \
    apt-get install yarn
#    apt-get -o Dpkg::Options::="--force-overwrite" install -y yarn

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

RUN apt-get upgrade -y

WORKDIR /var/www/html/

EXPOSE 80