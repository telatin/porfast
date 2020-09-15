#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
PLATFORM=$(uname)
if [ "$PLATFORM" == "Linux" ]; then
  TAG="_linux";
else
  TAG="_osx";
fi
mkdir -p $DIR/bin

# Files check
if [ ! -e "$DIR/reads/R1.fq.gz" ]; then
  echo "ERROR: Input reads not found, check the repository. [$DIR/reads/R1.fq.gz]"
fi
if [ ! -e "$DIR/reads/R2.fq.gz" ]; then
  echo "ERROR: Input reads not found, check the repository. [$DIR/reads/R2.fq.gz]"
fi
set -euo pipefail

# Compile
nim c --threads:on -p:$DIR/lib -o:$DIR/bin/porfast$TAG $DIR/src/porfast.nim

if [ $($DIR/bin/porfast$TAG -1 $DIR/reads/R1.fq.gz -2 $DIR/reads/R2.fq.gz -m 10 | head -n 20 | grep -c '>') == "10" ]; then
  echo "Porfast test: OK";
else
  echo "Porfast test: failed"
fi

