FROM ubuntu:18.04
LABEL author="Linh B. Ngo" email="lngo@wcupa.edu"
LABEL version="0.1"

COPY installation /installation

RUN apt-get update -qqq
RUN apt-get install -y -qqq apt-utils netbase
RUN apt-get install -y -qqq openssh-server ufw iputils-ping iproute2
