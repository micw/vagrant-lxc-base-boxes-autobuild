#!/bin/bash

if [ $( whoami ) != 'root' ]; then
	echo "Please run this script as root"
	exit 1
fi

ansible-playbook --version

if [ -z $1 ]; then
  ansible-playbook -i boxes.ini playbook.yml
else
  # limit to one host type
  ansible-playbook -i boxes.ini playbook.yml -l $1
fi
