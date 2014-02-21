#!/usr/bin/env bash
# markdown part
echo "start to generate .html from .md files"

flag=1
catalog="[\n\t"
for path in posts/*.md ; do
  name="${path%.*}"
  date=`stat -f '%Sm' $path`
  gfm2html $path dist/$(basename $name).html

  if [ $flag -eq 1 ]; then
    flag=0
  else
    catalog=$catalog",\n\t"
  fi

  catalog=$catalog"{\n
    \t\t\"title\": \"$(basename $name)\",\n
    \t\t\"path\": \"dist/$(basename $name).html\",\n
    \t\t\"date\": \"$date\"\n
  \t}"
done
catalog=$catalog"\n]"
echo $catalog > catalog.json

# generate homepage
./genhomepage

# browserify progress
#echo "start to browserify..."
#browserify    \
#  -r assert   \
#  lib/home.js > script/home.js

echo "done!"
