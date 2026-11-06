#!/usr/bin/env bash
curdir=$(pwd)

./build.sh


cd ../../pyk/
source .venv/bin/activate

cd $curdir

K_ROOT="~/.oss/k"

rm -rf build
mkdir build

# Run PyK's KLean generator.
klean \
    "./tiny-kompiled/" \
    tiny \
    --output "./build"

echo "Generated Lean project"
