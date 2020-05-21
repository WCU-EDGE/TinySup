FROM base:latest
LABEL author="Linh B. Ngo" email="lngo@wcupa.edu"
LABEL version="0.1"

#RUN apt-get install -y -qq nfs-common
#RUN apt-get install -y -qq libnss-ldap libpam-ldap ldap-utils

COPY start_compute.sh /

EXPOSE 15001-15007
EXPOSE 32768-61000
EXPOSE 6200

CMD ["/bin/bash","/start_compute.sh"]
