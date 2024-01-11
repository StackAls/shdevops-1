#!/bin/bash
source /opt/shdevops-1/04-docker/app/.env
now=$(date +"%s_%Y-%m-%d")
# docker exec -i app-db-1 mysqldump -u root -p"${MYSQL_ROOT_PASSWORD}" ${DB_NAME} > /opt/backup/${now}-dumps.sql

docker run --rm --name backup-db --entrypoint "" \
    -v /opt/backup:/backup \
    --network app_backend \
    schnitzler/mysqldump \
    mysqldump --opt -h db -u root -p"${MYSQL_ROOT_PASSWORD}" "--result-file=/backup/${now}-dumps.sql" ${DB_NAME}
    