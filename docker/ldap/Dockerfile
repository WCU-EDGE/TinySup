FROM base:latest
LABEL author="Linh B. Ngo" email="lngo@wcupa.edu"
LABEL version="0.1"

#RUN apt-get install -y nfs-kernel-server runit inotify-tools kmod netbase -qq
#RUN apt-get install -y -qq debconf-utils
RUN yum install -y -q openldap-servers

COPY start_ldap.sh /

EXPOSE 22
EXPOSE 389
EXPOSE 636
EXPOSE 15001-15007
EXPOSE 32768-61000
EXPOSE 6200

CMD ["/bin/bash","/start_ldap.sh"]
