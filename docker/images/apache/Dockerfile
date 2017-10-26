FROM debian:jessie

RUN apt-get update && apt-get install -y apache2
RUN a2enmod proxy_fcgi

ADD docker/images/apache/app.conf /etc/apache2/sites-available/

EXPOSE 80

WORKDIR /var/www/html

CMD /usr/sbin/apache2ctl -D FOREGROUND