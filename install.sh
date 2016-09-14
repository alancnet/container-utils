#!/bin/bash
if which apk; then
  apk add --update python py-pip git
fi
if which apt-get; then
  apt-get update;
  apt-get install python py-pip git
fi
git clone https://github.com/alancnet/container-utils /container-utils
mv /container-utils/bin/* /usr/local/bin/
rm -rf /container-utils
