#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
apt update -y
apt upgrade -y
python3 -m pip install exegol
printf "\n\n\n" | exegol install
printf "\n" | exegol start --log --disable-X11 MyExegol nightly
exegol start --log --disable-X11 -p 4446:22 -p 4447:80 MyExegol nightly&