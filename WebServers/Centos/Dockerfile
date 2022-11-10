FROM centos:7
ENV OWNER="Alex" \
    TYPE="TMS-docker-demo" \
    OS_FAMILY="centos" \
    OS_VERSION="7"
RUN yum -y update
RUN yum install -y epel-release
RUN yum install -y nginx
RUN mkdir -p /opt/nginx/logs/
RUN mkdir -p /opt/nginx/testcom/
WORKDIR /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/nginx.conf
#COPY ./index.html /opt/nginx/testcom
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]