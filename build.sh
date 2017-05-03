#!/bin/bash

if [ $( whoami ) != 'root' ]; then
	echo "Please run this script as root"
	exit 1
fi

ansible-playbook --version

ansible-playbook -i boxes.ini playbook.yml

ls -al work/
