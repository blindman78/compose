FROM debian:jessie

RUN apt-get update && apt-get install -y phpmyadmin

INCLUDE docker/images/myadmin/phpmyadmin.conf /etc/dbconfig-common/phpmyadmin.conf