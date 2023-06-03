WITH user_values AS ( 
SELECT 
'b6287d32-01b2-11ee-be56-0242ac120002' AS id,
'2023-06-03 13:47:31.83' AS created_at,
'system' AS created_by,
'khang@admin' AS email,
'$2a$12$bKKPlaM5B2I0/jLHlcu/3OTXk6lfAAGGB9sgHGZZAnnTUUDnvX51e' AS password,
'0932622194' AS phone,
'admin' AS username)
DELETE FROM user_application WHERE id = (SELECT CAST(id AS TEXT) FROM user_values);
WITH user_values AS ( 
SELECT 
'b6287d32-01b2-11ee-be56-0242ac120002' AS id,
'2023-06-03 13:47:31.83' AS created_at,
'system' AS created_by,
'khang@admin' AS email,
'$2a$12$bKKPlaM5B2I0/jLHlcu/3OTXk6lfAAGGB9sgHGZZAnnTUUDnvX51e' AS password,
'0932622194' AS phone,
'admin' AS username)
INSERT INTO user_application(id, created_at, created_by, email, password, phone, username) 
SELECT id, to_timestamp(created_at,'YYYY-MM-DD hh24:mi:ss')::timestamp without time zone, created_by, email, password, phone, username
FROM user_values; 