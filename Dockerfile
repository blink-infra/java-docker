FROM airdock/oracle-jdk

# Download Docker binary
RUN set -x &&\
    VER="latest" &&\
    curl -k -L -o /tmp/docker-$VER.tgz https://get.docker.com/builds/Linux/x86_64/docker-$VER.tgz &&\
    tar -xz -C /tmp -f /tmp/docker-$VER.tgz &&\
    mv /tmp/docker/* /usr/bin
