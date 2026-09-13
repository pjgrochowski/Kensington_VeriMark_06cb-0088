#!/usr/bin/env bash

sudo systemctl stop fprintd.service

sudo udevadm control --reload-rules
sudo udevadm trigger

sudo rm -rfv  /var/lib/fprint/libfprint/verimark-06cb-0088
rm -rfv ~/.local/share/libfprint/verimark-06cb-0088
