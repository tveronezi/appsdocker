FROM centos
MAINTAINER Thiago Veronezi

RUN yum install -y subversion wget git tar
RUN yum install -y java-1.7.0-openjdk-devel.x86_64 

ADD http://apache.parentingamerica.com/maven/maven-3/3.0.5/binaries/apache-maven-3.0.5-bin.tar.gz /opt/apache-maven-3.0.5-bin.tar.gz
RUN cd /opt && tar xzf apache-maven-3.0.5-bin.tar.gz && rm apache-maven-3.0.5-bin.tar.gz
ENV M2_HOME /opt/apache-maven-3.0.5
ENV M2 $M2_HOME/bin
ENV PATH $M2:$PATH
ENV MAVEN_OPTS -Xms256m -Xmx2000m -XX:MaxPermSize=256m

RUN chmod -R go-w /opt

RUN mkdir -p /opt/sources/ && cd /opt/sources/ && git clone -b tomee-1.7.x https://git-wip-us.apache.org/repos/asf/tomee.git tomee
RUN mkdir -p /opt/sources/ && cd /opt/sources/ && git clone https://github.com/tveronezi/jchat.git
RUN mkdir -p /opt/sources/ && cd /opt/sources/ && git clone https://github.com/tveronezi/springchat.git
RUN mkdir -p /opt/sources/ && cd /opt/sources/ && git clone https://github.com/tveronezi/boxdata.git
RUN mkdir -p /opt/sources/ && cd /opt/sources/ && git clone https://github.com/tveronezi/msglnk.git
RUN mkdir -p /opt/sources/ && cd /opt/sources/ && git clone https://github.com/tveronezi/faceid.git
RUN mkdir -p /opt/sources/ && cd /opt/sources/ && git clone https://github.com/tveronezi/photodb.git
RUN mkdir -p /opt/sources/ && cd /opt/sources/ && git clone https://github.com/tveronezi/rssreader.git
RUN mkdir -p /opt/sources/ && cd /opt/sources/ && git clone https://github.com/tveronezi/querydata.git

RUN mkdir -p /opt/run/
RUN mkdir -p /opt/output/

# build and download dependencies only
RUN cd /opt/sources/tomee && mvn clean install -DskipTests

ADD nginx.repo /etc/yum.repos.d/

RUN yum install -y python-setuptools nginx
RUN easy_install pip
RUN pip install supervisor

ENV TOMEE_VERSION 1.7.2-SNAPSHOT

CMD ["/usr/bin/bash"]

