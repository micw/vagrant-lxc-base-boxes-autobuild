#!/bin/bash

if [ $( whoami ) != 'root' ]; then
	echo "Please run this script as root"
	exit 1
fi

ansible-playbook --version

ls -al  /usr/share/debootstrap/scripts/

ansible-playbook -i boxes.ini playbook.yml
