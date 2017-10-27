FROM microbox/node-chrome-headless-shell:latest
COPY url-to-pdf-api /root
ENV NODE_ENV=production PORT=80 ALLOW_HTTP=true PUPPETEER_CHROMIUM_PATH=/chrome/headless_shell
WORKDIR /root
EXPOSE 80
CMD ["/bin/node", "src/index.js"]