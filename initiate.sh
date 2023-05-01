#!/bin/bash
# Clean, and initial dependenccies when booting fresh BashBunny 
# -Eosyne 5/1/23

apt clean
apt update

apt install -y build-essential libgdbm-dev libnss3-dev libffi-dev gcc

if [ $? -eq 0 ]; then
  echo "Packages installed successfully."
else
  echo "Something went wrong. Please check the output for errors."
fi
