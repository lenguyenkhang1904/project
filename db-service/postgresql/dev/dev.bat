@echo off 
set PGPASSWORD=postgres
set PGDATABASE=OMTDev
set HOST=localhost
set port=5432
SET PGCLIENTENCODING=utf-8
chcp 65001
psql -h %HOST% -d %PGDATABASE% -U postgres -p %port% -f ../postgresql/sql_script/update_data_location.sql