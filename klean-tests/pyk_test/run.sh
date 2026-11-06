#!/usr/bin/env bash


./build.sh

K_ROOT="~/.oss/k"

rm -rf build
mkdir build

# Run PyK's KLean generator.
klean \
    "./tiny-kompiled/" \
    tiny \
    --output "./build"

echo "Generated Lean project"
