FROM base:latest
LABEL author="Linh B. Ngo" email="lngo@wcupa.edu"
LABEL version="0.1"

ENV DEBIAN_FRONTEND noninteractive

COPY start_ldap.sh /

RUN bash /installation/nfs/NFS_client_install.sh

EXPOSE 22 2049/tcp

CMD ["/bin/bash","/start_ldap.sh"]
