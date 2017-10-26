FROM microbox/node-chrome-headless:8.8.1
COPY url-to-pdf-api /root
ENV NODE_ENV=production PORT=80
WORKDIR /root
EXPOSE 80
CMD ['/usr/lib/node-v8.8.1-linux-x64/bin/node', 'src/index.js']