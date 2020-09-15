#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
PLATFORM=$(uname)
if [ "$PLATFORM" == "Linux" ]; then
  TAG="_linux";
else
  TAG="_osx";
fi
mkdir -p $DIR/bin
nim c --threads:on -p:$DIR/lib -o:$DIR/bin/porfast$TAG $DIR/src/porfast.nim

