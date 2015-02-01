FROM buildbox
MAINTAINER Thiago Veronezi

RUN cd /opt/sources/tomee && git pull && mvn clean install -DskipTests

CMD ["/bin/bash"]
