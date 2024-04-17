#!/bin/bash

# detect permission
if [ "$EUID" -ne 0 ]
    echo "this script must be executed with root permission"
    exit 1
fi

# detect if script is run on Ubuntu
if ! grep -q 'Ubuntu' /etc/os-release
then
  echo "This script currently only support ubuntu"
  exit 1
fi

# excute all scripts in the ./src dir
for script in ./src/*.sh
do
  if [ -f "$script" ]
  then
  echo $script
  # source "$script"
  fi
done