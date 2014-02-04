#!/usr/bin/env bash

browserify    \
  -r assert   \
  -r markdown \
  lib/home.js > script/home.js