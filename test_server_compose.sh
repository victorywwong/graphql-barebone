#! /bin/bash
yarn build:server
docker build -t username/barebone:latest .
docker push username/barebone:latest
docker compose up