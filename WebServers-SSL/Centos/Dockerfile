FROM centos:7
RUN yum -y update
RUN yum install -y epel-release
RUN yum install -y nginx
RUN mkdir -p /opt/nginx/logs/
RUN mkdir -p /opt/nginx/testcom/
RUN mkdir -p /opt/nginx/cert/

#копирование папки с файлми закрытого ключа .key и файла сертификата .crt
COPY ./cert /opt/cert
WORKDIR /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]