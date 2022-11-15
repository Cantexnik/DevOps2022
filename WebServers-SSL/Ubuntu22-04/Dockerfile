FROM ubuntu:22.04
LABEL author="Alex"
RUN apt-get update
RUN apt-get install apache2 -y
WORKDIR /var/www/html/
RUN mkdir ../test.com
RUN mkdir -p /opt/apache2/testcom
RUN mkdir -p /opt/cert
#копирование папки с файлми закрытого ключа .key и файла сертификата .crt
COPY ./cert /opt/cert
COPY ./apache2.conf /etc/apache2/apache2.conf
COPY ./test.com.conf /etc/apache2/sites-available/test.com.conf

#активируем созданный домен
RUN a2ensite test.com

#активация модуля для работы с сертификатами
RUN a2enmod ssl

#отключаем дефолтный домен
#RUN a2dissite 000-default.conf
EXPOSE 80
CMD [ "apache2ctl","-D","FOREGROUND" ]