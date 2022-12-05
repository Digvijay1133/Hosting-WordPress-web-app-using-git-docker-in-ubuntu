#!/bin/bash
sudo apt-get update
sudo apt install git -y
sudo apt install docker.io -y
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo systemctl enable docker
sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose version
sudo git clone https://github.com/Digvijay1133/wordpress-hosting.yaml.git
sudo chmod 666 /var/run/docker.sock
cd wordpress-hosting.yaml
docker-compose up -d
