FROM debian:jessie

RUN apt-get update && apt-get install -y apache2
RUN a2enmod proxy_fcgi

EXPOSE 80

WORKDIR /var/www/html

CMD /usr/sbin/apache2ctl -D FOREGROUND