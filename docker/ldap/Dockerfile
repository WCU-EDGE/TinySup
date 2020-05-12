FROM base:latest
LABEL author="Linh B. Ngo" email="lngo@wcupa.edu"
LABEL version="0.1"

RUN apk add --no-cache --verbose openldap openldap-back-mdb
RUN mkdir -p /run/openldap /var/lib/openldap/openldap-data

# adapted from https://github.com/gitphill/ldap-alpine
ENV SUFFIX "dc=csc,dc=wcupa,dc=edu"
ENV ROOT_USER "admin"
ENV ROOT_PW "password"
ENV ACCESS_CONTROL "access to * by * read"
ENV LOG_LEVEL "stats"

COPY start_ldap.sh /

EXPOSE 22
EXPOSE 2049
EXPOSE 389
EXPOSE 636

CMD ["/bin/bash","/start_ldap.sh"]
