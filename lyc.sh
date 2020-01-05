#!/bin/bash

if [ ! -n "$1" ]; then
  echo "Usage: $0 C_FILE"
  exit 1
fi

BASE_NAME=${1%.c}
SRC_C_NAME=${BASE_NAME}.c
SRC_LEX_NAME=${BASE_NAME}.lex
SRC_YACC_NAME=${BASE_NAME}.yacc
DST_NAME=a${BASE_NAME}.out

set -ex

lex $SRC_LEX_NAME
yacc $SRC_YACC_NAME
gcc -o $DST_NAME $SRC_C_NAME -ll -ly

set +ex
