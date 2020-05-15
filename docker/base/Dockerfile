FROM ubuntu:18.04
LABEL author="Linh B. Ngo" email="lngo@wcupa.edu"
LABEL version="0.1"

ENV DEBIAN_FRONTEND noninteractive
COPY installation /installation

RUN apt-get update -qq
RUN apt-get install -y -qq apt-utils netbase vim
RUN apt-get install -y -qq openssh-server ufw iputils-ping iproute2
RUN apt-get install -y -qq gcc make libtool libhwloc-dev libx11-dev
RUN apt-get install -y -qq libxt-dev libedit-dev libical-dev ncurses-dev perl
RUN apt-get install -y -qq postgresql-server-dev-all postgresql-contrib
RUN apt-get install -y -qq python3-dev tcl-dev tk-dev swig libexpat-dev libssl-dev
RUN apt-get install -y -qq libxext-dev libxft-dev autoconf automake
RUN apt-get install -y -qq expat libedit2 postgresql python3 postgresql-contrib sendmail-bin sudo tcl tk libical3 python-dev
