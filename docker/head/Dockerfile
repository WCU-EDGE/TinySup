FROM base:latest
LABEL author="Linh B. Ngo" email="lngo@wcupa.edu"
LABEL version="0.1"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -y -qq libnss-ldap libpam-ldap ldap-utils

COPY start_head.sh /

EXPOSE 22

CMD ["/bin/bash","/start_head.sh"]
