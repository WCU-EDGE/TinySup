FROM alpine:3.11.6
LABEL author="Linh B. Ngo" email="lngo@wcupa.edu"
LABEL version="0.1"

RUN apk update
RUN apk add --no-cache --verbose nfs-utils bash iproute2 openssh iputils
RUN rm -rf /var/cache/apk /tmp /sbin/halt /sbin/poweroff /sbin/reboot
RUN mkdir -p /var/lib/nfs/rpc_pipefs /var/lib/nfs/v4recovery
RUN echo "rpc_pipefs    /var/lib/nfs/rpc_pipefs rpc_pipefs      defaults        0       0" >> /etc/fstab
RUN echo "nfsd  /proc/fs/nfsd   nfsd    defaults        0       0" >> /etc/fstab

RUN apk add --no-cache --verbose linux-pam nss-pam-ldapd openldap-clients

COPY installation /installation
COPY .bashrc /root/.bashrc
