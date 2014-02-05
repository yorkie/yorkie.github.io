#!/usr/bin/env bash

# markdown part
echo "start to generate .html from .md files"

catalog='['
for path in posts/*.md ; do
  name="${path%.*}"
  date=`stat -f '%Sm' $path`
  md2html $path > $name.html
  catalog=$catalog'
  {
    "name": "'$(basename $name)'",
    "path": "'$name.html'",
    "date": "'$date'"
  }'
done
catalog=$catalog']'
echo $catalog > catalog.json

# browserify progress
echo "start to browserify..."
browserify    \
  -r assert   \
  -r markdown \
  lib/home.js > script/home.js

echo "done!"
