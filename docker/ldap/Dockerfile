FROM base:latest
LABEL author="Linh B. Ngo" email="lngo@wcupa.edu"
LABEL version="0.1"

COPY start_ldap.sh /

EXPOSE 22 2049/tcp

CMD ["/bin/bash","/start_ldap.sh"]
