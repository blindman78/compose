FROM debian:jessie

RUN apt-get update && apt-get install wget
    apt-get install apt-transport-https lsb-release ca-certificates
	wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
	sudo sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc)  main" > /etc/apt/sources.list.d/php.list'
	apt-get update

RUN apt-get install apache2 php7.0 php7.0-curl php7.0-gd php7.0-json php7.0-mcrypt php7.0-mysql php7.0-opcache libapache2-mod-php7.0

WORKDIR /var/www/html

EXPOSE 9000