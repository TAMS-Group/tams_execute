#!/bin/bash

# this script optionally sources a separate workspace and executes something in that context

if [[ $# -lt 3 ]]; then
  echo "usage: $0 <pkg> <executable-or-launch-file> [<workspace>]" >&2
  exit 1
fi

pkg="$1"
exe="$2"
ws="$3"

if [[ -n "$ws" ]]; then
  . $ws/setup.bash
fi

if [[ "$2" = *.launch ]]; then
  roslaunch "$1" "$2"
else
  rosrun "$1" "$2"
fi
