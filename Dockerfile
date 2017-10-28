FROM microbox/node-chrome-headless-shell:63.0.3230.2
COPY url-to-pdf-api /home
ENV NODE_ENV=production PORT=80 ALLOW_HTTP=true PUPPETEER_CHROMIUM_PATH=/chrome/headless_shell
EXPOSE 80
CMD ["/bin/node", "src/index.js"]