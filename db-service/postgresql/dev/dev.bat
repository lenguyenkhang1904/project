SET PGPASSWORD=anhhungemkhang
SET PGCLIENTENCODING=utf-8
chcp 65001
psql -h 112.78.3.43 -d OMTDev -U postgres -p 5432 -f D:/Thesis/project/db-service/postgresql/sql_script/update_data_location.sql
psql -h 112.78.3.43 -d OMTDev -U postgres -p 5432 -f D:/Thesis/project/db-service/postgresql/sql_script/update_schema.sql