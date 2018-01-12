#!/bin/bash

cd $(dirname "$0")/../..

PRETTYDOC="$PWD/../prettydoc/prettydoc"

if [[ $# -eq 0 ]]; then
    echo "usage: $(basename $0) {asciidoc|html}" 1>&2
    exit 1
fi

"$PRETTYDOC" -f $1 -t -H=--outer-names-only -o doc inc/winfsp/winfsp.h inc/winfsp/launch.h
