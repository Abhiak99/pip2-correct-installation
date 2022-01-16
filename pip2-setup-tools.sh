#!/bin/bash

if [[ "${EUID}" -ne 0 ]]; then
  echo -e "[-] This script must be run as root"
  sleep 2s
  exit 1
fi
pip2 install --upgrade setuptools
pip2 install ez_setup
easy_install -U setuptools 
