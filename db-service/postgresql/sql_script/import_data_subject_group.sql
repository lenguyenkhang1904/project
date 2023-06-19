
WITH subject_group_values AS ( 
SELECT 
'C1cA' AS id,
' C1cA' AS short_name,
'Tiểu học có dạy tiếng Anh' AS name)
DELETE FROM subject_group WHERE id = (SELECT CAST(id AS TEXT) FROM subject_group_values);
WITH subject_group_values AS ( 
SELECT 
'C1cA' AS id,
' C1cA' AS short_name,
'Tiểu học có dạy tiếng Anh' AS name)
INSERT INTO subject_group (id, short_name, name) 
SELECT id, short_name, name 
FROM subject_group_values; 

WITH subject_group_values AS ( 
SELECT 
'C1TĐN' AS id,
' C1TĐN' AS short_name,
'Luyện vào cấp 2 Trần Đại Nghĩa' AS name)
DELETE FROM subject_group WHERE id = (SELECT CAST(id AS TEXT) FROM subject_group_values);
WITH subject_group_values AS ( 
SELECT 
'C1TĐN' AS id,
' C1TĐN' AS short_name,
'Luyện vào cấp 2 Trần Đại Nghĩa' AS name)
INSERT INTO subject_group (id, short_name, name) 
SELECT id, short_name, name 
FROM subject_group_values; 

WITH subject_group_values AS ( 
SELECT 
'BBC2' AS id,
' BBC2' AS short_name,
'Báo bài cấp 2' AS name)
DELETE FROM subject_group WHERE id = (SELECT CAST(id AS TEXT) FROM subject_group_values);
WITH subject_group_values AS ( 
SELECT 
'BBC2' AS id,
' BBC2' AS short_name,
'Báo bài cấp 2' AS name)
INSERT INTO subject_group (id, short_name, name) 
SELECT id, short_name, name 
FROM subject_group_values; 

WITH subject_group_values AS ( 
SELECT 
'BBC2cA' AS id,
' BBC2cA' AS short_name,
'Báo bài cấp 2 có dạy tiếng Anh' AS name)
DELETE FROM subject_group WHERE id = (SELECT CAST(id AS TEXT) FROM subject_group_values);
WITH subject_group_values AS ( 
SELECT 
'BBC2cA' AS id,
' BBC2cA' AS short_name,
'Báo bài cấp 2 có dạy tiếng Anh' AS name)
INSERT INTO subject_group (id, short_name, name) 
SELECT id, short_name, name 
FROM subject_group_values; 

WITH subject_group_values AS ( 
SELECT 
'TLH678LH9' AS id,
' TLH678LH9' AS short_name,
'Toán Lý Hoá 6-7-8, Lý Hoá 9' AS name)
DELETE FROM subject_group WHERE id = (SELECT CAST(id AS TEXT) FROM subject_group_values);
WITH subject_group_values AS ( 
SELECT 
'TLH678LH9' AS id,
' TLH678LH9' AS short_name,
'Toán Lý Hoá 6-7-8, Lý Hoá 9' AS name)
INSERT INTO subject_group (id, short_name, name) 
SELECT id, short_name, name 
FROM subject_group_values; 

WITH subject_group_values AS ( 
SELECT 
'T9' AS id,
' T9' AS short_name,
'Toán 9-Luyện thi lớp 10' AS name)
DELETE FROM subject_group WHERE id = (SELECT CAST(id AS TEXT) FROM subject_group_values);
WITH subject_group_values AS ( 
SELECT 
'T9' AS id,
' T9' AS short_name,
'Toán 9-Luyện thi lớp 10' AS name)
INSERT INTO subject_group (id, short_name, name) 
SELECT id, short_name, name 
FROM subject_group_values; 

