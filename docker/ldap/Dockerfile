FROM base:latest
LABEL author="Linh B. Ngo" email="lngo@wcupa.edu"
LABEL version="0.1"

RUN echo "#!/bin/sh\nexit 0" > /usr/sbin/policy-rc.d
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install -y -qq debconf-utils
RUN apt-get install -y -qq slapd ldap-utils

COPY start_ldap.sh /

EXPOSE 22
EXPOSE 2049/tcp
EXPOSE 111/udp
EXPOSE 389
EXPOSE 636

CMD ["/bin/bash","/start_ldap.sh"]
