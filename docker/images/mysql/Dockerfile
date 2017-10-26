FROM debian:jessie

RUN apt-get update && apt-get install wget
    apt-get install apt-transport-https lsb-release ca-certificates
	wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
	sudo sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc)  main" > /etc/apt/sources.list.d/php.list'
	apt-get update

RUN apt-get update && apt-get install -y mysql-server && apt-get install -y mysql-client && apt-get install -y php7-mysql

RUN mysql --user=root --password=votrepasswd
