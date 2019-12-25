#!/usr/bin/env bash

set -euo pipefail

TARGET=wasm32-unknown-unknown
BINARY=target/$TARGET/release/bare_metal_wasm.wasm

cargo build --target $TARGET --release
wasm-strip $BINARY
mkdir -p www
wasm-opt -o www/bare_metal_wasm.wasm -Oz $BINARY
ls -lh www/bare_metal_wasm.wasm

WWW=www

html-minifier --collapse-whitespace --remove-comments --remove-optional-tags --remove-redundant-attributes --remove-script-type-attributes --remove-tag-whitespace --use-short-doctype src/index.html -o www/index.html
uglifyjs --compress --mangle -o www/main.js -- src/main.js