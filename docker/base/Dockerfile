# base image for building pbspro
FROM centos:7 AS builder
# install dependencies for building
COPY installation/pbspro/v19.1.3.tar.gz /
RUN yum install -y \
    expat-devel \
    gcc \
    git \
    hwloc-devel \
    libedit-devel \
    libical-devel \
    libtool \
    libX11-devel \
    libXext \
    libXft \
    libXt-devel \
    make \
    ncurses-devel \
    openssl-devel \
    perl \
    postgresql-contrib \
    postgresql-devel \
    python \
    python-devel \
    python3 \
    python3-devel \
    rpm-build \
    swig \
    tcl-devel \
    tk-devel \
    libtool-ltdl-devel
RUN mkdir /src && \
    tar xzf /v19.1.3.tar.gz -C /src && \
    mv /src/pbspro-19.1.3 /src/pbspro && \
    bash /src/pbspro/docker/centos7/build.sh

FROM centos:7
LABEL author="Linh B. Ngo" email="lngo@wcupa.edu"
LABEL version="0.1"

COPY installation /installation
COPY --from=builder /root/rpmbuild/RPMS/x86_64/pbspro-server-*.rpm .
COPY --from=builder /src/pbspro/docker/centos7/entrypoint.sh /
ENV LD_LIBRARY_PATH="/usr/lib64:/usr/local/lib64:$LD_LIBRARY_PATH"
# install pbspro
RUN yum install -y wget perl make gcc perl-Module-Load-Conditional perl-Test-Harness
RUN yum install -y expat libedit2 libedit2-devel postgresql-server postgresql-contrib python3 python sendmail sudo tcl tk libical
RUN yum install -y -q openldap openldap-clients
RUN wget https://www.openssl.org/source/old/1.1.0/openssl-1.1.0l.tar.gz && \
    tar xzf openssl-1.1.0l.tar.gz && \
    cd openssl-1.1.0l && \
    ./config && make && make install && \
    ln -s /usr/local/ssl/bin/openssl /usr/bin/openssl
RUN ln -s /usr/lib64/libedit.so.0 /usr/lib64/libedit.so.2
RUN yum install -y pbspro-server-*.rpm

# run entrypoint script
#ENTRYPOINT ["bash", "/entrypoint.sh"]
