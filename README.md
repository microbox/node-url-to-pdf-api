URL-to-PDF Microservice
======================

[![Build Status](https://travis-ci.org/microbox/node-url-to-pdf-api.svg?branch=master)](https://travis-ci.org/microbox/node-url-to-pdf-api)

Web page PDF rendering done right. Self-hosted service for rendering receipts, invoices, or any content.

Microbox repackage Gogs from the latest source and make it into a solid and easy-to-use docker image.

#### Launch URL-to-PDF service 

```
docker run -d microbox/node-url-to-pdf-api --name url2pdf
```

#### Upgrade to a newer version

```
docker stop url2pdf
docker rm url2pdf
docker pull microbox/node-url-to-pdf-api
docker run -d microbox/node-url-to-pdf-api --name url2pdf
```

### Name

- microbox/node-url-to-pdf-api

### Version

- 1.0.0

### Components

- nodejs 8.8.1
- puppeteer 0.11.0
- chromium 63.0.3205.0 (r499413)

### Image Size

-  ~ 548MB MB

PS: We will upgrade to alpine build which may decrease the size by 100M once 