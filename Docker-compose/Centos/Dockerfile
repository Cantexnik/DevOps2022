FROM centos:7
ENV OWNER="Alex" \
    TYPE="TMS-docker-demo" \
    OS_FAMILY="centos" \
    OS_VERSION="7"
RUN yum -y update
RUN yum install -y epel-release
RUN yum install -y nginx
WORKDIR /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]