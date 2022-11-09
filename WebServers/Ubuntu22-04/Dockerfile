FROM ubuntu:22.04
LABEL author="Alex"
RUN apt-get update
RUN apt-get install apache2 -y
WORKDIR /var/www/html/
RUN mkdir ../test.com
RUN mkdir -p /opt/apache2/testcom
#COPY ./index.html /var/www/test.com/index.html
COPY ./apache2.conf /etc/apache2/apache2.conf
#COPY ./index.html /opt/apache2/testcom/index.html
COPY ./test.com.conf /etc/apache2/sites-available/test.com.conf

#активируем созданный домен
RUN a2ensite test.com

#отключаем дефолтный домен
#RUN a2dissite 000-default.conf

#RUN systemctl restart apache2

EXPOSE 80
CMD [ "apache2ctl","-D","FOREGROUND" ]