#!/bin/bash

set -e

cd buildchain
for script in *.sh
do
  bash $script > log/$script
done

open https://www.linuxfromscratch.org/lfs/view/stable-systemd/chapter11/theend.html
