#!/bin/sh

. ./config.env

if [ -z "$DEBIAN_VERSION" ]; then
  echo "DEBIAN_VERSION not configured"
  exit 1
fi

docker pull debian:${DEBIAN_VERSION}
