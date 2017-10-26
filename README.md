URL-to-PDF Microservice
======================

[![Build Status](https://travis-ci.org/microbox/node-url-to-pdf-api.svg?branch=master)](https://travis-ci.org/microbox/node-url-to-pdf-api)

Web page PDF rendering done right. Self-hosted service for rendering receipts, invoices, or any content.

Microbox repackage url-to-pdf-api from the [latest source](https://github.com/alvarcarto/url-to-pdf-api) and make it into a solid and easy-to-use docker image.

#### Launch URL-to-PDF service 

```bash
# URL-to-PDF microservice will listen at container port 80
docker run -d --name url2pdf  microbox/node-url-to-pdf-api
```

#### Use URL-to-PDF service 

```bash
# find ip of docker container
export URL2PDF=`docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' url2pdf`
# call api and download rendered pdf file
wget http://$URL2PDF/api/render?url=http://google.com google.pdf -O google.pdf
```

#### Upgrade to a newer version

```
docker stop url2pdf
docker rm url2pdf
docker pull microbox/node-url-to-pdf-api
docker run -d --name url2pdf  microbox/node-url-to-pdf-api
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

PS: chromium and it's dependencies took about 450MB!!!
