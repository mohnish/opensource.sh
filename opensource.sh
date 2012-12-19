#!/usr/bin/env bash

YEAR=`date +%Y`
source ./config/*

# Displays the given input
log() {
  echo -e "$@" >&2
}

# Create license file
create_license() {
  local license=$1
  local path=$2
  if test $# -eq 2; then
    echo "$license" > $path/LICENSE
  elif test $# -eq 1; then
    echo "$license" > LICENSE
  else
    echo "Please refer opensource -h for the right usage."
  fi
}


# Called in case of error
error_exit() {
  echo "Error: $1"
  exit 1
}

require() {
  which $1 > /dev/null || error_exit "$0 requires $1"
}

help() {
  log "Help:

  Usage

    opensource.sh [options] [/path/to/project/]

  DESCRIPTION

    OpenSource is a tiny shell script that allows you to add the type of license
    you wish to add to your project.

  OPTIONS

    -h, --help
        Show this help information.

    -l, --license
        Mention the type of license you want to add to your project.
        usage: opensource.sh -l mit
  "
}

# Flags
if test "$1" = "-h" -o "$1" = "--help"; then
  help
  exit 0
elif test "$#" -eq 2 -a "$1" = "-l" -a "$2" = "mit"; then
  source ./licenses/mit.sh
  log "$MIT"
  create_license "$MIT"
  exit 0
elif test "$#" -eq 3 -a "$1" = "-l" -a "$2" = "mit"; then
  source ./licenses/mit.sh
  log "$MIT"
  create_license "$MIT" "$3"
  exit 0
else
  echo "Please refer help for usage instructions. opensource.sh -h or opensource.sh --help"
  exit 0
fi