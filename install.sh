#!/bin/bash
wget https://raw.githubusercontent.com/NodeRunTeam/NodeGuide/main/logo.sh
chmod +x logo.sh && ./logo.sh
sudo apt-get update && sudo apt-get upgrade -y
sleep 3
sudo apt-get install curl
sleep 3
wget https://raw.githubusercontent.com/NodeRunTeam/NodeGuide/main/docker.sh
chmod +x docker.sh && ./docker.sh
sleep 3
sudo apt-get update && sudo apt install jq && sudo apt install apt-transport-https ca-certificates curl software-properties-common -y && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" && sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin && sudo apt-get install docker-compose-plugin
sleep 3
git clone https://github.com/base-org/node.git
screen -S base
cd node