WITH subject_group_values AS ( 
SELECT 
'A678' AS id,
' A678' AS short_name,
'Tiếng Anh 6-7-8' AS name)
DELETE FROM subject_group WHERE id = (SELECT CAST(id AS TEXT) FROM subject_group_values);
WITH subject_group_values AS ( 
SELECT 
'A678' AS id,
' A678' AS short_name,
'Tiếng Anh 6-7-8' AS name)
INSERT INTO subject_group (id, short_name, name) 
SELECT id, short_name, name 
FROM subject_group_values; 

WITH subject_group_values AS ( 
SELECT 
'A9C3' AS id,
' A9C3' AS short_name,
'Tiếng Anh 9-10-11-12-Luyện thi đại học' AS name)
DELETE FROM subject_group WHERE id = (SELECT CAST(id AS TEXT) FROM subject_group_values);
WITH subject_group_values AS ( 
SELECT 
'A9C3' AS id,
' A9C3' AS short_name,
'Tiếng Anh 9-10-11-12-Luyện thi đại học' AS name)
INSERT INTO subject_group (id, short_name, name) 
SELECT id, short_name, name 
FROM subject_group_values; 

WITH subject_group_values AS ( 
SELECT 
'VC2C3' AS id,
' VC2C3' AS short_name,
'Văn 6-7-8-9-10-11-12-Luyện thi đại học' AS name)
DELETE FROM subject_group WHERE id = (SELECT CAST(id AS TEXT) FROM subject_group_values);
WITH subject_group_values AS ( 
SELECT 
'VC2C3' AS id,
' VC2C3' AS short_name,
'Văn 6-7-8-9-10-11-12-Luyện thi đại học' AS name)
INSERT INTO subject_group (id, short_name, name) 
SELECT id, short_name, name 
FROM subject_group_values; 

WITH subject_group_values AS ( 
SELECT 
'TC3' AS id,
' TC3' AS short_name,
'Toán 10-11-12-Luyện thi đại học' AS name)
DELETE FROM subject_group WHERE id = (SELECT CAST(id AS TEXT) FROM subject_group_values);
WITH subject_group_values AS ( 
SELECT 
'TC3' AS id,
' TC3' AS short_name,
'Toán 10-11-12-Luyện thi đại học' AS name)
INSERT INTO subject_group (id, short_name, name) 
SELECT id, short_name, name 
FROM subject_group_values; 

WITH subject_group_values AS ( 
SELECT 
'LC3' AS id,
' LC3' AS short_name,
'Lý 10-11-12-Luyện thi đại học' AS name)
DELETE FROM subject_group WHERE id = (SELECT CAST(id AS TEXT) FROM subject_group_values);
WITH subject_group_values AS ( 
SELECT 
'LC3' AS id,
' LC3' AS short_name,
'Lý 10-11-12-Luyện thi đại học' AS name)
INSERT INTO subject_group (id, short_name, name) 
SELECT id, short_name, name 
FROM subject_group_values; 

WITH subject_group_values AS ( 
SELECT 
'HC3' AS id,
' HC3' AS short_name,
'Hoá 10-11-12-Luyện thi đại học' AS name)
DELETE FROM subject_group WHERE id = (SELECT CAST(id AS TEXT) FROM subject_group_values);
WITH subject_group_values AS ( 
SELECT 
'HC3' AS id,
' HC3' AS short_name,
'Hoá 10-11-12-Luyện thi đại học' AS name)
INSERT INTO subject_group (id, short_name, name) 
SELECT id, short_name, name 
FROM subject_group_values; 

WITH subject_group_values AS ( 
SELECT 
'SC3' AS id,
' SC3' AS short_name,
'Sinh 10-11-12-Luyện thi đại học' AS name)
DELETE FROM subject_group WHERE id = (SELECT CAST(id AS TEXT) FROM subject_group_values);
WITH subject_group_values AS ( 
SELECT 
'SC3' AS id,
' SC3' AS short_name,
'Sinh 10-11-12-Luyện thi đại học' AS name)
INSERT INTO subject_group (id, short_name, name) 
SELECT id, short_name, name 
FROM subject_group_values; 

