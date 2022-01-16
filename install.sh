#!/bin/bash


if [[ "${EUID}" -ne 0 ]]; then
  echo -e "[-] This script must be run as root"
  sleep 2s
  exit 1
fi

cp /usr/bin/python2 /usr/bin/python 
wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
rm get-pip.py
python get-pip.py
wget https://bootstrap.pypa.io/get-pip.py -o get-pip3.py
python3 get-pip3.py
rm get-pip3.py

