#!/usr/bin/env bash
mkdir -p data/var/lib/mysql
mkdir -p data/www
chmod -R 777 data
docker-compose up -d
