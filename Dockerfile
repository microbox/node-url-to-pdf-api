FROM microbox/node-chrome-headless:6.11.4
COPY url-to-pdf-api /root
WORKDIR /root
CMD ['node', '/root/src/index.js']