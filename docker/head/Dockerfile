FROM base:latest
LABEL author="Linh B. Ngo" email="lngo@wcupa.edu"
LABEL version="0.1"

RUN apk add --no-cache --verbose openldap-clients

COPY start_head.sh /

CMD ["/bin/bash","/start_head.sh"]
