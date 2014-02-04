#!/usr/bin/env bash

install() {
  [ -f "`which $1`" ] && echo "$1 installed" || sudo npm install -g $1
}

install "md2html"
install "browserify"