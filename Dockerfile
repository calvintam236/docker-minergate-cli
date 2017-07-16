FROM ubuntu:16.04

MAINTAINER calvintam236 <calvintam236@users.noreply.github.com>
LABEL description="MinerGate-CLI in Docker. Supports CPU & GPU mining."

RUN apt-get update \
    && apt-get -y --no-install-recommends install ca-certificates curl wget \
    && rm -r /var/lib/apt/lists/*

WORKDIR /tmp
RUN curl -L -O https://minergate.com/download/deb-cli \
    && dpkg -i deb-cli \
    && rm deb-cli

ENTRYPOINT ["minergate-cli"]
