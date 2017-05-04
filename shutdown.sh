#!/bin/bash

# simple replacement for "shutdown -h now" command

if [ "$1 $2" == "-h now" ]; then
  poweroff
  exit 0
fi

echo "USAGE: $0 -h now"
exit 1

