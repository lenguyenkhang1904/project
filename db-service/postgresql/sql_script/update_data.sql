WITH user_role_values AS ( 
SELECT 
'admin-01b2-11ee-be56-0242ac120002' AS role_id,
'b6287d32-01b2-11ee-be56-0242ac120002' AS user_id
)
DELETE FROM user_role WHERE id = (SELECT CAST(user_id AS TEXT) FROM user_role_values);
WITH user_role_values AS ( 
SELECT 
'admin-01b2-11ee-be56-0242ac120002' AS role_id,
'b6287d32-01b2-11ee-be56-0242ac120002' AS user_id
)
INSERT INTO user_role(id, role_id, user_id) 
SELECT  uuid_in(md5(random()::text || random()::text)::cstring), role_id, user_id
FROM user_role_values; 