FROM debian:buster-slim

RUN apt-get update && \
    apt-get install -y sudo bash curl gnupg

#RUN curl --remote-name https://prerelease.keybase.io/keybase_amd64.deb && apt install -y ./keybase_amd64.deb && rm ./keybase_amd64.deb

RUN useradd -ms /bin/bash cryptouser

RUN echo "cryptouser ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/user && \
    chmod 0440 /etc/sudoers.d/user

USER cryptouser
WORKDIR /home/cryptouser