WITH subject_group_values AS ( 
SELECT 
'IELTS' AS id,
' IELTS' AS short_name,
'Luyện thi IELTS' AS name)
DELETE FROM subject_group WHERE id = (SELECT CAST(id AS TEXT) FROM subject_group_values);
WITH subject_group_values AS ( 
SELECT 
'IELTS' AS id,
' IELTS' AS short_name,
'Luyện thi IELTS' AS name)
INSERT INTO subject_group (id, short_name, name) 
SELECT id, short_name, name 
FROM subject_group_values; 

WITH subject_group_values AS ( 
SELECT 
'TAGT' AS id,
' TAGT' AS short_name,
'Tiếng Anh Giao Tiếp' AS name)
DELETE FROM subject_group WHERE id = (SELECT CAST(id AS TEXT) FROM subject_group_values);
WITH subject_group_values AS ( 
SELECT 
'TAGT' AS id,
' TAGT' AS short_name,
'Tiếng Anh Giao Tiếp' AS name)
INSERT INTO subject_group (id, short_name, name) 
SELECT id, short_name, name 
FROM subject_group_values; 

WITH subject_group_values AS ( 
SELECT 
'TOEIC' AS id,
' TOEIC' AS short_name,
'Luyện thi TOEIC' AS name)
DELETE FROM subject_group WHERE id = (SELECT CAST(id AS TEXT) FROM subject_group_values);
WITH subject_group_values AS ( 
SELECT 
'TOEIC' AS id,
' TOEIC' AS short_name,
'Luyện thi TOEIC' AS name)
INSERT INTO subject_group (id, short_name, name) 
SELECT id, short_name, name 
FROM subject_group_values; 

WITH subject_group_values AS ( 
SELECT 
'TOEFL' AS id,
' TOEFL' AS short_name,
'Luyện thi TOEFL' AS name)
DELETE FROM subject_group WHERE id = (SELECT CAST(id AS TEXT) FROM subject_group_values);
WITH subject_group_values AS ( 
SELECT 
'TOEFL' AS id,
' TOEFL' AS short_name,
'Luyện thi TOEFL' AS name)
INSERT INTO subject_group (id, short_name, name) 
SELECT id, short_name, name 
FROM subject_group_values; 

WITH subject_group_values AS ( 
SELECT 
'YLE' AS id,
' YLE' AS short_name,
'Luyện thi Starter, Mover, Flyer' AS name)
DELETE FROM subject_group WHERE id = (SELECT CAST(id AS TEXT) FROM subject_group_values);
WITH subject_group_values AS ( 
SELECT 
'YLE' AS id,
' YLE' AS short_name,
'Luyện thi Starter, Mover, Flyer' AS name)
INSERT INTO subject_group (id, short_name, name) 
SELECT id, short_name, name 
FROM subject_group_values; 

WITH subject_group_values AS ( 
SELECT 
'Chinese' AS id,
' Chinese' AS short_name,
'Tiếng Trung - Luyện thi HSK' AS name)
DELETE FROM subject_group WHERE id = (SELECT CAST(id AS TEXT) FROM subject_group_values);
WITH subject_group_values AS ( 
SELECT 
'Chinese' AS id,
' Chinese' AS short_name,
'Tiếng Trung - Luyện thi HSK' AS name)
INSERT INTO subject_group (id, short_name, name) 
SELECT id, short_name, name 
FROM subject_group_values; 

WITH subject_group_values AS ( 
SELECT 
'Japanese' AS id,
' Japanese' AS short_name,
'Tiếng Nhật - Luyện thi JLPT' AS name)
DELETE FROM subject_group WHERE id = (SELECT CAST(id AS TEXT) FROM subject_group_values);
WITH subject_group_values AS ( 
SELECT 
'Japanese' AS id,
' Japanese' AS short_name,
'Tiếng Nhật - Luyện thi JLPT' AS name)
INSERT INTO subject_group (id, short_name, name) 
SELECT id, short_name, name 
FROM subject_group_values; 

