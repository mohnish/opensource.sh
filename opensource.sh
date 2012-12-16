#!/usr/bin/env bash

log() {
  echo -e "$@" >&2
}

error_exit() {
  echo "Error: $1"
  exit 1
}

require() {
  which $1 > /dev/null || error_exit "$0 requires $1"
}

help() {
  log "Usage:

  SYNOPSIS

    OpenSource is a tiny shell script that allows you to add the type of license
    you wish to add to your project.

  DESCRIPTION

    -l, --license
        Mention the type of license you want to add to your project.
  "
}

if test $1 = "-h"; then
  help
  exit 0
fi

log "(The MIT License)

Copyright (c) `date +%Y` Mohnish Thallavajhula <i@mohni.sh>

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE."