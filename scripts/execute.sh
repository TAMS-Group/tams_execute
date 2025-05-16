#!/bin/bash
# v4hn@20230324

# this script optionally sources a separate workspace
# and executes a roslaunch file or executable in that context

if [[ $# -lt 2 ]]; then
  echo "usage: $0 <pkg> <executable-or-launch-file> [<workspace>]" >&2
  exit 1
fi

pkg="$1"
exe="$2"
ws="$3"

if [[ -n "$ws" ]]; then
  # use eval to support '~' and environment variables
  eval source $ws/setup.bash
fi

if [[ "$2" = *.launch || "$2" = *.launch.xml ]]; then
  roslaunch "$1" "$2"
else
  rosrun "$1" "$2"
fi
