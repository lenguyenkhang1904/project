WITH role_values AS ( 
SELECT 
'admin-01b2-11ee-be56-0242ac120002' AS id,
'ADMINISTRATOR' AS description,
'administrator' AS name
)
DELETE FROM role WHERE id = (SELECT CAST(id AS TEXT) FROM role_values);
WITH role_values AS ( 
SELECT 
'admin-01b2-11ee-be56-0242ac120002' AS id,
'ADMINISTRATOR' AS description,
'administrator' AS name
)
INSERT INTO role(id, description, name) 
SELECT id, description, name
FROM role_values; 