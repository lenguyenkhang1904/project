@echo off 
set PGPASSWORD=postgres
set PGDATABASE=OMTDev
set HOST=localhost
set port=5432
psql -h %HOST% -d %PGDATABASE%  -U postgres -p %port% -q -f ./sql_script/schema.sql	