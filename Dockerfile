FROM debian:jessie-slim
RUN apt-get update && apt-get install -yq libx11-xcb1 libxcomposite1 libxcursor1 libxdamage1 libgtk-3-0 libnss3 libasound2 libgconf-2-4 libxss1 && rm -r /var/lib/apt/lists/*
ADD node-v6.11.4-linux-x64.tar.gz /usr/lib
ENV PATH="/usr/lib/node-v6.11.4-linux-x64/bin:${PATH}"