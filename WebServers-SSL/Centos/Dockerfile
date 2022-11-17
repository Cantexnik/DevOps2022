FROM centos:7
RUN yum -y update &&\
    yum install -y epel-release &&\
    yum install -y nginx

RUN mkdir -p /opt/nginx/logs/ &&\
    mkdir -p /opt/nginx/testcom/ &&\
    mkdir -p /opt/nginx/cert/ 


#копирование папки с файлми закрытого ключа .key и файла сертификата .crt
COPY ./cert /opt/cert
WORKDIR /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]