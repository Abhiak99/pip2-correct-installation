#!/bin/bash


if [[ "${EUID}" -ne 0 ]]; then
  echo -e "[-] This script must be run as root"
  sleep 2s
  exit 1
fi

echo "[*] Copying python2 as python"
echo "[*] cp /usr/bin/python2 /usr/bin/python"
cp /usr/bin/python2 /usr/bin/python
echo "[*] Downloading get-pip.py for python2.7"
echo "[*] wget https://bootstrap.pypa.io/pip/2.7/get-pip.py" 
wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
echo "[*] python get-pip.py"
python get-pip.py
echo "[*] Downloading get-pip.py for python3"
echo "[*] wget https://bootstrap.pypa.io/get-pip.py -o get-pip3.py"
wget https://bootstrap.pypa.io/get-pip.py -O get-pip3.py
echo "[*] python3 get-pip3.py"
python3 get-pip3.py

echo "[*] Cleaning Trash 0_0"
echo "[*] rm get-pip.py"
echo "[*] rm get-pip3.py"
rm get-pip.py
rm get-pip3.py

echo "[*] [*] Checking pip version"
echo "[*] pip --version"
pip --version

echo "[*] Checking pip2 version"
echo "[*] pip2 --version"
pip2 --version

echo "[*] Checking pip3 version"
echo "[*] pip3 --version"
pip3 --version
