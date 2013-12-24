#!/bin/bash

# prereq
sudo locale-gen en_US.UTF-8
sudo apt-get install -y git-core
# checkout
git clone https://github.com/pillone/usntssearch
# run
python usntssearch/NZBmegasearch/mega2.py daemon
# it's now running on port 5000

#Provisioning succeeded
exit 0
