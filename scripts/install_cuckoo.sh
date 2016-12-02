#!/bin/bash

apt-get install -y unzip zip git

git clone https://github.com/Svieg/ansible-cuckoo

ls -lart /home/cuckoo

chown -R cuckoo.cuckoo /home/cuckoo/ansible-cuckoo

cd /home/cuckoo/ansible-cuckoo
sudo ansible-playbook -i hosts site.yml --connection=local
