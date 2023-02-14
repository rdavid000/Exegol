#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
apt update -y
apt upgrade -y
python3 -m pip install exegol
printf "full\n\n" | exegol install
printf "\n\n" | exegol exec --disable-X11 -p 4446:22 -p 4447:80 MyExegol "update-rc.d ssh defaults && service ssh start && useradd -s /bin/bash -m r2d2 && echo 'r2d2:1234' | chpasswd && usermod -aG sudo r2d2 && newgrp sudo"