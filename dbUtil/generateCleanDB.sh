#!/bin/bash

source .env

echo "
DROP DATABASE IF EXISTS ${DB_NAME};
DROP USER IF EXISTS '${DB_USER}'@'%';
"