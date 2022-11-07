FROM ubuntu:22.04
LABEL author="Alex"
RUN apt-get update
RUN apt-get install apache2 -y
WORKDIR /var/www/html/
ENV OWNER=Alex
ENV TYPE=TMSdemo
ENV OS_FAMILY=Debian
EXPOSE 80
CMD [ "apache2ctl","-D","FOREGROUND" ]