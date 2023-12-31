#!/bin/bash

# for ubuntu
# install your dns-provider certbot plugin
# https://certbot-dns-cloudflare.readthedocs.io/en/stable/
sudo apt update && \
sudo apt install -y certbot python3-certbot-dns-cloudflare && \
sudo certbot certonly --dns-cloudflare --dns-cloudflare-credentials /root/cloudflare.ini -d ${BASE_DOMAIN},*.${BASE_DOMAIN}
