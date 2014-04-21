#!/bin/sh
set -e
cd `dirname $0`

NAME=haproxy-ss-20140418

# Dependencies
apt-get update -qy
DEBIAN_FRONTEND=noninteractive apt-get install -qy curl make libssl-dev

curl http://haproxy.1wt.eu/download/1.5/src/snapshot/${NAME}.tar.gz | tar xzvf - -C /usr/src

# Build & install
cd /usr/src/${NAME}
make TARGET=linux2628
make install
cd /

# Cleanup
# TODO: Remove build dpendencies
rm -rf /usr/src/${NAME}
