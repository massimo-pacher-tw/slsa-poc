#!/bin/bash

if [ -z "$1" ] ; then
  echo "Image digest input is required!" && exit 1;
fi

if [ -z "$2" ] ; then
  echo "ImageId input is required!" && exit 2;
fi

# extract image digest
re="sha256:(.*)$"
[[ $1 =~ $re ]] && SHA="${BASH_REMATCH[1]}"

echo "$SHA $2"







