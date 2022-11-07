FROM ubuntu:22.04
LABEL author="Alex"
RUN apt-get update
RUN apt-get install apache2 -y
WORKDIR /var/www/html/
#COPY files/index.html /var/www/html/
COPY files/index.html .
COPY files/script.sh /opt/script.sh
RUN chmod +x /opt/script.sh
ENV OWNER=Alex
ENV TYPE=TMSdemo
ENV OS_FAMILY=Debian
EXPOSE 80
#CMD [ "apache2ctl","-D","FOREGROUND" ]
CMD [ "/opt/script.sh" ]