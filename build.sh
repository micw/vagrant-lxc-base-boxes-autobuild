#!/bin/bash

before_install:
  - sudo apt-get update -qq

install:
  - sudo apt-get install ansible

ansible-playbook --version
