#!/bin/bash

# Install dependencies
sudo apt-get update && sudo apt-get install -y python3 python3-pip git

# Clone Havoc C2 repository
git clone https://github.com/havoc-io/havoc-c2.git

# Change directory into Havoc C2 repository
cd havoc-c2

# Install Python packages
sudo pip3 install -r requirements.txt

# Set up configuration file
cp config.example.json config.json

# Edit configuration file
nano config.json

# Start Havoc C2 server
nohup python3 havoc.py > /dev/null 2>&1 &

# Exit remote server
exit

EOF
