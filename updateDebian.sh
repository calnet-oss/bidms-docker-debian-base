#!/bin/sh

. ./config.env

if [ -z "$BUILDTIME_CMD" ]; then
  BUILDTIME_CMD=docker
fi

if [ -z "$DEBIAN_VERSION" ]; then
  echo "DEBIAN_VERSION not configured"
  exit 1
fi

$BUILDTIME_CMD pull debian:${DEBIAN_VERSION}
