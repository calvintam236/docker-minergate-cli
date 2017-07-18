FROM ubuntu:16.04

MAINTAINER calvintam236 <calvintam236@users.noreply.github.com>
LABEL description="MinerGate-CLI in Docker. Supports CPU & GPU mining."

WORKDIR /tmp

RUN apt-get update \
    && apt-get -y --no-install-recommends install ca-certificates curl wget \
    && curl -L -O https://minergate.com/download/deb-cli \
    && dpkg -i deb-cli \
    && rm deb-cli \
    && apt-get -y remove ca-certificates curl \
    && apt-get -y autoremove \
    && apt-get clean autoclean \
    && rm -r /var/lib/{apt,dpkg,cache,log}/

ENTRYPOINT ["minergate-cli"]
