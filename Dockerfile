FROM microbox/node-chrome-headless:8.8.1
COPY url-to-pdf-api /root
ENV NODE_ENV=production
WORKDIR /root
CMD ['node', '/root/src/index.js']