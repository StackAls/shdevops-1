#!/bin/bash

cd /opt

git clone https://github.com/StackAls/shdevops-1.git
cd shdevops-1/04-docker/app/
git clone https://github.com/StackAls/nl-shvirtd-example-python.git

# add ENV
echo "DB_HOST=127.0.0.1" > .env
echo "DB_USER=app" >> .env 
## ADD PASS
echo "DB_PASSWORD=" >> .env
echo "MYSQL_ROOT_PASSWORD=" >> .env
echo "DB_NAME=pyappdb" >> .env
echo "DB_TABLE=requests" >> .env

docker compose build
docker compose up -d
