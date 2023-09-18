@echo off 
set PGPASSWORD=postgres
set PGDATABASE=OMTDev
set HOST=103.107.182.173
set port=5432
SET PGCLIENTENCODING=utf-8
chcp 65001 
psql -h %HOST% -d %PGDATABASE% -U postgres -p %port% -f D:/Thesis/project/db-service/postgresql/sql_script/update_data_location.sql
psql -h %HOST% -d %PGDATABASE% -U postgres -p %port% -f D:/Thesis/project/db-service/postgresql/sql_script/oauth.sql
psql -h %HOST% -d %PGDATABASE% -U postgres -p %port% -f D:/Thesis/project/db-service/postgresql/sql_script/update_schema.sql
psql -h %HOST% -d %PGDATABASE% -U postgres -p %port% -f D:/Thesis/project/db-service/postgresql/sql_script/import_user.sql
psql -h %HOST% -d %PGDATABASE% -U postgres -p %port% -f D:/Thesis/project/db-service/postgresql/sql_script/role.sql
psql -h %HOST% -d %PGDATABASE% -U postgres -p %port% -f D:/Thesis/project/db-service/postgresql/sql_script/update_data.sql
psql -h %HOST% -d %PGDATABASE% -U postgres -p %port% -f D:/Thesis/project/db-service/postgresql/sql_script/import_data_subject_group.sql