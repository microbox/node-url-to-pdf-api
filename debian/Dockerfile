FROM debian:stable-slim
ARG CHROMIUM_VERSION
ARG NODE_VERSION
MAINTAINER Ling <x@e2.to>

RUN apt-get update -y && apt-get install -yq libnss3 libfontconfig fontconfig fonts-dejavu && rm -rf /var/lib/apt/lists/* \
    && groupadd -g 1000 microbox \
    && useradd -u 1000 -g microbox -G audio,video -d /home/microbox -m -s /bin/bash microbox

ENV CHROMIUM_VERSION=$CHROMIUM_VERSION NODE_VERSION=$NODE_VERSION HOME=/home/microbox
WORKDIR /home/microbox
USER microbox

ADD node-linux-x64/bin/node   /bin
ADD chromium.tar.gz           /chromium
COPY url-to-pdf-api           /home/microbox

ENV NODE_ENV=production PORT=80 ALLOW_HTTP=true PUPPETEER_CHROMIUM_PATH=/chromium/headless_shell

EXPOSE 80

ENTRYPOINT ["/bin/node", "src/index.js"]
