#!/usr/bin/env bash

YEAR=`date +%Y`
source ./config/*
# Conditionalize this later to load only the license we need
source ./licenses/*


# Displays the given input
log() {
  echo -e "$@" >&2
}

# Create license file
create_license() {
  echo ""
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
        Ex: opensource.sh -l mit
  "
}

# Flags
if test "$1" = "-h" -o "$1" = "--help"; then
  help
  exit 0
elif test "$#" -eq 2 -a "$1" = "-l" -a "$2" = "mit"; then
  log "$MIT"
  exit 0
else
  echo "Sorry, I have no idea what you are talking about!"
  exit 0
fi