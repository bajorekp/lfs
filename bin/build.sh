#!/bin/bash

cd buildchain
for script in *.sh
do
  bash $script > log/$script
done
