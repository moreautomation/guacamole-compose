#!/bin/bash

while ! docker logs guacamole-compose-mssql-1 | grep "SQL Server is now ready for client connections.";
do
sleep 5
echo "Waiting for SQL Server to Start..."
done

docker exec -it guacamole-compose-mssql-1 bash -c "/opt/initdb/initdb.sh"