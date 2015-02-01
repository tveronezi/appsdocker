FROM apps-base

MAINTAINER Thiago Veronezi

ADD resources /opt/run/
RUN cd /opt/run/ && chmod +x *.sh

ADD resources/supervisord.conf /etc/

CMD ["/usr/bin/supervisord"]
