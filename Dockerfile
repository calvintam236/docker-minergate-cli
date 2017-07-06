FROM ubuntu:16.04

MAINTAINER calvintam236 <calvintam236@users.noreply.github.com>
LABEL description="MinerGate-CLI in Docker. Supports CPU & GPU mining."

RUN apt-get update \
    && apt-get -y --no-install-recommends install ca-certificates wget \
    && rm -r /var/lib/apt/lists/*

RUN wget --content-disposition https://minergate.com/download/deb-cli -O minergate-cli.deb \
    && dpkg -i minergate-cli.deb \
    && rm minergate-cli.deb

ENTRYPOINT ["minergate-cli"]