WITH subject_group_values AS ( 
SELECT 
'Korean' AS id,
' Korean' AS short_name,
'Tiếng Hàn - Luyện thi TOPIK' AS name)
DELETE FROM subject_group WHERE id = (SELECT CAST(id AS TEXT) FROM subject_group_values);
WITH subject_group_values AS ( 
SELECT 
'Korean' AS id,
' Korean' AS short_name,
'Tiếng Hàn - Luyện thi TOPIK' AS name)
INSERT INTO subject_group (id, short_name, name) 
SELECT id, short_name, name 
FROM subject_group_values; 

WITH subject_group_values AS ( 
SELECT 
'French' AS id,
' French' AS short_name,
'Tiếng Pháp' AS name)
DELETE FROM subject_group WHERE id = (SELECT CAST(id AS TEXT) FROM subject_group_values);
WITH subject_group_values AS ( 
SELECT 
'French' AS id,
' French' AS short_name,
'Tiếng Pháp' AS name)
INSERT INTO subject_group (id, short_name, name) 
SELECT id, short_name, name 
FROM subject_group_values; 

WITH subject_group_values AS ( 
SELECT 
'Piano-Organ' AS id,
' Piano-Organ' AS short_name,
'Piano - Organ' AS name)
DELETE FROM subject_group WHERE id = (SELECT CAST(id AS TEXT) FROM subject_group_values);
WITH subject_group_values AS ( 
SELECT 
'Piano-Organ' AS id,
' Piano-Organ' AS short_name,
'Piano - Organ' AS name)
INSERT INTO subject_group (id, short_name, name) 
SELECT id, short_name, name 
FROM subject_group_values; 

WITH subject_group_values AS ( 
SELECT 
'Guitar' AS id,
' Guitar' AS short_name,
'Guitar' AS name)
DELETE FROM subject_group WHERE id = (SELECT CAST(id AS TEXT) FROM subject_group_values);
WITH subject_group_values AS ( 
SELECT 
'Guitar' AS id,
' Guitar' AS short_name,
'Guitar' AS name)
INSERT INTO subject_group (id, short_name, name) 
SELECT id, short_name, name 
FROM subject_group_values; 

WITH subject_group_values AS ( 
SELECT 
'Violon' AS id,
' Violon' AS short_name,
'Violon' AS name)
DELETE FROM subject_group WHERE id = (SELECT CAST(id AS TEXT) FROM subject_group_values);
WITH subject_group_values AS ( 
SELECT 
'Violon' AS id,
' Violon' AS short_name,
'Violon' AS name)
INSERT INTO subject_group (id, short_name, name) 
SELECT id, short_name, name 
FROM subject_group_values; 

WITH subject_group_values AS ( 
SELECT 
'Ve' AS id,
' Ve' AS short_name,
'Hội hoạ - Kiến trúc' AS name)
DELETE FROM subject_group WHERE id = (SELECT CAST(id AS TEXT) FROM subject_group_values);
WITH subject_group_values AS ( 
SELECT 
'Ve' AS id,
' Ve' AS short_name,
'Hội hoạ - Kiến trúc' AS name)
INSERT INTO subject_group (id, short_name, name) 
SELECT id, short_name, name 
FROM subject_group_values; 

WITH subject_group_values AS ( 
SELECT 
'BTA' AS id,
' BTA' AS short_name,
'Dạy các môn bằng Tiếng Anh' AS name)
DELETE FROM subject_group WHERE id = (SELECT CAST(id AS TEXT) FROM subject_group_values);
WITH subject_group_values AS ( 
SELECT 
'BTA' AS id,
' BTA' AS short_name,
'Dạy các môn bằng Tiếng Anh' AS name)
INSERT INTO subject_group (id, short_name, name) 
SELECT id, short_name, name 
FROM subject_group_values; 

