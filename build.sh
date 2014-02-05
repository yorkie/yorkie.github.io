#!/usr/bin/env bash

# markdown part
echo "start to generate .html from .md files"

catalog='['
for path in posts/*.md ; do
  name="${path%.*}"
  date=`stat -f '%Sm' $path`
  md2html $path > $name.html

  content=`cat $name.html`
  catalog=$catalog'
  {
    "title": "'$(basename $name)'",
    "path": "'$name.html'",
    "date": "'$date'",
    "content": "'$content'"
  }'
done
catalog=$catalog']'
echo $catalog > catalog.json

# generate homepage
./genhomepage

# browserify progress
echo "start to browserify..."
browserify    \
  -r assert   \
  -r markdown \
  lib/home.js > script/home.js

echo "done!"
