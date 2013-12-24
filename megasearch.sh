#!/bin/bash

# prereq
sudo locale-gen en_US.UTF-8
sudo apt-get install -y git-core
# checkout
git clone https://github.com/pillone/usntssearch
# symlink config
sudo ln -s /vagrant/myconfigs/megasearch_custom_params.ini /home/vagrant/usntssearch/NZBmegasearch/custom_params.ini
# run
python usntssearch/NZBmegasearch/mega2.py daemon
# it's now running on port 5000

#Provisioning succeeded
exit 0
