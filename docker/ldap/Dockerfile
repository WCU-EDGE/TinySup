FROM base:latest
LABEL author="Linh B. Ngo" email="lngo@wcupa.edu"
LABEL version="0.1"

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install -y nfs-kernel-server runit inotify-tools -qq
RUN mkdir -p /exports

RUN mkdir -p /etc/sv/nfs

RUN echo "nfs             2049/tcp" >> /etc/services
RUN echo "nfs             111/udp" >> /etc/services

COPY start_ldap.sh /

RUN bash /installation/nfs/NFS_client_install.sh

EXPOSE 22
EXPOSE 2049/tcp
EXPOSE 111/udp

CMD ["/bin/bash","/start_ldap.sh"]
