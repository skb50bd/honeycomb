#!/bin/bash

DOMAIN="${BASE_DOMAIN}"
TARGET_DIR="./certs/${BASE_DOMAIN}/"

mkdir -p "${TARGET_DIR}"

cp /etc/letsencrypt/live/"${DOMAIN}"/fullchain.pem "${TARGET_DIR}/"
cp /etc/letsencrypt/live/"${DOMAIN}"/privkey.pem "${TARGET_DIR}/"
chmod 644 "${TARGET_DIR}"/*.pem
