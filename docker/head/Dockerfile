FROM base:latest
LABEL author="Linh B. Ngo" email="lngo@wcupa.edu"
LABEL version="0.1"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -y -qqq nfs-common

COPY start_head.sh /

EXPOSE 22 2049/tcp 52430/udp

CMD ["/bin/bash","/start_head.sh"]
