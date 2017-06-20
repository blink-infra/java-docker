FROM airdock/oracle-jdk

# Install Git
RUN apt-get update && \
    apt-get install -y \
    --no-install-recommends \
    git \
    ca-certificates \
    ca-certificates-java \
    && rm -rf /var/lib/apt/lists/*

# Download Docker binary
RUN set -x &&\
    VER="latest" &&\
    curl -L -o /tmp/docker-$VER.tgz https://get.docker.com/builds/Linux/x86_64/docker-$VER.tgz &&\
    tar -xz -C /tmp -f /tmp/docker-$VER.tgz &&\
    mv /tmp/docker/* /usr/bin
