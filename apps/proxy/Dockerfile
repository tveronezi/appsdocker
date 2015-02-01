FROM centos 
MAINTAINER Thiago Veronezi

ADD resources/nginx.repo /etc/yum.repos.d/

RUN yum install -y python-setuptools nginx
RUN easy_install pip
RUN pip install supervisor

ADD resources/supervisord.conf /etc/

RUN rm /etc/nginx/conf.d/*
RUN rm /etc/nginx/nginx.conf
ADD resources/nginx.conf /etc/nginx/

ADD resources/my_proxy.conf /etc/nginx/conf.d/

RUN mkdir -p /opt/run/
RUN mkdir -p /opt/output/

ADD resources/simple_http_server.sh /opt/run/
RUN cd /opt/run/ && chmod +x *.sh

CMD ["/usr/bin/supervisord"]

