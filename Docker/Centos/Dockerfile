FROM centos:7
ENV OWNER="Alex" \
    TYPE="TMS-docker-demo" \
    OS_FAMILY="centos" \
    OS_VERSION="7"
RUN yum -y update
RUN yum install -y epel-release
RUN yum install -y nginx
COPY files/index.html /usr/share/nginx/html
COPY files/script.sh /opt/script.sh
RUN chmod +x /opt/script.sh
EXPOSE 80
#CMD ["nginx", "-g", "daemon off;"]
CMD [ "/opt/script.sh" ]