FROM ubuntu:18.04
LABEL author="Linh B. Ngo" email="lngo@wcupa.edu"
LABEL version="0.1"

COPY installation /installation

RUN apt-get update -qq
RUN apt-get install -y -qq apt-utils netbase vim
RUN apt-get install -y -qq openssh-server ufw iputils-ping iproute2
