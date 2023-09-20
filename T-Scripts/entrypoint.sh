#!/bin/bash
sudo apt update -y
sudo apt install -y docker.io
sudo systemctl start docker
sudo usermod -aG docker ubuntu
sudo systemctl restart docker
sudo apt install maven -y
git clone https://github.com/jaiswaladi246/jpetstore-6.git
cd Devops-CICD
mvn package
sudo docker build -t abc .
sudo docker run -d -p 8080:8080 abc
