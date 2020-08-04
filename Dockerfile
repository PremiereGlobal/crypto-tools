FROM ubuntu:focal

RUN apt-get update && \
    apt-get install -y curl gnupg

RUN curl --remote-name https://prerelease.keybase.io/keybase_amd64.deb && apt install -y ./keybase_amd64.deb


