@echo off 
set PGPASSWORD=postgres
set PGDATABASE=OMTDev
set HOST=103.107.182.173
set port=5432
psql -h %HOST% -d %PGDATABASE%  -U postgres -p %port% -q -f ./sql_script/schema.sql	