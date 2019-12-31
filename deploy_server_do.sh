#! /bin/bash
yarn build:server
docker build -t username/barebone:latest .
docker push username/barebone:latest
ssh root@ip "docker pull username/barebone:latest && docker tag username/barebone:latest dokku/barebone:latest && dokku tags:deploy barebone latest"