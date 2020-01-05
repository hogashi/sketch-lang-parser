#!/bin/bash

if [ ! -n "$1" ]; then
  echo "Usage: $0 LEX_FILE"
  exit 1
fi

BASE_NAME=${1%.lex}
SRC_NAME=${BASE_NAME}.lex
DST_NAME=a${BASE_NAME}.out

set -ex

lex $SRC_NAME
gcc -o $DST_NAME lex.yy.c -lfl

set +ex

