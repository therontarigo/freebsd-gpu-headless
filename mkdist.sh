#!/bin/sh
DISTVERSION=$1
if [ -z "$DISTVERSION" ]; then
echo "usage: mkdist.sh [version]"
exit 1
fi

tar -J -c -s /^nvidia-headless-utils/nvidia-headless-utils-${DISTVERSION}/ -f ./dist/nvidia-headless-utils-${DISTVERSION}.tar.xz nvidia-headless-utils
