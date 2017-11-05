URL-to-PDF Microservice
======================

[![Build Status](https://travis-ci.org/microbox/node-url-to-pdf-api.svg?branch=master)](https://travis-ci.org/microbox/node-url-to-pdf-api)

Web page PDF rendering done right. Self-hosted service for rendering receipts, invoices, or any content.

Microbox repackage alvarcarto's awesome url-to-pdf-api from the [latest source](https://github.com/alvarcarto/url-to-pdf-api) and make it into a solid and easy-to-use docker image.

### Image Size
- 266MB (smaller than alpine chromium image size 311MB)

#### Launch URL-to-PDF service 

```bash
# URL-to-PDF microservice will listen at container port 80
docker run -d --name url2pdf -p 80:80 microbox/node-url-to-pdf-api
```

#### Use URL-to-PDF service 

```bash
# find ip of docker container
export URL2PDF=`docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' url2pdf`
# call api and download rendered pdf file
wget http://$URL2PDF/api/render?url=https://github.com -O github.pdf
```

#### Install extra fonts

When text is rendered by a computer, sometimes characters are displayed as 口 a.k.a “tofu”. They are little boxes to indicate your device doesn’t have a font to display the text.

The answer to “tofu” is following:

```bash
docker exec -it url2pdf /bin/bash
apt-get update
apt-get install -yq fonts-symbola      # 🙄🙄🙄
apt-get install -yq fonts-noto-cjk     # 囍, 언문, にほんご
apt-get install -yq fonts-ocr-b        # PASSPORT FONT
```

“no more tofu” !!!

#### Upgrade to a newer version

```
docker stop url2pdf
docker rm url2pdf
docker pull microbox/node-url-to-pdf-api
docker run -d --name url2pdf -p 80:80 microbox/node-url-to-pdf-api
```

### Name

- microbox/node-url-to-pdf-api

### Version

- 1.0.0

### Components

- url-to-pdf-api 1.0.0
- nodejs 8.9.0
- puppeteer 0.11.0
- chromium headless shell 63.0.3230.2

### TODO
- [x] Reduce image size from ~1.2GB to ~600MB (actual size 548MB)
- [x] Reduce image size from ~548MB to ~350MB (actual size 286MB)
