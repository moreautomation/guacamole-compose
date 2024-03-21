#!/bin/bash

/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $MSSQL_SA_PASSWORD -d master -Q 'CREATE DATABASE guacamole;'
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $MSSQL_SA_PASSWORD -d guacamole -i /opt/initdb/001-create-schema.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $MSSQL_SA_PASSWORD -d guacamole -i /opt/initdb/002-create-admin-user.sql