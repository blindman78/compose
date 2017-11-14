FROM arm32v7/httpd

ADD docker/images/apache/app.conf /etc/apache2/sites-available/
RUN a2ensite app

EXPOSE 80

WORKDIR /var/www/html

CMD /usr/sbin/apache2ctl -D FOREGROUND