#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
apt update -y
apt upgrade -y
python3 -m pip install exegol
exegol install
exit 0