#!/usr/bin/env bash

# markdown part
echo "start to generate .html from .md files"
for path in posts/*.md ; do
  name="${path%.*}"
  md2html $path > $name.html
done

# browserify progress
echo "start to browserify..."
browserify    \
  -r assert   \
  -r markdown \
  lib/home.js > script/home.js

echo "done!"
