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
'administrator' AS description,
'ADMINISTRATOR' AS name
)
INSERT INTO role(id, description, name) 
SELECT id, description, name
FROM role_values;


WITH role_values AS ( 
SELECT 
'tutor-01b2-11ee-be56-0242ac120002' AS id,
'tutor' AS description,
'TUTOR' AS name
)
DELETE FROM role WHERE id = (SELECT CAST(id AS TEXT) FROM role_values);
WITH role_values AS ( 
SELECT 
'tutor-01b2-11ee-be56-0242ac120002' AS id,
'tutor' AS description,
'TUTOR' AS name
)
INSERT INTO role(id, description, name) 
SELECT id, description, name
FROM role_values; 

WITH role_values AS ( 
SELECT 
'register-and-learner-01b2-11ee-be56-0242ac120002' AS id,
'register-and-learner' AS description,
'REGISTERANDLEARNER' AS name
)
DELETE FROM role WHERE id = (SELECT CAST(id AS TEXT) FROM role_values);
WITH role_values AS ( 
SELECT 
'register-and-learner-01b2-11ee-be56-0242ac120002' AS id,
'register-and-learner' AS description,
'REGISTERANDLEARNER' AS name
)
INSERT INTO role(id, description, name) 
SELECT id, description, name
FROM role_values;

WITH role_values AS ( 
SELECT 
'staff-01b2-11ee-be56-0242ac120002' AS id,
'staff' AS description,
'STAFF' AS name
)
DELETE FROM role WHERE id = (SELECT CAST(id AS TEXT) FROM role_values);
WITH role_values AS ( 
SELECT 
'staff-01b2-11ee-be56-0242ac120002' AS id,
'staff' AS description,
'STAFF' AS name
)
INSERT INTO role(id, description, name) 
SELECT id, description, name
FROM role_values;