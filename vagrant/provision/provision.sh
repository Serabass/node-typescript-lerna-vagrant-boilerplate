#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y build-essential curl git libssl-dev man mongodb-clients

mkdir -p /home/vagrant/.config

chmod -R 0777 /home/vagrant/.config

echo ""
echo "Everything done, have a nice day :-)!"
