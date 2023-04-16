
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-1-bennghe' AS id,
' Bến Nghé' AS commune,
'1' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-1-bennghe' AS id,
' Bến Nghé' AS commune,
'1' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-1-caukho' AS id,
' Cầu Kho' AS commune,
'1' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-1-caukho' AS id,
' Cầu Kho' AS commune,
'1' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-1-cauonglanh' AS id,
' Cầu Ông Lãnh' AS commune,
'1' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-1-cauonglanh' AS id,
' Cầu Ông Lãnh' AS commune,
'1' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-1-benthanh' AS id,
' Bến Thành' AS commune,
'1' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-1-benthanh' AS id,
' Bến Thành' AS commune,
'1' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-1-cogiang' AS id,
' Cô Giang' AS commune,
'1' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-1-cogiang' AS id,
' Cô Giang' AS commune,
'1' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-1-dakao' AS id,
' Đa Kao' AS commune,
'1' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-1-dakao' AS id,
' Đa Kao' AS commune,
'1' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-1-nguyenthaibinh' AS id,
' Nguyễn Thái Bình' AS commune,
'1' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-1-nguyenthaibinh' AS id,
' Nguyễn Thái Bình' AS commune,
'1' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-1-phamngulao' AS id,
' Phạm Ngũ Lão' AS commune,
'1' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-1-phamngulao' AS id,
' Phạm Ngũ Lão' AS commune,
'1' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-1-nguyencutrinh' AS id,
' Nguyễn Cư Trinh' AS commune,
'1' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-1-nguyencutrinh' AS id,
' Nguyễn Cư Trinh' AS commune,
'1' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-1-tandinh' AS id,
' Tân Định' AS commune,
'1' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-1-tandinh' AS id,
' Tân Định' AS commune,
'1' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-3-1' AS id,
' 1' AS commune,
'3' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-3-1' AS id,
' 1' AS commune,
'3' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-3-2' AS id,
' 2' AS commune,
'3' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-3-2' AS id,
' 2' AS commune,
'3' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-3-3' AS id,
' 3' AS commune,
'3' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-3-3' AS id,
' 3' AS commune,
'3' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-3-4' AS id,
' 4' AS commune,
'3' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-3-4' AS id,
' 4' AS commune,
'3' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-3-5' AS id,
' 5' AS commune,
'3' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-3-5' AS id,
' 5' AS commune,
'3' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-3-6' AS id,
' 6' AS commune,
'3' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-3-6' AS id,
' 6' AS commune,
'3' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-3-7' AS id,
' 7' AS commune,
'3' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-3-7' AS id,
' 7' AS commune,
'3' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-3-8' AS id,
' 8' AS commune,
'3' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-3-8' AS id,
' 8' AS commune,
'3' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-3-9' AS id,
' 9' AS commune,
'3' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-3-9' AS id,
' 9' AS commune,
'3' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-3-10' AS id,
' 10' AS commune,
'3' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-3-10' AS id,
' 10' AS commune,
'3' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-3-11' AS id,
' 11' AS commune,
'3' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-3-11' AS id,
' 11' AS commune,
'3' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-3-12' AS id,
' 12' AS commune,
'3' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-3-12' AS id,
' 12' AS commune,
'3' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-3-13' AS id,
' 13' AS commune,
'3' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-3-13' AS id,
' 13' AS commune,
'3' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-3-14' AS id,
' 14' AS commune,
'3' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-3-14' AS id,
' 14' AS commune,
'3' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-4-1' AS id,
' 1' AS commune,
'4' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-4-1' AS id,
' 1' AS commune,
'4' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-4-2' AS id,
' 2' AS commune,
'4' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-4-2' AS id,
' 2' AS commune,
'4' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-4-3' AS id,
' 3' AS commune,
'4' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-4-3' AS id,
' 3' AS commune,
'4' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-4-4' AS id,
' 4' AS commune,
'4' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-4-4' AS id,
' 4' AS commune,
'4' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-4-5' AS id,
' 5' AS commune,
'4' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-4-5' AS id,
' 5' AS commune,
'4' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-4-6' AS id,
' 6' AS commune,
'4' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-4-6' AS id,
' 6' AS commune,
'4' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-4-8' AS id,
' 8' AS commune,
'4' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-4-8' AS id,
' 8' AS commune,
'4' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-4-9' AS id,
' 9' AS commune,
'4' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-4-9' AS id,
' 9' AS commune,
'4' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-4-10' AS id,
' 10' AS commune,
'4' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-4-10' AS id,
' 10' AS commune,
'4' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-4-12' AS id,
' 12' AS commune,
'4' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-4-12' AS id,
' 12' AS commune,
'4' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-4-13' AS id,
' 13' AS commune,
'4' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-4-13' AS id,
' 13' AS commune,
'4' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-4-14' AS id,
' 14' AS commune,
'4' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-4-14' AS id,
' 14' AS commune,
'4' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-4-15' AS id,
' 15' AS commune,
'4' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-4-15' AS id,
' 15' AS commune,
'4' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-4-16' AS id,
' 16' AS commune,
'4' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-4-16' AS id,
' 16' AS commune,
'4' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-4-18' AS id,
' 18' AS commune,
'4' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-4-18' AS id,
' 18' AS commune,
'4' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-5-1' AS id,
' 1' AS commune,
'5' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-5-1' AS id,
' 1' AS commune,
'5' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-5-2' AS id,
' 2' AS commune,
'5' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-5-2' AS id,
' 2' AS commune,
'5' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-5-3' AS id,
' 3' AS commune,
'5' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-5-3' AS id,
' 3' AS commune,
'5' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-5-4' AS id,
' 4' AS commune,
'5' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-5-4' AS id,
' 4' AS commune,
'5' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-5-5' AS id,
' 5' AS commune,
'5' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-5-5' AS id,
' 5' AS commune,
'5' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-5-6' AS id,
' 6' AS commune,
'5' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-5-6' AS id,
' 6' AS commune,
'5' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-5-7' AS id,
' 7' AS commune,
'5' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-5-7' AS id,
' 7' AS commune,
'5' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-5-8' AS id,
' 8' AS commune,
'5' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-5-8' AS id,
' 8' AS commune,
'5' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-5-9' AS id,
' 9' AS commune,
'5' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-5-9' AS id,
' 9' AS commune,
'5' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-5-10' AS id,
' 10' AS commune,
'5' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-5-10' AS id,
' 10' AS commune,
'5' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-5-11' AS id,
' 11' AS commune,
'5' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-5-11' AS id,
' 11' AS commune,
'5' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-5-12' AS id,
' 12' AS commune,
'5' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-5-12' AS id,
' 12' AS commune,
'5' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-5-13' AS id,
' 13' AS commune,
'5' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-5-13' AS id,
' 13' AS commune,
'5' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-5-14' AS id,
' 14' AS commune,
'5' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-5-14' AS id,
' 14' AS commune,
'5' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-5-15' AS id,
' 15' AS commune,
'5' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-5-15' AS id,
' 15' AS commune,
'5' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-6-1' AS id,
' 1' AS commune,
'6' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-6-1' AS id,
' 1' AS commune,
'6' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-6-2' AS id,
' 2' AS commune,
'6' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-6-2' AS id,
' 2' AS commune,
'6' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-6-3' AS id,
' 3' AS commune,
'6' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-6-3' AS id,
' 3' AS commune,
'6' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-6-4' AS id,
' 4' AS commune,
'6' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-6-4' AS id,
' 4' AS commune,
'6' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-6-5' AS id,
' 5' AS commune,
'6' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-6-5' AS id,
' 5' AS commune,
'6' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-6-6' AS id,
' 6' AS commune,
'6' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-6-6' AS id,
' 6' AS commune,
'6' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-6-7' AS id,
' 7' AS commune,
'6' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-6-7' AS id,
' 7' AS commune,
'6' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-6-8' AS id,
' 8' AS commune,
'6' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-6-8' AS id,
' 8' AS commune,
'6' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-6-9' AS id,
' 9' AS commune,
'6' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-6-9' AS id,
' 9' AS commune,
'6' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-6-10' AS id,
' 10' AS commune,
'6' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-6-10' AS id,
' 10' AS commune,
'6' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-6-11' AS id,
' 11' AS commune,
'6' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-6-11' AS id,
' 11' AS commune,
'6' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-6-12' AS id,
' 12' AS commune,
'6' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-6-12' AS id,
' 12' AS commune,
'6' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-6-13' AS id,
' 13' AS commune,
'6' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-6-13' AS id,
' 13' AS commune,
'6' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-6-14' AS id,
' 14' AS commune,
'6' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-6-14' AS id,
' 14' AS commune,
'6' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-7-phuthuan' AS id,
' Phú Thuận' AS commune,
'7' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-7-phuthuan' AS id,
' Phú Thuận' AS commune,
'7' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-7-tanhung' AS id,
' Tân Hưng' AS commune,
'7' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-7-tanhung' AS id,
' Tân Hưng' AS commune,
'7' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-7-tankieng' AS id,
' Tân Kiểng' AS commune,
'7' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-7-tankieng' AS id,
' Tân Kiểng' AS commune,
'7' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-7-tanphong' AS id,
' Tân Phong' AS commune,
'7' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-7-tanphong' AS id,
' Tân Phong' AS commune,
'7' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-7-tanquy' AS id,
' Tân Quy' AS commune,
'7' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-7-tanquy' AS id,
' Tân Quy' AS commune,
'7' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-7-binhthuan' AS id,
' Bình Thuận' AS commune,
'7' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-7-binhthuan' AS id,
' Bình Thuận' AS commune,
'7' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-7-phumy' AS id,
' Phú Mỹ' AS commune,
'7' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-7-phumy' AS id,
' Phú Mỹ' AS commune,
'7' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-7-tanphu' AS id,
' Tân Phú' AS commune,
'7' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-7-tanphu' AS id,
' Tân Phú' AS commune,
'7' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-7-tanthuandong' AS id,
' Tân Thuận Đông' AS commune,
'7' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-7-tanthuandong' AS id,
' Tân Thuận Đông' AS commune,
'7' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-7-tanthuantay' AS id,
' Tân Thuận Tây' AS commune,
'7' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-7-tanthuantay' AS id,
' Tân Thuận Tây' AS commune,
'7' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-8-1' AS id,
' 1' AS commune,
'8' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-8-1' AS id,
' 1' AS commune,
'8' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-8-2' AS id,
' 2' AS commune,
'8' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-8-2' AS id,
' 2' AS commune,
'8' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-8-3' AS id,
' 3' AS commune,
'8' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-8-3' AS id,
' 3' AS commune,
'8' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-8-4' AS id,
' 4' AS commune,
'8' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-8-4' AS id,
' 4' AS commune,
'8' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-8-5' AS id,
' 5' AS commune,
'8' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-8-5' AS id,
' 5' AS commune,
'8' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-8-6' AS id,
' 6' AS commune,
'8' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-8-6' AS id,
' 6' AS commune,
'8' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-8-7' AS id,
' 7' AS commune,
'8' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-8-7' AS id,
' 7' AS commune,
'8' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-8-8' AS id,
' 8' AS commune,
'8' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-8-8' AS id,
' 8' AS commune,
'8' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-8-9' AS id,
' 9' AS commune,
'8' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-8-9' AS id,
' 9' AS commune,
'8' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-8-10' AS id,
' 10' AS commune,
'8' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-8-10' AS id,
' 10' AS commune,
'8' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-8-11' AS id,
' 11' AS commune,
'8' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-8-11' AS id,
' 11' AS commune,
'8' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-8-12' AS id,
' 12' AS commune,
'8' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-8-12' AS id,
' 12' AS commune,
'8' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-8-13' AS id,
' 13' AS commune,
'8' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-8-13' AS id,
' 13' AS commune,
'8' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-8-14' AS id,
' 14' AS commune,
'8' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-8-14' AS id,
' 14' AS commune,
'8' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-8-15' AS id,
' 15' AS commune,
'8' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-8-15' AS id,
' 15' AS commune,
'8' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-8-16' AS id,
' 16' AS commune,
'8' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-8-16' AS id,
' 16' AS commune,
'8' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-10-1' AS id,
' 1' AS commune,
'10' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-10-1' AS id,
' 1' AS commune,
'10' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-10-2' AS id,
' 2' AS commune,
'10' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-10-2' AS id,
' 2' AS commune,
'10' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-10-4' AS id,
' 4' AS commune,
'10' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-10-4' AS id,
' 4' AS commune,
'10' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-10-5' AS id,
' 5' AS commune,
'10' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-10-5' AS id,
' 5' AS commune,
'10' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-10-6' AS id,
' 6' AS commune,
'10' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-10-6' AS id,
' 6' AS commune,
'10' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-10-7' AS id,
' 7' AS commune,
'10' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-10-7' AS id,
' 7' AS commune,
'10' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-10-8' AS id,
' 8' AS commune,
'10' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-10-8' AS id,
' 8' AS commune,
'10' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-10-9' AS id,
' 9' AS commune,
'10' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-10-9' AS id,
' 9' AS commune,
'10' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-10-10' AS id,
' 10' AS commune,
'10' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-10-10' AS id,
' 10' AS commune,
'10' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-10-11' AS id,
' 11' AS commune,
'10' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-10-11' AS id,
' 11' AS commune,
'10' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-10-12' AS id,
' 12' AS commune,
'10' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-10-12' AS id,
' 12' AS commune,
'10' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-10-13' AS id,
' 13' AS commune,
'10' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-10-13' AS id,
' 13' AS commune,
'10' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-10-14' AS id,
' 14' AS commune,
'10' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-10-14' AS id,
' 14' AS commune,
'10' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-10-15' AS id,
' 15' AS commune,
'10' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-10-15' AS id,
' 15' AS commune,
'10' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-11-1' AS id,
' 1' AS commune,
'11' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-11-1' AS id,
' 1' AS commune,
'11' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-11-2' AS id,
' 2' AS commune,
'11' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-11-2' AS id,
' 2' AS commune,
'11' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-11-3' AS id,
' 3' AS commune,
'11' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-11-3' AS id,
' 3' AS commune,
'11' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-11-4' AS id,
' 4' AS commune,
'11' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-11-4' AS id,
' 4' AS commune,
'11' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-11-5' AS id,
' 5' AS commune,
'11' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-11-5' AS id,
' 5' AS commune,
'11' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-11-6' AS id,
' 6' AS commune,
'11' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-11-6' AS id,
' 6' AS commune,
'11' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-11-7' AS id,
' 7' AS commune,
'11' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-11-7' AS id,
' 7' AS commune,
'11' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-11-8' AS id,
' 8' AS commune,
'11' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-11-8' AS id,
' 8' AS commune,
'11' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-11-9' AS id,
' 9' AS commune,
'11' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-11-9' AS id,
' 9' AS commune,
'11' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-11-10' AS id,
' 10' AS commune,
'11' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-11-10' AS id,
' 10' AS commune,
'11' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-11-11' AS id,
' 11' AS commune,
'11' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-11-11' AS id,
' 11' AS commune,
'11' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-11-12' AS id,
' 12' AS commune,
'11' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-11-12' AS id,
' 12' AS commune,
'11' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-11-13' AS id,
' 13' AS commune,
'11' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-11-13' AS id,
' 13' AS commune,
'11' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-11-14' AS id,
' 14' AS commune,
'11' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-11-14' AS id,
' 14' AS commune,
'11' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-11-15' AS id,
' 15' AS commune,
'11' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-11-15' AS id,
' 15' AS commune,
'11' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-11-16' AS id,
' 16' AS commune,
'11' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-11-16' AS id,
' 16' AS commune,
'11' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-phunhuan-1' AS id,
' 1' AS commune,
'Phú Nhuận' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-phunhuan-1' AS id,
' 1' AS commune,
'Phú Nhuận' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-phunhuan-2' AS id,
' 2' AS commune,
'Phú Nhuận' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-phunhuan-2' AS id,
' 2' AS commune,
'Phú Nhuận' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-phunhuan-3' AS id,
' 3' AS commune,
'Phú Nhuận' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-phunhuan-3' AS id,
' 3' AS commune,
'Phú Nhuận' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-phunhuan-4' AS id,
' 4' AS commune,
'Phú Nhuận' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-phunhuan-4' AS id,
' 4' AS commune,
'Phú Nhuận' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-phunhuan-5' AS id,
' 5' AS commune,
'Phú Nhuận' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-phunhuan-5' AS id,
' 5' AS commune,
'Phú Nhuận' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-phunhuan-7' AS id,
' 7' AS commune,
'Phú Nhuận' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-phunhuan-7' AS id,
' 7' AS commune,
'Phú Nhuận' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-phunhuan-8' AS id,
' 8' AS commune,
'Phú Nhuận' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-phunhuan-8' AS id,
' 8' AS commune,
'Phú Nhuận' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-phunhuan-9' AS id,
' 9' AS commune,
'Phú Nhuận' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-phunhuan-9' AS id,
' 9' AS commune,
'Phú Nhuận' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-phunhuan-10' AS id,
' 10' AS commune,
'Phú Nhuận' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-phunhuan-10' AS id,
' 10' AS commune,
'Phú Nhuận' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-phunhuan-11' AS id,
' 11' AS commune,
'Phú Nhuận' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-phunhuan-11' AS id,
' 11' AS commune,
'Phú Nhuận' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-phunhuan-12' AS id,
' 12' AS commune,
'Phú Nhuận' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-phunhuan-12' AS id,
' 12' AS commune,
'Phú Nhuận' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-phunhuan-13' AS id,
' 13' AS commune,
'Phú Nhuận' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-phunhuan-13' AS id,
' 13' AS commune,
'Phú Nhuận' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-phunhuan-14' AS id,
' 14' AS commune,
'Phú Nhuận' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-phunhuan-14' AS id,
' 14' AS commune,
'Phú Nhuận' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-phunhuan-15' AS id,
' 15' AS commune,
'Phú Nhuận' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-phunhuan-15' AS id,
' 15' AS commune,
'Phú Nhuận' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-phunhuan-17' AS id,
' 17' AS commune,
'Phú Nhuận' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-phunhuan-17' AS id,
' 17' AS commune,
'Phú Nhuận' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-1' AS id,
' 1' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-1' AS id,
' 1' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-2' AS id,
' 2' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-2' AS id,
' 2' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-3' AS id,
' 3' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-3' AS id,
' 3' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-5' AS id,
' 5' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-5' AS id,
' 5' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-6' AS id,
' 6' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-6' AS id,
' 6' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-7' AS id,
' 7' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-7' AS id,
' 7' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-11' AS id,
' 11' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-11' AS id,
' 11' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-12' AS id,
' 12' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-12' AS id,
' 12' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-13' AS id,
' 13' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-13' AS id,
' 13' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-14' AS id,
' 14' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-14' AS id,
' 14' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-15' AS id,
' 15' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-15' AS id,
' 15' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-17' AS id,
' 17' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-17' AS id,
' 17' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-19' AS id,
' 19' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-19' AS id,
' 19' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-21' AS id,
' 21' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-21' AS id,
' 21' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-22' AS id,
' 22' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-22' AS id,
' 22' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-24' AS id,
' 24' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-24' AS id,
' 24' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-25' AS id,
' 25' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-25' AS id,
' 25' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-26' AS id,
' 26' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-26' AS id,
' 26' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-27' AS id,
' 27' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-27' AS id,
' 27' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-28' AS id,
' 28' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhthanh-28' AS id,
' 28' AS commune,
'Bình Thạnh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanphu-taythanh' AS id,
' Tây Thạnh' AS commune,
'Tân Phú' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanphu-taythanh' AS id,
' Tây Thạnh' AS commune,
'Tân Phú' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanphu-tansonnhi' AS id,
' Tân Sơn Nhì' AS commune,
'Tân Phú' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanphu-tansonnhi' AS id,
' Tân Sơn Nhì' AS commune,
'Tân Phú' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanphu-sonky' AS id,
' Sơn Kỳ ' AS commune,
'Tân Phú' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanphu-sonky' AS id,
' Sơn Kỳ ' AS commune,
'Tân Phú' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanphu-tanquy' AS id,
' Tân Quý ' AS commune,
'Tân Phú' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanphu-tanquy' AS id,
' Tân Quý ' AS commune,
'Tân Phú' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanphu-tanthanh' AS id,
' Tân Thành ' AS commune,
'Tân Phú' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanphu-tanthanh' AS id,
' Tân Thành ' AS commune,
'Tân Phú' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanphu-phuthohoa' AS id,
' Phú Thọ Hòa ' AS commune,
'Tân Phú' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanphu-phuthohoa' AS id,
' Phú Thọ Hòa ' AS commune,
'Tân Phú' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanphu-phuthanh' AS id,
' Phú Thạnh ' AS commune,
'Tân Phú' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanphu-phuthanh' AS id,
' Phú Thạnh ' AS commune,
'Tân Phú' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanphu-phutrung' AS id,
' Phú Trung ' AS commune,
'Tân Phú' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanphu-phutrung' AS id,
' Phú Trung ' AS commune,
'Tân Phú' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanphu-hoathanh' AS id,
' Hòa Thạnh ' AS commune,
'Tân Phú' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanphu-hoathanh' AS id,
' Hòa Thạnh ' AS commune,
'Tân Phú' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanphu-hieptan' AS id,
' Hiệp Tân ' AS commune,
'Tân Phú' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanphu-hieptan' AS id,
' Hiệp Tân ' AS commune,
'Tân Phú' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanphu-tanthoihoa' AS id,
' Tân Thới Hòa ' AS commune,
'Tân Phú' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanphu-tanthoihoa' AS id,
' Tân Thới Hòa ' AS commune,
'Tân Phú' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanbinh-1' AS id,
' 1' AS commune,
'Tân Bình' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanbinh-1' AS id,
' 1' AS commune,
'Tân Bình' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanbinh-2' AS id,
' 2' AS commune,
'Tân Bình' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanbinh-2' AS id,
' 2' AS commune,
'Tân Bình' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanbinh-3' AS id,
' 3' AS commune,
'Tân Bình' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanbinh-3' AS id,
' 3' AS commune,
'Tân Bình' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanbinh-4' AS id,
' 4' AS commune,
'Tân Bình' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanbinh-4' AS id,
' 4' AS commune,
'Tân Bình' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanbinh-5' AS id,
' 5' AS commune,
'Tân Bình' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanbinh-5' AS id,
' 5' AS commune,
'Tân Bình' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanbinh-6' AS id,
' 6' AS commune,
'Tân Bình' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanbinh-6' AS id,
' 6' AS commune,
'Tân Bình' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanbinh-7' AS id,
' 7' AS commune,
'Tân Bình' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanbinh-7' AS id,
' 7' AS commune,
'Tân Bình' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanbinh-8' AS id,
' 8' AS commune,
'Tân Bình' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanbinh-8' AS id,
' 8' AS commune,
'Tân Bình' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanbinh-9' AS id,
' 9' AS commune,
'Tân Bình' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanbinh-9' AS id,
' 9' AS commune,
'Tân Bình' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanbinh-10' AS id,
' 10' AS commune,
'Tân Bình' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanbinh-10' AS id,
' 10' AS commune,
'Tân Bình' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanbinh-11' AS id,
' 11' AS commune,
'Tân Bình' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanbinh-11' AS id,
' 11' AS commune,
'Tân Bình' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanbinh-12' AS id,
' 12' AS commune,
'Tân Bình' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanbinh-12' AS id,
' 12' AS commune,
'Tân Bình' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanbinh-13' AS id,
' 13' AS commune,
'Tân Bình' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanbinh-13' AS id,
' 13' AS commune,
'Tân Bình' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanbinh-14' AS id,
' 14' AS commune,
'Tân Bình' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanbinh-14' AS id,
' 14' AS commune,
'Tân Bình' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanbinh-15' AS id,
' 15' AS commune,
'Tân Bình' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tanbinh-15' AS id,
' 15' AS commune,
'Tân Bình' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-govap-1' AS id,
' 1' AS commune,
'Gò Vấp' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-govap-1' AS id,
' 1' AS commune,
'Gò Vấp' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-govap-3' AS id,
' 3' AS commune,
'Gò Vấp' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-govap-3' AS id,
' 3' AS commune,
'Gò Vấp' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-govap-4' AS id,
' 4' AS commune,
'Gò Vấp' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-govap-4' AS id,
' 4' AS commune,
'Gò Vấp' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-govap-5' AS id,
' 5' AS commune,
'Gò Vấp' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-govap-5' AS id,
' 5' AS commune,
'Gò Vấp' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-govap-6' AS id,
' 6' AS commune,
'Gò Vấp' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-govap-6' AS id,
' 6' AS commune,
'Gò Vấp' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-govap-7' AS id,
' 7' AS commune,
'Gò Vấp' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-govap-7' AS id,
' 7' AS commune,
'Gò Vấp' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-govap-8' AS id,
' 8' AS commune,
'Gò Vấp' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-govap-8' AS id,
' 8' AS commune,
'Gò Vấp' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-govap-9' AS id,
' 9' AS commune,
'Gò Vấp' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-govap-9' AS id,
' 9' AS commune,
'Gò Vấp' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-govap-10' AS id,
' 10' AS commune,
'Gò Vấp' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-govap-10' AS id,
' 10' AS commune,
'Gò Vấp' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-govap-11' AS id,
' 11' AS commune,
'Gò Vấp' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-govap-11' AS id,
' 11' AS commune,
'Gò Vấp' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-govap-12' AS id,
' 12' AS commune,
'Gò Vấp' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-govap-12' AS id,
' 12' AS commune,
'Gò Vấp' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-govap-13' AS id,
' 13' AS commune,
'Gò Vấp' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-govap-13' AS id,
' 13' AS commune,
'Gò Vấp' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-govap-14' AS id,
' 14' AS commune,
'Gò Vấp' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-govap-14' AS id,
' 14' AS commune,
'Gò Vấp' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-govap-15' AS id,
' 15' AS commune,
'Gò Vấp' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-govap-15' AS id,
' 15' AS commune,
'Gò Vấp' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-govap-16' AS id,
' 16' AS commune,
'Gò Vấp' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-govap-16' AS id,
' 16' AS commune,
'Gò Vấp' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-govap-17' AS id,
' 17' AS commune,
'Gò Vấp' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-govap-17' AS id,
' 17' AS commune,
'Gò Vấp' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-ankhanh' AS id,
' An Khánh' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-ankhanh' AS id,
' An Khánh' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-anloidong' AS id,
' An Lợi Đông' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-anloidong' AS id,
' An Lợi Đông' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-anphu' AS id,
' An Phú' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-anphu' AS id,
' An Phú' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-binhchieu' AS id,
' Bình Chiểu' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-binhchieu' AS id,
' Bình Chiểu' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-binhtho' AS id,
' Bình Thọ' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-binhtho' AS id,
' Bình Thọ' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-binhtrungdong' AS id,
' Bình Trưng Đông' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-binhtrungdong' AS id,
' Bình Trưng Đông' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-binhtrungtay' AS id,
' Bình Trưng Tây' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-binhtrungtay' AS id,
' Bình Trưng Tây' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-catlai' AS id,
' Cát Lái' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-catlai' AS id,
' Cát Lái' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-hiepbinhchanh' AS id,
'  Hiệp Bình Chánh' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-hiepbinhchanh' AS id,
'  Hiệp Bình Chánh' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-hiepbinhphuoc' AS id,
'  Hiệp Bình Phước' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-hiepbinhphuoc' AS id,
'  Hiệp Bình Phước' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-hiepphu' AS id,
' Hiệp Phú' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-hiepphu' AS id,
' Hiệp Phú' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-linhchieu' AS id,
' Linh Chiểu' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-linhchieu' AS id,
' Linh Chiểu' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-linhdong' AS id,
' Linh Đông' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-linhdong' AS id,
' Linh Đông' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-linhtay' AS id,
' Linh Tây' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-linhtay' AS id,
' Linh Tây' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-linhtrung' AS id,
' Linh Trung' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-linhtrung' AS id,
' Linh Trung' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-linhxuan' AS id,
' Linh Xuân' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-linhxuan' AS id,
' Linh Xuân' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-longbinh' AS id,
' Long Bình' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-longbinh' AS id,
' Long Bình' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-longphuoc' AS id,
' Long Phước' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-longphuoc' AS id,
' Long Phước' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-longthanhmy' AS id,
'  Long Thạnh Mỹ' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-longthanhmy' AS id,
'  Long Thạnh Mỹ' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-longtruong' AS id,
'  Long Trường' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-longtruong' AS id,
'  Long Trường' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-phuhuu' AS id,
' Phú Hữu' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-phuhuu' AS id,
' Phú Hữu' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-phuocbinh' AS id,
'  Phước Bình' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-phuocbinh' AS id,
'  Phước Bình' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-phuoclonga' AS id,
' Phước Long A' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-phuoclonga' AS id,
' Phước Long A' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-phuoclongb' AS id,
' Phước Long B' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-phuoclongb' AS id,
' Phước Long B' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-tambinh' AS id,
' Tam Bình' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-tambinh' AS id,
' Tam Bình' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-tamphu' AS id,
'  Tam Phú' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-tamphu' AS id,
'  Tam Phú' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-tangnhonphua' AS id,
' Tăng Nhơn Phú A' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-tangnhonphua' AS id,
' Tăng Nhơn Phú A' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-tangnhonphub' AS id,
' Tăng Nhơn Phú B' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-tangnhonphub' AS id,
' Tăng Nhơn Phú B' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-tanphu' AS id,
' Tân Phú' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-tanphu' AS id,
' Tân Phú' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-thaodien' AS id,
' Thảo Điền' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-thaodien' AS id,
' Thảo Điền' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-thanhmyloi' AS id,
' Thạnh Mỹ Lợi' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-thanhmyloi' AS id,
' Thạnh Mỹ Lợi' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-thuthiem' AS id,
' Thủ Thiêm' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-thuthiem' AS id,
' Thủ Thiêm' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-truongthanh' AS id,
' Trường Thạnh' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-truongthanh' AS id,
' Trường Thạnh' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-truongtho' AS id,
' Trường Thọ' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-tpthuduc-truongtho' AS id,
' Trường Thọ' AS commune,
'TP.Thủ Đức' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhtan-anlaca' AS id,
' An Lạc A' AS commune,
'Bình Tân' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhtan-anlaca' AS id,
' An Lạc A' AS commune,
'Bình Tân' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhtan-anlac' AS id,
' An Lạc' AS commune,
'Bình Tân' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhtan-anlac' AS id,
' An Lạc' AS commune,
'Bình Tân' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhtan-binhhunghoa' AS id,
' Bình Hưng Hoà' AS commune,
'Bình Tân' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhtan-binhhunghoa' AS id,
' Bình Hưng Hoà' AS commune,
'Bình Tân' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhtan-binhhunghoaa' AS id,
' Bình Hưng Hoà A' AS commune,
'Bình Tân' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhtan-binhhunghoaa' AS id,
' Bình Hưng Hoà A' AS commune,
'Bình Tân' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhtan-binhhunghoab' AS id,
' Bình Hưng Hoà B' AS commune,
'Bình Tân' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhtan-binhhunghoab' AS id,
' Bình Hưng Hoà B' AS commune,
'Bình Tân' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhtan-binhtridong' AS id,
' Bình Trị Đông' AS commune,
'Bình Tân' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhtan-binhtridong' AS id,
' Bình Trị Đông' AS commune,
'Bình Tân' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhtan-binhtridonga' AS id,
'  Bình Trị Đông A' AS commune,
'Bình Tân' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhtan-binhtridonga' AS id,
'  Bình Trị Đông A' AS commune,
'Bình Tân' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhtan-binhtridongb' AS id,
' Bình Trị Đông B' AS commune,
'Bình Tân' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhtan-binhtridongb' AS id,
' Bình Trị Đông B' AS commune,
'Bình Tân' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhtan-tantao' AS id,
' Tân Tạo' AS commune,
'Bình Tân' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhtan-tantao' AS id,
' Tân Tạo' AS commune,
'Bình Tân' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhtan-tantaoa' AS id,
' Tân Tạo A' AS commune,
'Bình Tân' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-binhtan-tantaoa' AS id,
' Tân Tạo A' AS commune,
'Bình Tân' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenbinhchanh-xaanphutay' AS id,
'   Xã An Phú Tây' AS commune,
'Huyện Bình Chánh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenbinhchanh-xaanphutay' AS id,
'   Xã An Phú Tây' AS commune,
'Huyện Bình Chánh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenbinhchanh-xabinhchanh' AS id,
'   Xã Bình Chánh' AS commune,
'Huyện Bình Chánh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenbinhchanh-xabinhchanh' AS id,
'   Xã Bình Chánh' AS commune,
'Huyện Bình Chánh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenbinhchanh-xabinhhung' AS id,
'  Xã Bình Hưng' AS commune,
'Huyện Bình Chánh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenbinhchanh-xabinhhung' AS id,
'  Xã Bình Hưng' AS commune,
'Huyện Bình Chánh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenbinhchanh-xabinhloi' AS id,
' Xã Bình Lợi' AS commune,
'Huyện Bình Chánh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenbinhchanh-xabinhloi' AS id,
' Xã Bình Lợi' AS commune,
'Huyện Bình Chánh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenbinhchanh-xadaphuoc' AS id,
' Xã Đa Phước' AS commune,
'Huyện Bình Chánh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenbinhchanh-xadaphuoc' AS id,
' Xã Đa Phước' AS commune,
'Huyện Bình Chánh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenbinhchanh-xahunglong' AS id,
' Xã Hưng Long' AS commune,
'Huyện Bình Chánh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenbinhchanh-xahunglong' AS id,
' Xã Hưng Long' AS commune,
'Huyện Bình Chánh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenbinhchanh-xaleminhxuan' AS id,
' Xã Lê Minh Xuân' AS commune,
'Huyện Bình Chánh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenbinhchanh-xaleminhxuan' AS id,
' Xã Lê Minh Xuân' AS commune,
'Huyện Bình Chánh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenbinhchanh-xaphamvanhai' AS id,
' Xã Phạm Văn Hai' AS commune,
'Huyện Bình Chánh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenbinhchanh-xaphamvanhai' AS id,
' Xã Phạm Văn Hai' AS commune,
'Huyện Bình Chánh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenbinhchanh-xaphongphu' AS id,
' Xã Phong Phú' AS commune,
'Huyện Bình Chánh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenbinhchanh-xaphongphu' AS id,
' Xã Phong Phú' AS commune,
'Huyện Bình Chánh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenbinhchanh-xaquyduc' AS id,
' Xã Quy Đức' AS commune,
'Huyện Bình Chánh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenbinhchanh-xaquyduc' AS id,
' Xã Quy Đức' AS commune,
'Huyện Bình Chánh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenbinhchanh-xatankien' AS id,
' Xã Tân Kiên' AS commune,
'Huyện Bình Chánh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenbinhchanh-xatankien' AS id,
' Xã Tân Kiên' AS commune,
'Huyện Bình Chánh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenbinhchanh-xatannhut' AS id,
' Xã Tân Nhựt' AS commune,
'Huyện Bình Chánh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenbinhchanh-xatannhut' AS id,
' Xã Tân Nhựt' AS commune,
'Huyện Bình Chánh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenbinhchanh-xatanquytay' AS id,
' Xã Tân Quý Tây' AS commune,
'Huyện Bình Chánh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenbinhchanh-xatanquytay' AS id,
' Xã Tân Quý Tây' AS commune,
'Huyện Bình Chánh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenbinhchanh-xavinhloca' AS id,
' Xã Vĩnh Lộc A' AS commune,
'Huyện Bình Chánh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenbinhchanh-xavinhloca' AS id,
' Xã Vĩnh Lộc A' AS commune,
'Huyện Bình Chánh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenbinhchanh-xavinhlocb' AS id,
' Xã Vĩnh Lộc B' AS commune,
'Huyện Bình Chánh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenbinhchanh-xavinhlocb' AS id,
' Xã Vĩnh Lộc B' AS commune,
'Huyện Bình Chánh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenbinhchanh-thitrantantuc' AS id,
' Thị trấn Tân Túc' AS commune,
'Huyện Bình Chánh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenbinhchanh-thitrantantuc' AS id,
' Thị trấn Tân Túc' AS commune,
'Huyện Bình Chánh' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyennhabe-xahiepphuoc' AS id,
' Xã Hiệp Phước' AS commune,
'Huyện Nhà Bè' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyennhabe-xahiepphuoc' AS id,
' Xã Hiệp Phước' AS commune,
'Huyện Nhà Bè' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyennhabe-xalongthoi' AS id,
' Xã Long Thới' AS commune,
'Huyện Nhà Bè' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyennhabe-xalongthoi' AS id,
' Xã Long Thới' AS commune,
'Huyện Nhà Bè' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyennhabe-xanhonduc' AS id,
' Xã Nhơn Đức' AS commune,
'Huyện Nhà Bè' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyennhabe-xanhonduc' AS id,
' Xã Nhơn Đức' AS commune,
'Huyện Nhà Bè' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyennhabe-xaphuxuan' AS id,
' Xã Phú Xuân' AS commune,
'Huyện Nhà Bè' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyennhabe-xaphuxuan' AS id,
' Xã Phú Xuân' AS commune,
'Huyện Nhà Bè' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyennhabe-xaphuockien' AS id,
' Xã Phước Kiển ' AS commune,
'Huyện Nhà Bè' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyennhabe-xaphuockien' AS id,
' Xã Phước Kiển ' AS commune,
'Huyện Nhà Bè' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyennhabe-xaphuocloc' AS id,
' Xã Phước Lộc' AS commune,
'Huyện Nhà Bè' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyennhabe-xaphuocloc' AS id,
' Xã Phước Lộc' AS commune,
'Huyện Nhà Bè' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyennhabe-thitrannhabe' AS id,
' Thị trấn Nhà Bè' AS commune,
'Huyện Nhà Bè' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyennhabe-thitrannhabe' AS id,
' Thị trấn Nhà Bè' AS commune,
'Huyện Nhà Bè' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencangio-xabinhkhanh' AS id,
' Xã Bình Khánh' AS commune,
'Huyện Cần Giờ' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencangio-xabinhkhanh' AS id,
' Xã Bình Khánh' AS commune,
'Huyện Cần Giờ' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencangio-xatamthonhiep' AS id,
' Xã Tam Thôn Hiệp' AS commune,
'Huyện Cần Giờ' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencangio-xatamthonhiep' AS id,
' Xã Tam Thôn Hiệp' AS commune,
'Huyện Cần Giờ' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencangio-xaanthoidong' AS id,
' Xã An Thới Đông' AS commune,
'Huyện Cần Giờ' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencangio-xaanthoidong' AS id,
' Xã An Thới Đông' AS commune,
'Huyện Cần Giờ' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencangio-xathanhan' AS id,
' Xã Thạnh An' AS commune,
'Huyện Cần Giờ' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencangio-xathanhan' AS id,
' Xã Thạnh An' AS commune,
'Huyện Cần Giờ' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencangio-xalonghoa' AS id,
' Xã Long Hòa' AS commune,
'Huyện Cần Giờ' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencangio-xalonghoa' AS id,
' Xã Long Hòa' AS commune,
'Huyện Cần Giờ' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencangio-xalynhon' AS id,
' Xã Lý Nhơn' AS commune,
'Huyện Cần Giờ' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencangio-xalynhon' AS id,
' Xã Lý Nhơn' AS commune,
'Huyện Cần Giờ' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencangio-thitrancanthanh' AS id,
' Thị trấn Cần Thạnh' AS commune,
'Huyện Cần Giờ' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencangio-thitrancanthanh' AS id,
' Thị trấn Cần Thạnh' AS commune,
'Huyện Cần Giờ' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-12-anphudong' AS id,
'  An Phú Đông' AS commune,
'12' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-12-anphudong' AS id,
'  An Phú Đông' AS commune,
'12' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-12-donghungthuan' AS id,
'  Đông Hưng Thuận' AS commune,
'12' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-12-donghungthuan' AS id,
'  Đông Hưng Thuận' AS commune,
'12' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-12-hiepthanh' AS id,
'  Hiệp Thành' AS commune,
'12' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-12-hiepthanh' AS id,
'  Hiệp Thành' AS commune,
'12' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-12-tanchanhhiep' AS id,
'  Tân Chánh Hiệp' AS commune,
'12' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-12-tanchanhhiep' AS id,
'  Tân Chánh Hiệp' AS commune,
'12' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-12-tanhungthuan' AS id,
'  Tân Hưng Thuận' AS commune,
'12' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-12-tanhungthuan' AS id,
'  Tân Hưng Thuận' AS commune,
'12' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-12-tanthoihiep' AS id,
'  Tân Thới Hiệp' AS commune,
'12' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-12-tanthoihiep' AS id,
'  Tân Thới Hiệp' AS commune,
'12' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-12-tanthoinhat' AS id,
'  Tân Thới Nhất' AS commune,
'12' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-12-tanthoinhat' AS id,
'  Tân Thới Nhất' AS commune,
'12' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-12-thanhloc' AS id,
' Thạnh Lộc' AS commune,
'12' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-12-thanhloc' AS id,
' Thạnh Lộc' AS commune,
'12' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-12-thanhxuan' AS id,
' Thạnh Xuân' AS commune,
'12' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-12-thanhxuan' AS id,
' Thạnh Xuân' AS commune,
'12' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-12-thoian' AS id,
'  Thới An' AS commune,
'12' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-12-thoian' AS id,
'  Thới An' AS commune,
'12' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-12-trungmytay' AS id,
' Trung Mỹ Tây' AS commune,
'12' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-12-trungmytay' AS id,
' Trung Mỹ Tây' AS commune,
'12' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenhocmon-xabadiem' AS id,
' Xã  Bà Điểm' AS commune,
'Huyện Hóc Môn' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenhocmon-xabadiem' AS id,
' Xã  Bà Điểm' AS commune,
'Huyện Hóc Môn' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenhocmon-xadongthanh' AS id,
' Xã  Đông Thạnh' AS commune,
'Huyện Hóc Môn' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenhocmon-xadongthanh' AS id,
' Xã  Đông Thạnh' AS commune,
'Huyện Hóc Môn' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenhocmon-xanhibinh' AS id,
' Xã   Nhị Bình' AS commune,
'Huyện Hóc Môn' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenhocmon-xanhibinh' AS id,
' Xã   Nhị Bình' AS commune,
'Huyện Hóc Môn' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenhocmon-xatanhiep' AS id,
' Xã  Tân Hiệp' AS commune,
'Huyện Hóc Môn' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenhocmon-xatanhiep' AS id,
' Xã  Tân Hiệp' AS commune,
'Huyện Hóc Môn' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenhocmon-xatanthoinhi' AS id,
' Xã Tân Thới Nhì' AS commune,
'Huyện Hóc Môn' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenhocmon-xatanthoinhi' AS id,
' Xã Tân Thới Nhì' AS commune,
'Huyện Hóc Môn' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenhocmon-xatanxuan' AS id,
' Xã  Tân Xuân' AS commune,
'Huyện Hóc Môn' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenhocmon-xatanxuan' AS id,
' Xã  Tân Xuân' AS commune,
'Huyện Hóc Môn' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenhocmon-xathoitamthon' AS id,
' Xã  Thới Tam Thôn' AS commune,
'Huyện Hóc Môn' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenhocmon-xathoitamthon' AS id,
' Xã  Thới Tam Thôn' AS commune,
'Huyện Hóc Môn' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenhocmon-xatrungchanh' AS id,
' Xã   Trung Chánh' AS commune,
'Huyện Hóc Môn' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenhocmon-xatrungchanh' AS id,
' Xã   Trung Chánh' AS commune,
'Huyện Hóc Môn' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenhocmon-xaxuanthoidong' AS id,
' Xã   Xuân Thới Đông' AS commune,
'Huyện Hóc Môn' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenhocmon-xaxuanthoidong' AS id,
' Xã   Xuân Thới Đông' AS commune,
'Huyện Hóc Môn' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenhocmon-xaxuanthoison' AS id,
' Xã   Xuân Thới Sơn' AS commune,
'Huyện Hóc Môn' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenhocmon-xaxuanthoison' AS id,
' Xã   Xuân Thới Sơn' AS commune,
'Huyện Hóc Môn' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenhocmon-xaxuanthoithuong' AS id,
' Xã   Xuân Thới Thượng' AS commune,
'Huyện Hóc Môn' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenhocmon-xaxuanthoithuong' AS id,
' Xã   Xuân Thới Thượng' AS commune,
'Huyện Hóc Môn' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenhocmon-thitranhocmon' AS id,
' Thị trấn Hóc Môn' AS commune,
'Huyện Hóc Môn' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyenhocmon-thitranhocmon' AS id,
' Thị trấn Hóc Môn' AS commune,
'Huyện Hóc Môn' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-thitrancuchi' AS id,
' Thị trấn Củ Chi' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-thitrancuchi' AS id,
' Thị trấn Củ Chi' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xaphumyhung' AS id,
' Xã Phú Mỹ Hưng' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xaphumyhung' AS id,
' Xã Phú Mỹ Hưng' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xaanphu' AS id,
' Xã An Phú' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xaanphu' AS id,
' Xã An Phú' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xatrunglapthuong' AS id,
' Xã Trung Lập Thượng' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xatrunglapthuong' AS id,
' Xã Trung Lập Thượng' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xaannhontay' AS id,
' Xã An Nhơn Tây' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xaannhontay' AS id,
' Xã An Nhơn Tây' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xanhuanduc' AS id,
' Xã Nhuận Đức' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xanhuanduc' AS id,
' Xã Nhuận Đức' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xaphamvancoi' AS id,
' Xã Phạm Văn Cội' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xaphamvancoi' AS id,
' Xã Phạm Văn Cội' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xaphuhoadong' AS id,
' Xã Phú Hòa Đông' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xaphuhoadong' AS id,
' Xã Phú Hòa Đông' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xatrunglapha' AS id,
' Xã Trung Lập Hạ' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xatrunglapha' AS id,
' Xã Trung Lập Hạ' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xatrungan' AS id,
' Xã Trung An' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xatrungan' AS id,
' Xã Trung An' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xaphuocthanh' AS id,
' Xã Phước Thạnh' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xaphuocthanh' AS id,
' Xã Phước Thạnh' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xaphuochiep' AS id,
' Xã Phước Hiệp' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xaphuochiep' AS id,
' Xã Phước Hiệp' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xatananhoi' AS id,
' Xã Tân An Hội' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xatananhoi' AS id,
' Xã Tân An Hội' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xaphuocvinhan' AS id,
' Xã Phước Vĩnh An' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xaphuocvinhan' AS id,
' Xã Phước Vĩnh An' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xathaimy' AS id,
' Xã Thái Mỹ' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xathaimy' AS id,
' Xã Thái Mỹ' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xatanthanhtay' AS id,
' Xã Tân Thạnh Tây' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xatanthanhtay' AS id,
' Xã Tân Thạnh Tây' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xahoaphu' AS id,
' Xã Hòa Phú' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xahoaphu' AS id,
' Xã Hòa Phú' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xatanthanhdong' AS id,
' Xã Tân Thạnh Đông' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xatanthanhdong' AS id,
' Xã Tân Thạnh Đông' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xabinhmy' AS id,
' Xã Bình Mỹ' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xabinhmy' AS id,
' Xã Bình Mỹ' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xatanphutrung' AS id,
' Xã Tân Phú Trung' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xatanphutrung' AS id,
' Xã Tân Phú Trung' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xatanthonghoi' AS id,
' Xã Tân Thông Hội' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-tphcm-huyencuchi-xatanthonghoi' AS id,
' Xã Tân Thông Hội' AS commune,
'Huyện Củ Chi' AS district,
'Việt Nam' AS nation,
'TP.HCM' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-bactuliem-conhue1' AS id,
' Cổ Nhuế 1' AS commune,
' Bắc Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-bactuliem-conhue1' AS id,
' Cổ Nhuế 1' AS commune,
' Bắc Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-bactuliem-conhue2' AS id,
' Cổ Nhuế 2' AS commune,
' Bắc Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-bactuliem-conhue2' AS id,
' Cổ Nhuế 2' AS commune,
' Bắc Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-bactuliem-dongngac' AS id,
' Đông Ngạc' AS commune,
' Bắc Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-bactuliem-dongngac' AS id,
' Đông Ngạc' AS commune,
' Bắc Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-bactuliem-ducthang' AS id,
'  Đức Thắng' AS commune,
' Bắc Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-bactuliem-ducthang' AS id,
'  Đức Thắng' AS commune,
' Bắc Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-bactuliem-lienmac' AS id,
' Liên Mạc' AS commune,
' Bắc Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-bactuliem-lienmac' AS id,
' Liên Mạc' AS commune,
' Bắc Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-bactuliem-minhkhai' AS id,
' Minh Khai' AS commune,
' Bắc Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-bactuliem-minhkhai' AS id,
' Minh Khai' AS commune,
' Bắc Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-bactuliem-phudien' AS id,
' Phú Diễn' AS commune,
' Bắc Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-bactuliem-phudien' AS id,
' Phú Diễn' AS commune,
' Bắc Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-bactuliem-phucdien' AS id,
'  Phúc Diễn' AS commune,
' Bắc Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-bactuliem-phucdien' AS id,
'  Phúc Diễn' AS commune,
' Bắc Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-bactuliem-taytuu' AS id,
' Tây Tựu' AS commune,
' Bắc Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-bactuliem-taytuu' AS id,
' Tây Tựu' AS commune,
' Bắc Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-bactuliem-thuongcat' AS id,
' Thượng Cát' AS commune,
' Bắc Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-bactuliem-thuongcat' AS id,
' Thượng Cát' AS commune,
' Bắc Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-bactuliem-thuyphuong' AS id,
' Thụy Phương' AS commune,
' Bắc Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-bactuliem-thuyphuong' AS id,
' Thụy Phương' AS commune,
' Bắc Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-bactuliem-xuandinh' AS id,
' Xuân Đỉnh' AS commune,
' Bắc Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-bactuliem-xuandinh' AS id,
' Xuân Đỉnh' AS commune,
' Bắc Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-bactuliem-xuantao' AS id,
' Xuân Tảo' AS commune,
' Bắc Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-bactuliem-xuantao' AS id,
' Xuân Tảo' AS commune,
' Bắc Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-namtuliem-caudien' AS id,
'  Cầu Diễn' AS commune,
'Nam Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-namtuliem-caudien' AS id,
'  Cầu Diễn' AS commune,
'Nam Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-namtuliem-mydinh1' AS id,
'  Mỹ Đình 1' AS commune,
'Nam Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-namtuliem-mydinh1' AS id,
'  Mỹ Đình 1' AS commune,
'Nam Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-namtuliem-mydinh2' AS id,
'  Mỹ Đình 2' AS commune,
'Nam Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-namtuliem-mydinh2' AS id,
'  Mỹ Đình 2' AS commune,
'Nam Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-namtuliem-phudo' AS id,
' Phú Đô' AS commune,
'Nam Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-namtuliem-phudo' AS id,
' Phú Đô' AS commune,
'Nam Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-namtuliem-metri' AS id,
' Mễ Trì' AS commune,
'Nam Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-namtuliem-metri' AS id,
' Mễ Trì' AS commune,
'Nam Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-namtuliem-trungvan' AS id,
' Trung Văn' AS commune,
'Nam Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-namtuliem-trungvan' AS id,
' Trung Văn' AS commune,
'Nam Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-namtuliem-daimo' AS id,
'  Đại Mỗ' AS commune,
'Nam Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-namtuliem-daimo' AS id,
'  Đại Mỗ' AS commune,
'Nam Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-namtuliem-taymo' AS id,
' Tây Mỗ' AS commune,
'Nam Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-namtuliem-taymo' AS id,
' Tây Mỗ' AS commune,
'Nam Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-namtuliem-phuongcanh' AS id,
'  Phương Canh' AS commune,
'Nam Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-namtuliem-phuongcanh' AS id,
'  Phương Canh' AS commune,
'Nam Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-namtuliem-xuanphuong' AS id,
'  Xuân Phương' AS commune,
'Nam Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-namtuliem-xuanphuong' AS id,
'  Xuân Phương' AS commune,
'Nam Từ Liêm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoangmai-hoangliet' AS id,
' Hoàng Liệt' AS commune,
'Hoàng Mai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoangmai-hoangliet' AS id,
' Hoàng Liệt' AS commune,
'Hoàng Mai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoangmai-yenso' AS id,
' Yên Sở' AS commune,
'Hoàng Mai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoangmai-yenso' AS id,
' Yên Sở' AS commune,
'Hoàng Mai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoangmai-vinhhung' AS id,
' Vĩnh Hưng' AS commune,
'Hoàng Mai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoangmai-vinhhung' AS id,
' Vĩnh Hưng' AS commune,
'Hoàng Mai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoangmai-dinhcong' AS id,
' Định Công' AS commune,
'Hoàng Mai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoangmai-dinhcong' AS id,
' Định Công' AS commune,
'Hoàng Mai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoangmai-daikim' AS id,
' Đại Kim' AS commune,
'Hoàng Mai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoangmai-daikim' AS id,
' Đại Kim' AS commune,
'Hoàng Mai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoangmai-thinhliet' AS id,
' Thịnh Liệt' AS commune,
'Hoàng Mai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoangmai-thinhliet' AS id,
' Thịnh Liệt' AS commune,
'Hoàng Mai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoangmai-thanhtri' AS id,
' Thanh Trì' AS commune,
'Hoàng Mai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoangmai-thanhtri' AS id,
' Thanh Trì' AS commune,
'Hoàng Mai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoangmai-linhnam' AS id,
' Lĩnh Nam' AS commune,
'Hoàng Mai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoangmai-linhnam' AS id,
' Lĩnh Nam' AS commune,
'Hoàng Mai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoangmai-tranphu' AS id,
' Trần Phú' AS commune,
'Hoàng Mai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoangmai-tranphu' AS id,
' Trần Phú' AS commune,
'Hoàng Mai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoangmai-maidong' AS id,
' Mai Động' AS commune,
'Hoàng Mai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoangmai-maidong' AS id,
' Mai Động' AS commune,
'Hoàng Mai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoangmai-tuongmai' AS id,
' Tương Mai' AS commune,
'Hoàng Mai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoangmai-tuongmai' AS id,
' Tương Mai' AS commune,
'Hoàng Mai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoangmai-tanmai' AS id,
' Tân Mai' AS commune,
'Hoàng Mai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoangmai-tanmai' AS id,
' Tân Mai' AS commune,
'Hoàng Mai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoangmai-giapbat' AS id,
' Giáp Bát' AS commune,
'Hoàng Mai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoangmai-giapbat' AS id,
' Giáp Bát' AS commune,
'Hoàng Mai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoangmai-hoangvanthu' AS id,
' Hoàng Văn Thụ' AS commune,
'Hoàng Mai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoangmai-hoangvanthu' AS id,
' Hoàng Văn Thụ' AS commune,
'Hoàng Mai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-longbien-bode' AS id,
' Bồ Đề' AS commune,
'Long Biên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-longbien-bode' AS id,
' Bồ Đề' AS commune,
'Long Biên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-longbien-cukhoi' AS id,
' Cự Khối' AS commune,
'Long Biên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-longbien-cukhoi' AS id,
' Cự Khối' AS commune,
'Long Biên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-longbien-ducgiang' AS id,
' Đức Giang' AS commune,
'Long Biên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-longbien-ducgiang' AS id,
' Đức Giang' AS commune,
'Long Biên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-longbien-giathuy' AS id,
' Gia Thụy' AS commune,
'Long Biên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-longbien-giathuy' AS id,
' Gia Thụy' AS commune,
'Long Biên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-longbien-giangbien' AS id,
' Giang Biên' AS commune,
'Long Biên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-longbien-giangbien' AS id,
' Giang Biên' AS commune,
'Long Biên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-longbien-longbien' AS id,
' Long Biên' AS commune,
'Long Biên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-longbien-longbien' AS id,
' Long Biên' AS commune,
'Long Biên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-longbien-ngoclam' AS id,
' Ngọc Lâm' AS commune,
'Long Biên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-longbien-ngoclam' AS id,
' Ngọc Lâm' AS commune,
'Long Biên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-longbien-ngocthuy' AS id,
' Ngọc Thụy' AS commune,
'Long Biên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-longbien-ngocthuy' AS id,
' Ngọc Thụy' AS commune,
'Long Biên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-longbien-phucdong' AS id,
'  Phúc Đồng' AS commune,
'Long Biên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-longbien-phucdong' AS id,
'  Phúc Đồng' AS commune,
'Long Biên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-longbien-phucloi' AS id,
'  Phúc Lợi' AS commune,
'Long Biên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-longbien-phucloi' AS id,
'  Phúc Lợi' AS commune,
'Long Biên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-longbien-saidong' AS id,
' Sài Đồng' AS commune,
'Long Biên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-longbien-saidong' AS id,
' Sài Đồng' AS commune,
'Long Biên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-longbien-thachban' AS id,
' Thạch Bàn' AS commune,
'Long Biên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-longbien-thachban' AS id,
' Thạch Bàn' AS commune,
'Long Biên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-longbien-thuongthanh' AS id,
' Thượng Thanh' AS commune,
'Long Biên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-longbien-thuongthanh' AS id,
' Thượng Thanh' AS commune,
'Long Biên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-longbien-viethung' AS id,
' Việt Hưng' AS commune,
'Long Biên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-longbien-viethung' AS id,
' Việt Hưng' AS commune,
'Long Biên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thanhxuan-hadinh' AS id,
' Hạ Đình' AS commune,
'Thanh Xuân' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thanhxuan-hadinh' AS id,
' Hạ Đình' AS commune,
'Thanh Xuân' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thanhxuan-kimgiang' AS id,
' Kim Giang' AS commune,
'Thanh Xuân' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thanhxuan-kimgiang' AS id,
' Kim Giang' AS commune,
'Thanh Xuân' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thanhxuan-khuongdinh' AS id,
' Khương Đình' AS commune,
'Thanh Xuân' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thanhxuan-khuongdinh' AS id,
' Khương Đình' AS commune,
'Thanh Xuân' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thanhxuan-khuongmai' AS id,
' Khương Mai' AS commune,
'Thanh Xuân' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thanhxuan-khuongmai' AS id,
' Khương Mai' AS commune,
'Thanh Xuân' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thanhxuan-khuongtrung' AS id,
' Khương Trung' AS commune,
'Thanh Xuân' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thanhxuan-khuongtrung' AS id,
' Khương Trung' AS commune,
'Thanh Xuân' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thanhxuan-nhanchinh' AS id,
' Nhân Chính' AS commune,
'Thanh Xuân' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thanhxuan-nhanchinh' AS id,
' Nhân Chính' AS commune,
'Thanh Xuân' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thanhxuan-phuongliet' AS id,
' Phương Liệt' AS commune,
'Thanh Xuân' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thanhxuan-phuongliet' AS id,
' Phương Liệt' AS commune,
'Thanh Xuân' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thanhxuan-thanhxuanbac' AS id,
' Thanh Xuân Bắc' AS commune,
'Thanh Xuân' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thanhxuan-thanhxuanbac' AS id,
' Thanh Xuân Bắc' AS commune,
'Thanh Xuân' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thanhxuan-thanhxuannam' AS id,
' Thanh Xuân Nam' AS commune,
'Thanh Xuân' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thanhxuan-thanhxuannam' AS id,
' Thanh Xuân Nam' AS commune,
'Thanh Xuân' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thanhxuan-thanhxuantrung' AS id,
' Thanh Xuân Trung' AS commune,
'Thanh Xuân' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thanhxuan-thanhxuantrung' AS id,
' Thanh Xuân Trung' AS commune,
'Thanh Xuân' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thanhxuan-thuongdinh' AS id,
' Thượng Đình' AS commune,
'Thanh Xuân' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thanhxuan-thuongdinh' AS id,
' Thượng Đình' AS commune,
'Thanh Xuân' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-badinh-congvi' AS id,
' Cống Vị' AS commune,
'Ba Đình' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-badinh-congvi' AS id,
' Cống Vị' AS commune,
'Ba Đình' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-badinh-dienbien' AS id,
' Điện Biên' AS commune,
'Ba Đình' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-badinh-dienbien' AS id,
' Điện Biên' AS commune,
'Ba Đình' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-badinh-doican' AS id,
' Đội Cấn' AS commune,
'Ba Đình' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-badinh-doican' AS id,
' Đội Cấn' AS commune,
'Ba Đình' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-badinh-giangvo' AS id,
' Giảng Võ' AS commune,
'Ba Đình' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-badinh-giangvo' AS id,
' Giảng Võ' AS commune,
'Ba Đình' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-badinh-kimma' AS id,
' Kim Mã' AS commune,
'Ba Đình' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-badinh-kimma' AS id,
' Kim Mã' AS commune,
'Ba Đình' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-badinh-lieugiai' AS id,
' Liễu Giai' AS commune,
'Ba Đình' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-badinh-lieugiai' AS id,
' Liễu Giai' AS commune,
'Ba Đình' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-badinh-ngocha' AS id,
' Ngọc Hà' AS commune,
'Ba Đình' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-badinh-ngocha' AS id,
' Ngọc Hà' AS commune,
'Ba Đình' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-badinh-ngockhanh' AS id,
' Ngọc Khánh' AS commune,
'Ba Đình' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-badinh-ngockhanh' AS id,
' Ngọc Khánh' AS commune,
'Ba Đình' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-badinh-nguyentrungtruc' AS id,
' Nguyễn Trung Trực' AS commune,
'Ba Đình' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-badinh-nguyentrungtruc' AS id,
' Nguyễn Trung Trực' AS commune,
'Ba Đình' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-badinh-phucxa' AS id,
' Phúc Xá' AS commune,
'Ba Đình' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-badinh-phucxa' AS id,
' Phúc Xá' AS commune,
'Ba Đình' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-badinh-quanthanh' AS id,
' Quán Thánh' AS commune,
'Ba Đình' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-badinh-quanthanh' AS id,
' Quán Thánh' AS commune,
'Ba Đình' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-badinh-thanhcong' AS id,
' Thành Công' AS commune,
'Ba Đình' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-badinh-thanhcong' AS id,
' Thành Công' AS commune,
'Ba Đình' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-badinh-trucbach' AS id,
' Trúc Bạch' AS commune,
'Ba Đình' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-badinh-trucbach' AS id,
' Trúc Bạch' AS commune,
'Ba Đình' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-badinh-vinhphuc' AS id,
' Vĩnh Phúc' AS commune,
'Ba Đình' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-badinh-vinhphuc' AS id,
' Vĩnh Phúc' AS commune,
'Ba Đình' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-caugiay-dichvong' AS id,
' Dịch Vọng' AS commune,
'Cầu Giấy' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-caugiay-dichvong' AS id,
' Dịch Vọng' AS commune,
'Cầu Giấy' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-caugiay-dichvonghau' AS id,
' Dịch Vọng Hậu' AS commune,
'Cầu Giấy' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-caugiay-dichvonghau' AS id,
' Dịch Vọng Hậu' AS commune,
'Cầu Giấy' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-caugiay-maidich' AS id,
' Mai Dịch' AS commune,
'Cầu Giấy' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-caugiay-maidich' AS id,
' Mai Dịch' AS commune,
'Cầu Giấy' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-caugiay-nghiado' AS id,
' Nghĩa Đô' AS commune,
'Cầu Giấy' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-caugiay-nghiado' AS id,
' Nghĩa Đô' AS commune,
'Cầu Giấy' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-caugiay-nghiatan' AS id,
' Nghĩa Tân' AS commune,
'Cầu Giấy' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-caugiay-nghiatan' AS id,
' Nghĩa Tân' AS commune,
'Cầu Giấy' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-caugiay-quanhoa' AS id,
' Quan Hoa' AS commune,
'Cầu Giấy' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-caugiay-quanhoa' AS id,
' Quan Hoa' AS commune,
'Cầu Giấy' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-caugiay-trunghoa' AS id,
' Trung Hòa' AS commune,
'Cầu Giấy' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-caugiay-trunghoa' AS id,
' Trung Hòa' AS commune,
'Cầu Giấy' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-caugiay-yenhoa' AS id,
' Yên Hòa' AS commune,
'Cầu Giấy' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-caugiay-yenhoa' AS id,
' Yên Hòa' AS commune,
'Cầu Giấy' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-catlinh' AS id,
' Cát Linh' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-catlinh' AS id,
' Cát Linh' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-vanmieu' AS id,
' Văn Miếu' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-vanmieu' AS id,
' Văn Miếu' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-quoctugiam' AS id,
' Quốc Tử Giám' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-quoctugiam' AS id,
' Quốc Tử Giám' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-langthuong' AS id,
' Láng Thượng' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-langthuong' AS id,
' Láng Thượng' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-ochodua' AS id,
' Ô Chợ Dừa' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-ochodua' AS id,
' Ô Chợ Dừa' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-vanchuong' AS id,
' Văn Chương' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-vanchuong' AS id,
' Văn Chương' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-hangbot' AS id,
' Hàng Bột' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-hangbot' AS id,
' Hàng Bột' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-langha' AS id,
' Láng Hạ' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-langha' AS id,
' Láng Hạ' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-khamthien' AS id,
' Khâm Thiên' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-khamthien' AS id,
' Khâm Thiên' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-thoquan' AS id,
' Thổ Quan' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-thoquan' AS id,
' Thổ Quan' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-namdong' AS id,
' Nam Đồng' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-namdong' AS id,
' Nam Đồng' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-trungphung' AS id,
' Trung Phụng' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-trungphung' AS id,
' Trung Phụng' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-quangtrung' AS id,
' Quang Trung' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-quangtrung' AS id,
' Quang Trung' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-trungliet' AS id,
' Trung Liệt' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-trungliet' AS id,
' Trung Liệt' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-phuonglien' AS id,
' Phương Liên' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-phuonglien' AS id,
' Phương Liên' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-thinhquang' AS id,
' Thịnh Quang' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-thinhquang' AS id,
' Thịnh Quang' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-trungtu' AS id,
' Trung Tự' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-trungtu' AS id,
' Trung Tự' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-kimlien' AS id,
' Kim Liên' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-kimlien' AS id,
' Kim Liên' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-phuongmai' AS id,
' Phương Mai' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-phuongmai' AS id,
' Phương Mai' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-ngatuso' AS id,
' Ngã Tư Sở' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-ngatuso' AS id,
' Ngã Tư Sở' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-khuongthuong' AS id,
' Khương Thượng' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-dongda-khuongthuong' AS id,
' Khương Thượng' AS commune,
'Đống Đa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-nguyendu' AS id,
' Nguyễn Du' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-nguyendu' AS id,
' Nguyễn Du' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-ledaihanh' AS id,
' Lê Đại Hành' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-ledaihanh' AS id,
' Lê Đại Hành' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-buithixuan' AS id,
' Bùi Thị Xuân' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-buithixuan' AS id,
' Bùi Thị Xuân' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-phohue' AS id,
' Phố Huế' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-phohue' AS id,
' Phố Huế' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-ngothinham' AS id,
' Ngô Thì Nhậm' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-ngothinham' AS id,
' Ngô Thì Nhậm' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-phamdinhho' AS id,
' Phạm Đình Hổ' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-phamdinhho' AS id,
' Phạm Đình Hổ' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-dongnhan' AS id,
' Đồng Nhân' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-dongnhan' AS id,
' Đồng Nhân' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-dongmac' AS id,
' Đống Mác' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-dongmac' AS id,
' Đống Mác' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-bachdang' AS id,
' Bạch Đằng' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-bachdang' AS id,
' Bạch Đằng' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-thanhluong' AS id,
' Thanh Lương' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-thanhluong' AS id,
' Thanh Lương' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-thanhnhan' AS id,
' Thanh Nhàn' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-thanhnhan' AS id,
' Thanh Nhàn' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-cauden' AS id,
' Cầu Dền' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-cauden' AS id,
' Cầu Dền' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-bachkhoa' AS id,
' Bách Khoa' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-bachkhoa' AS id,
' Bách Khoa' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-quynhloi' AS id,
' Quỳnh Lôi' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-quynhloi' AS id,
' Quỳnh Lôi' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-bachmai' AS id,
' Bạch Mai' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-bachmai' AS id,
' Bạch Mai' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-quynhmai' AS id,
' Quỳnh Mai' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-quynhmai' AS id,
' Quỳnh Mai' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-vinhtuy' AS id,
' Vĩnh Tuy' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-vinhtuy' AS id,
' Vĩnh Tuy' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-minhkhai' AS id,
' Minh Khai' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-minhkhai' AS id,
' Minh Khai' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-truongdinh' AS id,
' Trương Định' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-truongdinh' AS id,
' Trương Định' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-dongtam' AS id,
' Đồng Tâm' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-haibatrung-dongtam' AS id,
' Đồng Tâm' AS commune,
'Hai Bà Trưng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-chuongduong' AS id,
' Chương Dương' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-chuongduong' AS id,
' Chương Dương' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-cuadong' AS id,
' Cửa Đông' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-cuadong' AS id,
' Cửa Đông' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-cuanam' AS id,
' Cửa Nam' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-cuanam' AS id,
' Cửa Nam' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-dongxuan' AS id,
' Đồng Xuân' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-dongxuan' AS id,
' Đồng Xuân' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-hangbac' AS id,
' Hàng Bạc' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-hangbac' AS id,
' Hàng Bạc' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-hangbai' AS id,
' Hàng Bài' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-hangbai' AS id,
' Hàng Bài' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-hangbo' AS id,
' Hàng Bồ' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-hangbo' AS id,
' Hàng Bồ' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-hangbong' AS id,
' Hàng Bông' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-hangbong' AS id,
' Hàng Bông' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-hangbuom' AS id,
' Hàng Buồm' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-hangbuom' AS id,
' Hàng Buồm' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-hangdao' AS id,
' Hàng Đào' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-hangdao' AS id,
' Hàng Đào' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-hanggai' AS id,
' Hàng Gai' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-hanggai' AS id,
' Hàng Gai' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-hangma' AS id,
' Hàng Mã' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-hangma' AS id,
' Hàng Mã' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-hangtrong' AS id,
' Hàng Trống' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-hangtrong' AS id,
' Hàng Trống' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-lythaito' AS id,
' Lý Thái Tổ' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-lythaito' AS id,
' Lý Thái Tổ' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-phanchutrinh' AS id,
' Phan Chu Trinh' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-phanchutrinh' AS id,
' Phan Chu Trinh' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-phuctan' AS id,
' Phúc Tân' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-phuctan' AS id,
' Phúc Tân' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-tranhungdao' AS id,
' Trần Hưng Đạo' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-tranhungdao' AS id,
' Trần Hưng Đạo' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-trangtien' AS id,
' Tràng Tiền' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-trangtien' AS id,
' Tràng Tiền' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-biengiang' AS id,
' Biên Giang' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-biengiang' AS id,
' Biên Giang' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-dongmai' AS id,
' Đồng Mai' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-dongmai' AS id,
' Đồng Mai' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-yennghia' AS id,
' Yên Nghĩa' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-yennghia' AS id,
' Yên Nghĩa' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-duongnoi' AS id,
' Dương Nội' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-duongnoi' AS id,
' Dương Nội' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-hacau' AS id,
' Hà Cầu' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-hacau' AS id,
' Hà Cầu' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-lakhe' AS id,
' La Khê' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-lakhe' AS id,
' La Khê' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-molao' AS id,
' Mộ Lao' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-molao' AS id,
' Mộ Lao' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-nguyentrai' AS id,
' Nguyễn Trãi' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-nguyentrai' AS id,
' Nguyễn Trãi' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-phula' AS id,
' Phú La' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-phula' AS id,
' Phú La' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-phulam' AS id,
' Phú Lãm' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-phulam' AS id,
' Phú Lãm' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-phuluong' AS id,
' Phú Lương' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-phuluong' AS id,
' Phú Lương' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-kienhung' AS id,
' Kiến Hưng' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-kienhung' AS id,
' Kiến Hưng' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-phucla' AS id,
' Phúc La' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-phucla' AS id,
' Phúc La' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-quangtrung' AS id,
' Quang Trung' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-quangtrung' AS id,
' Quang Trung' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-vanphuc' AS id,
' Vạn Phúc' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-vanphuc' AS id,
' Vạn Phúc' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-vanquan' AS id,
' Văn Quán' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-vanquan' AS id,
' Văn Quán' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-yetkieu' AS id,
' Yết Kiêu' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-hoankiem-yetkieu' AS id,
' Yết Kiêu' AS commune,
'Hoàn Kiếm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-tayho-buoi' AS id,
' Bưởi' AS commune,
'Tây Hồ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-tayho-buoi' AS id,
' Bưởi' AS commune,
'Tây Hồ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-tayho-thuykhe' AS id,
' Thuỵ Khê' AS commune,
'Tây Hồ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-tayho-thuykhe' AS id,
' Thuỵ Khê' AS commune,
'Tây Hồ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-tayho-yenphu' AS id,
' Yên Phụ' AS commune,
'Tây Hồ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-tayho-yenphu' AS id,
' Yên Phụ' AS commune,
'Tây Hồ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-tayho-tulien' AS id,
' Tứ Liên' AS commune,
'Tây Hồ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-tayho-tulien' AS id,
' Tứ Liên' AS commune,
'Tây Hồ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-tayho-nhattan' AS id,
' Nhật Tân' AS commune,
'Tây Hồ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-tayho-nhattan' AS id,
' Nhật Tân' AS commune,
'Tây Hồ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-tayho-quangan' AS id,
' Quảng An' AS commune,
'Tây Hồ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-tayho-quangan' AS id,
' Quảng An' AS commune,
'Tây Hồ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-tayho-xuanla' AS id,
' Xuân La' AS commune,
'Tây Hồ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-tayho-xuanla' AS id,
' Xuân La' AS commune,
'Tây Hồ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-tayho-phuthuong' AS id,
' Phú Thượng' AS commune,
'Tây Hồ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-tayho-phuthuong' AS id,
' Phú Thượng' AS commune,
'Tây Hồ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendanphuong-thitranphung' AS id,
' Thị trấn Phùng' AS commune,
'Huyện Đan Phượng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendanphuong-thitranphung' AS id,
' Thị trấn Phùng' AS commune,
'Huyện Đan Phượng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendanphuong-xatrungchau' AS id,
' Xã Trung Châu' AS commune,
'Huyện Đan Phượng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendanphuong-xatrungchau' AS id,
' Xã Trung Châu' AS commune,
'Huyện Đan Phượng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendanphuong-xathoan' AS id,
' Xã Thọ An' AS commune,
'Huyện Đan Phượng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendanphuong-xathoan' AS id,
' Xã Thọ An' AS commune,
'Huyện Đan Phượng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendanphuong-xathoxuan' AS id,
' Xã Thọ Xuân' AS commune,
'Huyện Đan Phượng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendanphuong-xathoxuan' AS id,
' Xã Thọ Xuân' AS commune,
'Huyện Đan Phượng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendanphuong-xahongha' AS id,
' Xã Hồng Hà' AS commune,
'Huyện Đan Phượng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendanphuong-xahongha' AS id,
' Xã Hồng Hà' AS commune,
'Huyện Đan Phượng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendanphuong-xalienhong' AS id,
' Xã Liên Hồng' AS commune,
'Huyện Đan Phượng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendanphuong-xalienhong' AS id,
' Xã Liên Hồng' AS commune,
'Huyện Đan Phượng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendanphuong- xalienha' AS id,
' 	Xã Liên Hà' AS commune,
'Huyện Đan Phượng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendanphuong- xalienha' AS id,
' 	Xã Liên Hà' AS commune,
'Huyện Đan Phượng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendanphuong-xahamo' AS id,
' Xã Hạ Mỗ' AS commune,
'Huyện Đan Phượng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendanphuong-xahamo' AS id,
' Xã Hạ Mỗ' AS commune,
'Huyện Đan Phượng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendanphuong-xalientrung' AS id,
' Xã Liên Trung' AS commune,
'Huyện Đan Phượng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendanphuong-xalientrung' AS id,
' Xã Liên Trung' AS commune,
'Huyện Đan Phượng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendanphuong-xaphuongdinh' AS id,
' Xã Phương Đình' AS commune,
'Huyện Đan Phượng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendanphuong-xaphuongdinh' AS id,
' Xã Phương Đình' AS commune,
'Huyện Đan Phượng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendanphuong- xathuongmo' AS id,
' 	Xã Thượng Mỗ' AS commune,
'Huyện Đan Phượng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendanphuong- xathuongmo' AS id,
' 	Xã Thượng Mỗ' AS commune,
'Huyện Đan Phượng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendanphuong- xatanhoi' AS id,
' 	Xã Tân Hội' AS commune,
'Huyện Đan Phượng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendanphuong- xatanhoi' AS id,
' 	Xã Tân Hội' AS commune,
'Huyện Đan Phượng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendanphuong-xatanlap' AS id,
' Xã Tân Lập' AS commune,
'Huyện Đan Phượng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendanphuong-xatanlap' AS id,
' Xã Tân Lập' AS commune,
'Huyện Đan Phượng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendanphuong-xadanphuong' AS id,
' Xã Đan Phượng' AS commune,
'Huyện Đan Phượng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendanphuong-xadanphuong' AS id,
' Xã Đan Phượng' AS commune,
'Huyện Đan Phượng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendanphuong-xadongthap' AS id,
' Xã Đồng Tháp' AS commune,
'Huyện Đan Phượng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendanphuong-xadongthap' AS id,
' Xã Đồng Tháp' AS commune,
'Huyện Đan Phượng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendanphuong-xasongphuong' AS id,
' Xã Song Phượng' AS commune,
'Huyện Đan Phượng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendanphuong-xasongphuong' AS id,
' Xã Song Phượng' AS commune,
'Huyện Đan Phượng' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-thitranyenvien' AS id,
' Thị trấn Yên Viên' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-thitranyenvien' AS id,
' Thị trấn Yên Viên' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-thitrantrauquy' AS id,
' Thị trấn Trâu Quỳ' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-thitrantrauquy' AS id,
' Thị trấn Trâu Quỳ' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xayenthuong' AS id,
' Xã Yên Thường' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xayenthuong' AS id,
' Xã Yên Thường' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xayenvien' AS id,
' Xã Yên Viên' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xayenvien' AS id,
' Xã Yên Viên' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xaninhhiep' AS id,
' Xã Ninh Hiệp' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xaninhhiep' AS id,
' Xã Ninh Hiệp' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xadinhxuyen' AS id,
' Xã Đình Xuyên' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xadinhxuyen' AS id,
' Xã Đình Xuyên' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xaduongha' AS id,
' Xã Dương Hà' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xaduongha' AS id,
' Xã Dương Hà' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xaphudong' AS id,
' Xã Phù Đổng' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xaphudong' AS id,
' Xã Phù Đổng' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xatrungmau' AS id,
' Xã Trung Mầu' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xatrungmau' AS id,
' Xã Trung Mầu' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xalechi' AS id,
' Xã Lệ Chi' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xalechi' AS id,
' Xã Lệ Chi' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xacobi' AS id,
' Xã Cổ Bi' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xacobi' AS id,
' Xã Cổ Bi' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xadangxa' AS id,
' Xã Đặng Xá' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xadangxa' AS id,
' Xã Đặng Xá' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xaphuthi' AS id,
' Xã Phú Thị' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xaphuthi' AS id,
' Xã Phú Thị' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xakimson' AS id,
' Xã Kim Sơn' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xakimson' AS id,
' Xã Kim Sơn' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xaduongquang' AS id,
' Xã Dương Quang' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xaduongquang' AS id,
' Xã Dương Quang' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xaduongxa' AS id,
' Xã Dương Xá' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xaduongxa' AS id,
' Xã Dương Xá' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xadongdu' AS id,
' Xã Đông Dư' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xadongdu' AS id,
' Xã Đông Dư' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xadaton' AS id,
' Xã Đa Tốn' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xadaton' AS id,
' Xã Đa Tốn' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xakieuky' AS id,
' Xã Kiêu Kỵ' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xakieuky' AS id,
' Xã Kiêu Kỵ' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xabattrang' AS id,
' Xã Bát Tràng' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xabattrang' AS id,
' Xã Bát Tràng' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xakimlan' AS id,
' Xã Kim Lan' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xakimlan' AS id,
' Xã Kim Lan' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xavanduc' AS id,
' Xã Văn Đức' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyengialam-xavanduc' AS id,
' Xã Văn Đức' AS commune,
'Huyện Gia Lâm' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh- thitrandonganh' AS id,
' 	Thị trấn Đông Anh' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh- thitrandonganh' AS id,
' 	Thị trấn Đông Anh' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh- xavongla' AS id,
' 	Xã Võng La' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh- xavongla' AS id,
' 	Xã Võng La' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xatamxa' AS id,
' Xã Tầm Xá' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xatamxa' AS id,
' Xã Tầm Xá' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xamailam' AS id,
' Xã Mai Lâm' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xamailam' AS id,
' Xã Mai Lâm' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xadonghoi' AS id,
' Xã Đông Hội' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xadonghoi' AS id,
' Xã Đông Hội' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xaxuannon' AS id,
' Xã Xuân Nộn' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xaxuannon' AS id,
' Xã Xuân Nộn' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xathuylam' AS id,
' Xã Thuỵ Lâm' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xathuylam' AS id,
' Xã Thuỵ Lâm' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xabachong' AS id,
' Xã Bắc Hồng' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xabachong' AS id,
' Xã Bắc Hồng' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xanguyenkhe' AS id,
' Xã Nguyên Khê' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xanguyenkhe' AS id,
' Xã Nguyên Khê' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xanamhong' AS id,
' Xã Nam Hồng' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xanamhong' AS id,
' Xã Nam Hồng' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xatienduong' AS id,
' Xã Tiên Dương' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xatienduong' AS id,
' Xã Tiên Dương' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xavanha' AS id,
' Xã Vân Hà' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xavanha' AS id,
' Xã Vân Hà' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xauyno' AS id,
' Xã Uy Nỗ' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xauyno' AS id,
' Xã Uy Nỗ' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xavannoi' AS id,
' Xã Vân Nội' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xavannoi' AS id,
' Xã Vân Nội' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xalienha' AS id,
' Xã Liên Hà' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xalienha' AS id,
' Xã Liên Hà' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xaviethung' AS id,
' Xã Việt Hùng' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xaviethung' AS id,
' Xã Việt Hùng' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xakimno' AS id,
' Xã Kim Nỗ' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xakimno' AS id,
' Xã Kim Nỗ' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xakimchung' AS id,
' Xã Kim Chung' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xakimchung' AS id,
' Xã Kim Chung' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xaductu' AS id,
' Xã Dục Tú' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xaductu' AS id,
' Xã Dục Tú' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xadaimach' AS id,
' Xã Đại Mạch' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xadaimach' AS id,
' Xã Đại Mạch' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xavinhngoc' AS id,
' Xã Vĩnh Ngọc' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xavinhngoc' AS id,
' Xã Vĩnh Ngọc' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xacoloa' AS id,
' Xã Cổ Loa' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xacoloa' AS id,
' Xã Cổ Loa' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xahaiboi' AS id,
' Xã Hải Bối' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xahaiboi' AS id,
' Xã Hải Bối' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xaxuancanh' AS id,
' Xã Xuân Canh' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyendonganh-xaxuancanh' AS id,
' Xã Xuân Canh' AS commune,
'Huyện Đông Anh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-thitranchucson' AS id,
' Thị trấn Chúc Sơn' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-thitranchucson' AS id,
' Thị trấn Chúc Sơn' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-thitranxuanmai' AS id,
' Thị trấn Xuân Mai' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-thitranxuanmai' AS id,
' Thị trấn Xuân Mai' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xaphungchau' AS id,
' Xã Phụng Châu' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xaphungchau' AS id,
' Xã Phụng Châu' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xatienphuong' AS id,
' Xã Tiên Phương' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xatienphuong' AS id,
' Xã Tiên Phương' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xadongson' AS id,
' Xã Đông Sơn' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xadongson' AS id,
' Xã Đông Sơn' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xadongphuongyen' AS id,
' Xã Đông Phương Yên' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xadongphuongyen' AS id,
' Xã Đông Phương Yên' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xaphunghia' AS id,
' Xã Phú Nghĩa' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xaphunghia' AS id,
' Xã Phú Nghĩa' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xatruongyen' AS id,
' Xã Trường Yên' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xatruongyen' AS id,
' Xã Trường Yên' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xangochoa' AS id,
' Xã Ngọc Hòa' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xangochoa' AS id,
' Xã Ngọc Hòa' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xathuyxuantien' AS id,
' Xã Thủy Xuân Tiên' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xathuyxuantien' AS id,
' Xã Thủy Xuân Tiên' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy- xathanhbinh' AS id,
' 	Xã Thanh Bình' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy- xathanhbinh' AS id,
' 	Xã Thanh Bình' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xatrunghoa' AS id,
' Xã Trung Hòa' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xatrunghoa' AS id,
' Xã Trung Hòa' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xadaiyen' AS id,
' Xã Đại Yên' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xadaiyen' AS id,
' Xã Đại Yên' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xathuyhuong' AS id,
' Xã Thụy Hương' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xathuyhuong' AS id,
' Xã Thụy Hương' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xatotdong' AS id,
' Xã Tốt Động' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xatotdong' AS id,
' Xã Tốt Động' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xalamdien' AS id,
' Xã Lam Điền' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xalamdien' AS id,
' Xã Lam Điền' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xatantien' AS id,
' Xã Tân Tiến' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xatantien' AS id,
' Xã Tân Tiến' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xanamphuongtien' AS id,
' Xã Nam Phương Tiến' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xanamphuongtien' AS id,
' Xã Nam Phương Tiến' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xahopdong' AS id,
' Xã Hợp Đồng' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xahopdong' AS id,
' Xã Hợp Đồng' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xahoangvanthu' AS id,
' Xã Hoàng Văn Thụ' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xahoangvanthu' AS id,
' Xã Hoàng Văn Thụ' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy- xahoangdieu' AS id,
' 	Xã Hoàng Diệu' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy- xahoangdieu' AS id,
' 	Xã Hoàng Diệu' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xahuuvan' AS id,
' Xã Hữu Văn' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xahuuvan' AS id,
' Xã Hữu Văn' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xaquangbi' AS id,
' Xã Quảng Bị' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xaquangbi' AS id,
' Xã Quảng Bị' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xamyluong' AS id,
' Xã Mỹ Lương' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xamyluong' AS id,
' Xã Mỹ Lương' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xathuongvuc' AS id,
' Xã Thượng Vực' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xathuongvuc' AS id,
' Xã Thượng Vực' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xahongphong' AS id,
' Xã Hồng Phong' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xahongphong' AS id,
' Xã Hồng Phong' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xadongphu' AS id,
' Xã Đồng Phú' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xadongphu' AS id,
' Xã Đồng Phú' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xatranphu' AS id,
' Xã Trần Phú' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xatranphu' AS id,
' Xã Trần Phú' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xavanvo' AS id,
' Xã Văn Võ' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xavanvo' AS id,
' Xã Văn Võ' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xadonglac' AS id,
' Xã Đồng Lạc' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xadonglac' AS id,
' Xã Đồng Lạc' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xahoachinh' AS id,
' Xã Hòa Chính' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xahoachinh' AS id,
' Xã Hòa Chính' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xaphunaman' AS id,
' Xã Phú Nam An' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenchuongmy-xaphunaman' AS id,
' Xã Phú Nam An' AS commune,
'Huyện Chương Mỹ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-thitrantramtroi' AS id,
' Thị trấn Trạm Trôi' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-thitrantramtroi' AS id,
' Thị trấn Trạm Trôi' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-xaducthuong' AS id,
' Xã Đức Thượng' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-xaducthuong' AS id,
' Xã Đức Thượng' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc- xaminhkhai' AS id,
' 	Xã Minh Khai' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc- xaminhkhai' AS id,
' 	Xã Minh Khai' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-xaduonglieu' AS id,
' Xã Dương Liễu' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-xaduonglieu' AS id,
' Xã Dương Liễu' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-xaditrach' AS id,
' Xã Di Trạch' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-xaditrach' AS id,
' Xã Di Trạch' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-xaducgiang' AS id,
' Xã Đức Giang' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-xaducgiang' AS id,
' Xã Đức Giang' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-xacatque' AS id,
' Xã Cát Quế' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-xacatque' AS id,
' Xã Cát Quế' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-xakimchung' AS id,
' Xã Kim Chung' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-xakimchung' AS id,
' Xã Kim Chung' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-xayenso' AS id,
' Xã Yên Sở' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-xayenso' AS id,
' Xã Yên Sở' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-xasondong' AS id,
' Xã Sơn Đồng' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-xasondong' AS id,
' Xã Sơn Đồng' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-xavancanh' AS id,
' Xã Vân Canh' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-xavancanh' AS id,
' Xã Vân Canh' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-xadacso' AS id,
' Xã Đắc Sở' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-xadacso' AS id,
' Xã Đắc Sở' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-xalaiyen' AS id,
' Xã Lại Yên' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-xalaiyen' AS id,
' Xã Lại Yên' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc- xatienyen' AS id,
' 	Xã Tiền Yên' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc- xatienyen' AS id,
' 	Xã Tiền Yên' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-xasongphuong' AS id,
' Xã Song Phương' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-xasongphuong' AS id,
' Xã Song Phương' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-xaankhanh' AS id,
' Xã An Khánh' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-xaankhanh' AS id,
' Xã An Khánh' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc- xaanthuong' AS id,
' 	Xã An Thượng' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc- xaanthuong' AS id,
' 	Xã An Thượng' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-xavancon' AS id,
' Xã Vân Côn' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-xavancon' AS id,
' Xã Vân Côn' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-xalaphu' AS id,
' Xã La Phù' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-xalaphu' AS id,
' Xã La Phù' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-xadongla' AS id,
' Xã Đông La' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenhoaiduc-xadongla' AS id,
' Xã Đông La' AS commune,
'Huyện Hoài Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-thitrantaydang' AS id,
' Thị trấn Tây Đằng' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-thitrantaydang' AS id,
' Thị trấn Tây Đằng' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xaphucuong' AS id,
' Xã Phú Cường' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xaphucuong' AS id,
' Xã Phú Cường' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi- xacodo' AS id,
' 	Xã Cổ Đô' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi- xacodo' AS id,
' 	Xã Cổ Đô' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xatanhong' AS id,
' Xã Tản Hồng' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xatanhong' AS id,
' Xã Tản Hồng' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xavanthang' AS id,
' Xã Vạn Thắng' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xavanthang' AS id,
' Xã Vạn Thắng' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xachauson' AS id,
' Xã Châu Sơn' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xachauson' AS id,
' Xã Châu Sơn' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xaphongvan' AS id,
' Xã Phong Vân' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xaphongvan' AS id,
' Xã Phong Vân' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xaphudong' AS id,
' Xã Phú Đông' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xaphudong' AS id,
' Xã Phú Đông' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xaphuphuong' AS id,
' Xã Phú Phương' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xaphuphuong' AS id,
' Xã Phú Phương' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xaphuchau' AS id,
' Xã Phú Châu' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xaphuchau' AS id,
' Xã Phú Châu' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xathaihoa' AS id,
' Xã Thái Hòa' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xathaihoa' AS id,
' Xã Thái Hòa' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xadongthai' AS id,
' Xã Đồng Thái' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xadongthai' AS id,
' Xã Đồng Thái' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xaphuson' AS id,
' Xã Phú Sơn' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xaphuson' AS id,
' Xã Phú Sơn' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xaminhchau' AS id,
' Xã Minh Châu' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xaminhchau' AS id,
' Xã Minh Châu' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xavatlai' AS id,
' Xã Vật Lại' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xavatlai' AS id,
' Xã Vật Lại' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xachuminh' AS id,
' Xã Chu Minh' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xachuminh' AS id,
' Xã Chu Minh' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xatongbat' AS id,
' Xã Tòng Bạt' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xatongbat' AS id,
' Xã Tòng Bạt' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xacamlinh' AS id,
' Xã Cẩm Lĩnh' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xacamlinh' AS id,
' Xã Cẩm Lĩnh' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xasonda' AS id,
' Xã Sơn Đà' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xasonda' AS id,
' Xã Sơn Đà' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xadongquang' AS id,
' Xã Đông Quang' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xadongquang' AS id,
' Xã Đông Quang' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xatienphong' AS id,
' Xã Tiên Phong' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xatienphong' AS id,
' Xã Tiên Phong' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xathuyan' AS id,
' Xã Thụy An' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xathuyan' AS id,
' Xã Thụy An' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi- xacamthuong' AS id,
' 	Xã Cam Thượng' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi- xacamthuong' AS id,
' 	Xã Cam Thượng' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xathuanmy' AS id,
' Xã Thuần Mỹ' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xathuanmy' AS id,
' Xã Thuần Mỹ' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xatanlinh' AS id,
' Xã Tản Lĩnh' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xatanlinh' AS id,
' Xã Tản Lĩnh' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xabatrai' AS id,
' Xã Ba Trại' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xabatrai' AS id,
' Xã Ba Trại' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xaminhquang' AS id,
' Xã Minh Quang' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xaminhquang' AS id,
' Xã Minh Quang' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xabavi' AS id,
' Xã Ba Vì' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xabavi' AS id,
' Xã Ba Vì' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xavanhoa' AS id,
' Xã Vân Hòa' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xavanhoa' AS id,
' Xã Vân Hòa' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xayenbai' AS id,
'         Xã Yên Bài' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xayenbai' AS id,
'         Xã Yên Bài' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xakhanhthuong' AS id,
' Xã Khánh Thượng' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenbavi-xakhanhthuong' AS id,
' Xã Khánh Thượng' AS commune,
'Huyện Ba Vì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-thitrandainghia' AS id,
' Thị trấn Đại Nghĩa' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-thitrandainghia' AS id,
' Thị trấn Đại Nghĩa' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xahoptien' AS id,
' Xã Hợp Tiến' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xahoptien' AS id,
' Xã Hợp Tiến' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xahopthanh' AS id,
' Xã Hợp Thanh' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xahopthanh' AS id,
' Xã Hợp Thanh' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xaanphu' AS id,
' Xã An Phú' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xaanphu' AS id,
' Xã An Phú' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xadongtam' AS id,
' Xã Đồng Tâm' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xadongtam' AS id,
' Xã Đồng Tâm' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xathuonglam' AS id,
' Xã Thượng Lâm' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xathuonglam' AS id,
' Xã Thượng Lâm' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xatuylai' AS id,
' Xã Tuy Lai' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xatuylai' AS id,
' Xã Tuy Lai' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xaphuclam' AS id,
' Xã Phúc Lâm' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xaphuclam' AS id,
' Xã Phúc Lâm' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xamythanh' AS id,
' Xã Mỹ Thành' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xamythanh' AS id,
' Xã Mỹ Thành' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xabotxuyen' AS id,
' Xã Bột Xuyên' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xabotxuyen' AS id,
' Xã Bột Xuyên' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xaanmy' AS id,
' Xã An Mỹ' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xaanmy' AS id,
' Xã An Mỹ' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xahongson' AS id,
' Xã Hồng Sơn' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xahongson' AS id,
' Xã Hồng Sơn' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xalethanh' AS id,
' Xã Lê Thanh' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xalethanh' AS id,
' Xã Lê Thanh' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc- xaxuyxa' AS id,
' 	Xã Xuy Xá' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc- xaxuyxa' AS id,
' 	Xã Xuy Xá' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xaphungxa' AS id,
' Xã Phùng Xá' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xaphungxa' AS id,
' Xã Phùng Xá' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xaphuluute' AS id,
' Xã Phù Lưu Tế' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xaphuluute' AS id,
' Xã Phù Lưu Tế' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xadaihung' AS id,
' Xã Đại Hưng' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xadaihung' AS id,
' Xã Đại Hưng' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc- xavankim' AS id,
' 	Xã Vạn Kim' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc- xavankim' AS id,
' 	Xã Vạn Kim' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xadoctin' AS id,
' Xã Đốc Tín' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xadoctin' AS id,
' Xã Đốc Tín' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xahuongson' AS id,
' Xã Hương Sơn' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xahuongson' AS id,
' Xã Hương Sơn' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xahungtien' AS id,
' Xã Hùng Tiến' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xahungtien' AS id,
' Xã Hùng Tiến' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xaantien' AS id,
' Xã An Tiến' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmyduc-xaantien' AS id,
' Xã An Tiến' AS commune,
'Huyện Mỹ Đức' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-thitranphuctho' AS id,
' Thị trấn Phúc Thọ' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-thitranphuctho' AS id,
' Thị trấn Phúc Thọ' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xaphuongdo' AS id,
' Xã Phương Độ' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xaphuongdo' AS id,
' Xã Phương Độ' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xasenchieu' AS id,
' Xã Sen Chiểu' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xasenchieu' AS id,
' Xã Sen Chiểu' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xacamdinh' AS id,
' Xã Cẩm Đình' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xacamdinh' AS id,
' Xã Cẩm Đình' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xavongxuyen' AS id,
' Xã Võng Xuyên' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xavongxuyen' AS id,
' Xã Võng Xuyên' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xatholoc' AS id,
' Xã Thọ Lộc' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xatholoc' AS id,
' Xã Thọ Lộc' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xalongxuyen' AS id,
' Xã Long Xuyên' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xalongxuyen' AS id,
' Xã Long Xuyên' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xathuongcoc' AS id,
' Xã Thượng Cốc' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xathuongcoc' AS id,
' Xã Thượng Cốc' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xahatmon' AS id,
' Xã Hát Môn' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xahatmon' AS id,
' Xã Hát Môn' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xatichgiang' AS id,
' Xã Tích Giang' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xatichgiang' AS id,
' Xã Tích Giang' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xathanhda' AS id,
' Xã Thanh Đa' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xathanhda' AS id,
' Xã Thanh Đa' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xatrachmyloc' AS id,
' Xã Trạch Mỹ Lộc' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xatrachmyloc' AS id,
' Xã Trạch Mỹ Lộc' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xaphuchoa' AS id,
' Xã Phúc Hòa' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xaphuchoa' AS id,
' Xã Phúc Hòa' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xangoctao' AS id,
' Xã Ngọc Tảo' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xangoctao' AS id,
' Xã Ngọc Tảo' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xaphungthuong' AS id,
' Xã Phụng Thượng' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xaphungthuong' AS id,
' Xã Phụng Thượng' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xatamthuan' AS id,
' Xã Tam Thuấn' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xatamthuan' AS id,
' Xã Tam Thuấn' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xatamhiep' AS id,
' Xã Tam Hiệp' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xatamhiep' AS id,
' Xã Tam Hiệp' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xahiepthuan' AS id,
' Xã Hiệp Thuận' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xahiepthuan' AS id,
' Xã Hiệp Thuận' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xalienhiep' AS id,
' Xã Liên Hiệp' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xalienhiep' AS id,
' Xã Liên Hiệp' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xavanha' AS id,
' Xã Vân Hà' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xavanha' AS id,
' Xã Vân Hà' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xavanphuc' AS id,
' Xã Vân Phúc' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xavanphuc' AS id,
' Xã Vân Phúc' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xavannam' AS id,
' Xã Vân Nam' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xavannam' AS id,
' Xã Vân Nam' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xaxuanphu' AS id,
' Xã Xuân Phú' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuctho-xaxuanphu' AS id,
' Xã Xuân Phú' AS commune,
'Huyện Phúc Thọ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-thitranlienquan' AS id,
' Thị trấn Liên Quan' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-thitranlienquan' AS id,
' Thị trấn Liên Quan' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xachangson' AS id,
' Xã Chàng Sơn' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xachangson' AS id,
' Xã Chàng Sơn' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xathachhoa' AS id,
' Xã Thạch Hoà' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xathachhoa' AS id,
' Xã Thạch Hoà' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xacankiem' AS id,
' Xã Cần Kiệm' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xacankiem' AS id,
' Xã Cần Kiệm' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xahuubang' AS id,
' Xã Hữu Bằng' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xahuubang' AS id,
' Xã Hữu Bằng' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xaphungxa' AS id,
' Xã Phùng Xá' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xaphungxa' AS id,
' Xã Phùng Xá' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xatanxa' AS id,
' Xã Tân Xã' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xatanxa' AS id,
' Xã Tân Xã' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xathachxa' AS id,
' Xã Thạch Xá' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xathachxa' AS id,
' Xã Thạch Xá' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xabinhphu' AS id,
' Xã Bình Phú' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xabinhphu' AS id,
' Xã Bình Phú' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xahabang' AS id,
' Xã Hạ Bằng' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xahabang' AS id,
' Xã Hạ Bằng' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xadongtruc' AS id,
' Xã Đồng Trúc' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xadongtruc' AS id,
' Xã Đồng Trúc' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xayentrung' AS id,
' Xã Yên Trung' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xayentrung' AS id,
' Xã Yên Trung' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xayenbinh' AS id,
' Xã Yên Bình' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xayenbinh' AS id,
' Xã Yên Bình' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xatienxuan' AS id,
' Xã Tiến Xuân' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xatienxuan' AS id,
' Xã Tiến Xuân' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xadaidong' AS id,
' Xã Đại Đồng' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xadaidong' AS id,
' Xã Đại Đồng' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xacamyen' AS id,
' Xã Cẩm Yên' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xacamyen' AS id,
' Xã Cẩm Yên' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xalaithuong' AS id,
' Xã Lại Thượng' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xalaithuong' AS id,
' Xã Lại Thượng' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xaphukim' AS id,
' Xã Phú Kim' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xaphukim' AS id,
' Xã Phú Kim' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xahuongngai' AS id,
' Xã Hương Ngải' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xahuongngai' AS id,
' Xã Hương Ngải' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xacanhnau' AS id,
' Xã Canh Nậu' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xacanhnau' AS id,
' Xã Canh Nậu' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xakimquan' AS id,
' Xã Kim Quan' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xakimquan' AS id,
' Xã Kim Quan' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xadinau' AS id,
' Xã Dị Nậu' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xadinau' AS id,
' Xã Dị Nậu' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xabinhyen' AS id,
' Xã Bình Yên' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthachthat-xabinhyen' AS id,
' Xã Bình Yên' AS commune,
'Huyện Thạch Thất' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-thitranquocoai' AS id,
' Thị trấn Quốc Oai' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-thitranquocoai' AS id,
' Thị trấn Quốc Oai' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xadongxuan' AS id,
' Xã Đông Xuân' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xadongxuan' AS id,
' Xã Đông Xuân' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xasaison' AS id,
' Xã Sài Sơn' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xasaison' AS id,
' Xã Sài Sơn' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xaphuongcach' AS id,
' Xã Phượng Cách' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xaphuongcach' AS id,
' Xã Phượng Cách' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xayenson' AS id,
' Xã Yên Sơn' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xayenson' AS id,
' Xã Yên Sơn' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xangocliep' AS id,
' Xã Ngọc Liệp' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xangocliep' AS id,
' Xã Ngọc Liệp' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xangocmy' AS id,
' Xã Ngọc Mỹ' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xangocmy' AS id,
' Xã Ngọc Mỹ' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xalieptuyet' AS id,
' Xã Liệp Tuyết' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xalieptuyet' AS id,
' Xã Liệp Tuyết' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xathachthan' AS id,
' Xã Thạch Thán' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xathachthan' AS id,
' Xã Thạch Thán' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xadongquang' AS id,
' Xã Đồng Quang' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xadongquang' AS id,
' Xã Đồng Quang' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xaphucat' AS id,
' Xã Phú Cát' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xaphucat' AS id,
' Xã Phú Cát' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xatuyetnghia' AS id,
' Xã Tuyết Nghĩa' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xatuyetnghia' AS id,
' Xã Tuyết Nghĩa' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xanghiahuong' AS id,
' Xã Nghĩa Hương' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xanghiahuong' AS id,
' Xã Nghĩa Hương' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xaconghoa' AS id,
' Xã Cộng Hòa' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xaconghoa' AS id,
' Xã Cộng Hòa' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xatanphu' AS id,
' Xã Tân Phú' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xatanphu' AS id,
' Xã Tân Phú' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xadaithanh' AS id,
' Xã Đại Thành' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xadaithanh' AS id,
' Xã Đại Thành' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xaphuman' AS id,
' Xã Phú Mãn' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xaphuman' AS id,
' Xã Phú Mãn' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xacanhuu' AS id,
' Xã Cấn Hữu' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xacanhuu' AS id,
' Xã Cấn Hữu' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xatanhoa' AS id,
' Xã Tân Hòa' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xatanhoa' AS id,
' Xã Tân Hòa' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xahoathach' AS id,
' Xã Hòa Thạch' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xahoathach' AS id,
' Xã Hòa Thạch' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xadongyen' AS id,
' Xã Đông Yên' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenquocoai-xadongyen' AS id,
' Xã Đông Yên' AS commune,
'Huyện Quốc Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhtri-thitranvandien' AS id,
' Thị trấn Văn Điển' AS commune,
'Huyện Thanh Trì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhtri-thitranvandien' AS id,
' Thị trấn Văn Điển' AS commune,
'Huyện Thanh Trì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhtri-xatantrieu' AS id,
' Xã Tân Triều' AS commune,
'Huyện Thanh Trì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhtri-xatantrieu' AS id,
' Xã Tân Triều' AS commune,
'Huyện Thanh Trì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhtri-xathanhliet' AS id,
' Xã Thanh Liệt' AS commune,
'Huyện Thanh Trì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhtri-xathanhliet' AS id,
' Xã Thanh Liệt' AS commune,
'Huyện Thanh Trì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhtri-xatathanhoai' AS id,
' Xã Tả Thanh Oai' AS commune,
'Huyện Thanh Trì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhtri-xatathanhoai' AS id,
' Xã Tả Thanh Oai' AS commune,
'Huyện Thanh Trì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhtri-xahuuhoa' AS id,
' Xã Hữu Hoà' AS commune,
'Huyện Thanh Trì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhtri-xahuuhoa' AS id,
' Xã Hữu Hoà' AS commune,
'Huyện Thanh Trì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhtri-xatamhiep' AS id,
' Xã Tam Hiệp' AS commune,
'Huyện Thanh Trì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhtri-xatamhiep' AS id,
' Xã Tam Hiệp' AS commune,
'Huyện Thanh Trì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhtri-xatuhiep' AS id,
' Xã Tứ Hiệp' AS commune,
'Huyện Thanh Trì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhtri-xatuhiep' AS id,
' Xã Tứ Hiệp' AS commune,
'Huyện Thanh Trì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhtri-xayenmy' AS id,
' Xã Yên Mỹ' AS commune,
'Huyện Thanh Trì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhtri-xayenmy' AS id,
' Xã Yên Mỹ' AS commune,
'Huyện Thanh Trì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhtri-xavinhquynh' AS id,
' Xã Vĩnh Quỳnh' AS commune,
'Huyện Thanh Trì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhtri-xavinhquynh' AS id,
' Xã Vĩnh Quỳnh' AS commune,
'Huyện Thanh Trì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhtri-xanguhiep' AS id,
' Xã Ngũ Hiệp' AS commune,
'Huyện Thanh Trì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhtri-xanguhiep' AS id,
' Xã Ngũ Hiệp' AS commune,
'Huyện Thanh Trì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhtri-xaduyenha' AS id,
' Xã Duyên Hà' AS commune,
'Huyện Thanh Trì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhtri-xaduyenha' AS id,
' Xã Duyên Hà' AS commune,
'Huyện Thanh Trì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhtri-xangochoi' AS id,
' Xã Ngọc Hồi' AS commune,
'Huyện Thanh Trì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhtri-xangochoi' AS id,
' Xã Ngọc Hồi' AS commune,
'Huyện Thanh Trì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhtri-xavanphuc' AS id,
' Xã Vạn Phúc' AS commune,
'Huyện Thanh Trì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhtri-xavanphuc' AS id,
' Xã Vạn Phúc' AS commune,
'Huyện Thanh Trì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhtri-xadaiang' AS id,
' Xã Đại áng' AS commune,
'Huyện Thanh Trì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhtri-xadaiang' AS id,
' Xã Đại áng' AS commune,
'Huyện Thanh Trì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhtri-xalienninh' AS id,
' Xã Liên Ninh' AS commune,
'Huyện Thanh Trì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhtri-xalienninh' AS id,
' Xã Liên Ninh' AS commune,
'Huyện Thanh Trì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhtri-xadongmy' AS id,
' Xã Đông Mỹ' AS commune,
'Huyện Thanh Trì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhtri-xadongmy' AS id,
' Xã Đông Mỹ' AS commune,
'Huyện Thanh Trì' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-thitranthuongtin' AS id,
' Thị trấn Thường Tín' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-thitranthuongtin' AS id,
' Thị trấn Thường Tín' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xatanminh' AS id,
' Xã Tân Minh' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xatanminh' AS id,
' Xã Tân Minh' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xaleloi' AS id,
' Xã Lê Lợi' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xaleloi' AS id,
' Xã Lê Lợi' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xathangloi' AS id,
' Xã Thắng Lợi' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xathangloi' AS id,
' Xã Thắng Lợi' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xadungtien' AS id,
' Xã Dũng Tiến' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xadungtien' AS id,
' Xã Dũng Tiến' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xathongnhat' AS id,
' Xã Thống Nhất' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xathongnhat' AS id,
' Xã Thống Nhất' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xanghiemxuyen' AS id,
' Xã Nghiêm Xuyên' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xanghiemxuyen' AS id,
' Xã Nghiêm Xuyên' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xatohieu' AS id,
' Xã Tô Hiệu' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xatohieu' AS id,
' Xã Tô Hiệu' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xavantu' AS id,
' Xã Văn Tự' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xavantu' AS id,
' Xã Văn Tự' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xavandiem' AS id,
' Xã Vạn Điểm' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xavandiem' AS id,
' Xã Vạn Điểm' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xaminhcuong' AS id,
' Xã Minh Cường' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xaminhcuong' AS id,
' Xã Minh Cường' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xaninhso' AS id,
' Xã Ninh Sở' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xaninhso' AS id,
' Xã Ninh Sở' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xanhikhe' AS id,
' Xã Nhị Khê' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xanhikhe' AS id,
' Xã Nhị Khê' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xaduyenthai' AS id,
' Xã Duyên Thái' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xaduyenthai' AS id,
' Xã Duyên Thái' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xakhanhha' AS id,
' Xã Khánh Hà' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xakhanhha' AS id,
' Xã Khánh Hà' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xahoabinh' AS id,
' Xã Hòa Bình' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xahoabinh' AS id,
' Xã Hòa Bình' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xavanbinh' AS id,
' Xã Văn Bình' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xavanbinh' AS id,
' Xã Văn Bình' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xahiengiang' AS id,
' Xã Hiền Giang' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xahiengiang' AS id,
' Xã Hiền Giang' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xahongvan' AS id,
' Xã Hồng Vân' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xahongvan' AS id,
' Xã Hồng Vân' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xavantao' AS id,
' Xã Vân Tảo' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xavantao' AS id,
' Xã Vân Tảo' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xalienphuong' AS id,
' Xã Liên Phương' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xalienphuong' AS id,
' Xã Liên Phương' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xavanphu' AS id,
' Xã Văn Phú' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xavanphu' AS id,
' Xã Văn Phú' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xatunhien' AS id,
' Xã Tự Nhiên' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xatunhien' AS id,
' Xã Tự Nhiên' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xatienphong' AS id,
' Xã Tiền Phong' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xatienphong' AS id,
' Xã Tiền Phong' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xahahoi' AS id,
' Xã Hà Hồi' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xahahoi' AS id,
' Xã Hà Hồi' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xathuphu' AS id,
' Xã Thư Phú' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xathuphu' AS id,
' Xã Thư Phú' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xanguyentrai' AS id,
' Xã Nguyễn Trãi' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xanguyentrai' AS id,
' Xã Nguyễn Trãi' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xaquatdong' AS id,
' Xã Quất Động' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xaquatdong' AS id,
' Xã Quất Động' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xachuongduong' AS id,
' Xã Chương Dương' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthuongtin-xachuongduong' AS id,
' Xã Chương Dương' AS commune,
'Huyện Thường Tín' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-thitrankimbai' AS id,
' Thị trấn Kim Bài' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-thitrankimbai' AS id,
' Thị trấn Kim Bài' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xacukhe' AS id,
' Xã Cự Khê' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xacukhe' AS id,
' Xã Cự Khê' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xabichhoa' AS id,
' Xã Bích Hòa' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xabichhoa' AS id,
' Xã Bích Hòa' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xamyhung' AS id,
' Xã Mỹ Hưng' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xamyhung' AS id,
' Xã Mỹ Hưng' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xacaovien' AS id,
' Xã Cao Viên' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xacaovien' AS id,
' Xã Cao Viên' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xabinhminh' AS id,
' Xã Bình Minh' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xabinhminh' AS id,
' Xã Bình Minh' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xatamhung' AS id,
' Xã Tam Hưng' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xatamhung' AS id,
' Xã Tam Hưng' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xathanhcao' AS id,
' Xã Thanh Cao' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xathanhcao' AS id,
' Xã Thanh Cao' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xathanhthuy' AS id,
' Xã Thanh Thùy' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xathanhthuy' AS id,
' Xã Thanh Thùy' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xathanhmai' AS id,
' Xã Thanh Mai' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xathanhmai' AS id,
' Xã Thanh Mai' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xathanhvan' AS id,
' Xã Thanh Văn' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xathanhvan' AS id,
' Xã Thanh Văn' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xadodong' AS id,
' Xã Đỗ Động' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xadodong' AS id,
' Xã Đỗ Động' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xakiman' AS id,
' Xã Kim An' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xakiman' AS id,
' Xã Kim An' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xakimthu' AS id,
' Xã Kim Thư' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xakimthu' AS id,
' Xã Kim Thư' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xaphuongtrung' AS id,
' Xã Phương Trung' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xaphuongtrung' AS id,
' Xã Phương Trung' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xatanuoc' AS id,
' Xã Tân Ước' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xatanuoc' AS id,
' Xã Tân Ước' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xadanhoa' AS id,
' Xã Dân Hòa' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xadanhoa' AS id,
' Xã Dân Hòa' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xalienchau' AS id,
' Xã Liên Châu' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xalienchau' AS id,
' Xã Liên Châu' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xacaoduong' AS id,
' Xã Cao Dương' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xacaoduong' AS id,
' Xã Cao Dương' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xaxuanduong' AS id,
' Xã Xuân Dương' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xaxuanduong' AS id,
' Xã Xuân Dương' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xahongduong' AS id,
' Xã Hồng Dương' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenthanhoai-xahongduong' AS id,
' Xã Hồng Dương' AS commune,
'Huyện Thanh Oai' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-thitranphuminh' AS id,
' Thị trấn Phú Minh' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-thitranphuminh' AS id,
' Thị trấn Phú Minh' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-thitranphuxuyen' AS id,
' Thị trấn Phú Xuyên' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-thitranphuxuyen' AS id,
' Thị trấn Phú Xuyên' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xahongminh' AS id,
' Xã Hồng Minh' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xahongminh' AS id,
' Xã Hồng Minh' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xaphuongduc' AS id,
' Xã Phượng Dực' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xaphuongduc' AS id,
' Xã Phượng Dực' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xavannhan' AS id,
' Xã Văn Nhân' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xavannhan' AS id,
' Xã Văn Nhân' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xathuyphu' AS id,
' Xã Thụy Phú' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xathuyphu' AS id,
' Xã Thụy Phú' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xatritrung' AS id,
' Xã Tri Trung' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xatritrung' AS id,
' Xã Tri Trung' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xadaithang' AS id,
' Xã Đại Thắng' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xadaithang' AS id,
' Xã Đại Thắng' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xaphutuc' AS id,
' Xã Phú Túc' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xaphutuc' AS id,
' Xã Phú Túc' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xavanhoang' AS id,
' Xã Văn Hoàng' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xavanhoang' AS id,
' Xã Văn Hoàng' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xahongthai' AS id,
' Xã Hồng Thái' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xahongthai' AS id,
' Xã Hồng Thái' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xahoanglong' AS id,
' Xã Hoàng Long' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xahoanglong' AS id,
' Xã Hoàng Long' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xaquangtrung' AS id,
' Xã Quang Trung' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xaquangtrung' AS id,
' Xã Quang Trung' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xanamphong' AS id,
' Xã Nam Phong' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xanamphong' AS id,
' Xã Nam Phong' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xanamtrieu' AS id,
' Xã Nam Triều' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xanamtrieu' AS id,
' Xã Nam Triều' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xatandan' AS id,
' Xã Tân Dân' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xatandan' AS id,
' Xã Tân Dân' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xasonha' AS id,
' Xã Sơn Hà' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xasonha' AS id,
' Xã Sơn Hà' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xachuyenmy' AS id,
' Xã Chuyên Mỹ' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xachuyenmy' AS id,
' Xã Chuyên Mỹ' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xakhaithai' AS id,
' Xã Khai Thái' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xakhaithai' AS id,
' Xã Khai Thái' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xaphuctien' AS id,
' Xã Phúc Tiến' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xaphuctien' AS id,
' Xã Phúc Tiến' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xavantu' AS id,
' Xã Vân Từ' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xavantu' AS id,
' Xã Vân Từ' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xatrithuy' AS id,
' Xã Tri Thủy' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xatrithuy' AS id,
' Xã Tri Thủy' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xadaixuyen' AS id,
' Xã Đại Xuyên' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xadaixuyen' AS id,
' Xã Đại Xuyên' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xaphuyen' AS id,
' Xã Phú Yên' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xaphuyen' AS id,
' Xã Phú Yên' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xabachha' AS id,
' Xã Bạch Hạ' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xabachha' AS id,
' Xã Bạch Hạ' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xaquanglang' AS id,
' Xã Quang Lãng' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xaquanglang' AS id,
' Xã Quang Lãng' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xachaucan' AS id,
' Xã Châu Can' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xachaucan' AS id,
' Xã Châu Can' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xaminhtan' AS id,
' Xã Minh Tân' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenphuxuyen-xaminhtan' AS id,
' Xã Minh Tân' AS commune,
'Huyện Phú Xuyên' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-thitranchidong' AS id,
' Thị trấn Chi Đông' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-thitranchidong' AS id,
' Thị trấn Chi Đông' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-thitranquangminh' AS id,
' Thị trấn Quang Minh' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-thitranquangminh' AS id,
' Thị trấn Quang Minh' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-xadaithinh' AS id,
' Xã Đại Thịnh' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-xadaithinh' AS id,
' Xã Đại Thịnh' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-xakimhoa' AS id,
' Xã Kim Hoa' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-xakimhoa' AS id,
' Xã Kim Hoa' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-xathachda' AS id,
' Xã Thạch Đà' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-xathachda' AS id,
' Xã Thạch Đà' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-xatienthang' AS id,
' Xã Tiến Thắng' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-xatienthang' AS id,
' Xã Tiến Thắng' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-xatulap' AS id,
' Xã Tự Lập' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-xatulap' AS id,
' Xã Tự Lập' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-xathanhlam' AS id,
' Xã Thanh Lâm' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-xathanhlam' AS id,
' Xã Thanh Lâm' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-xatamdong' AS id,
' Xã Tam Đồng' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-xatamdong' AS id,
' Xã Tam Đồng' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-xalienmac' AS id,
' Xã Liên Mạc' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-xalienmac' AS id,
' Xã Liên Mạc' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-xavanyen' AS id,
' Xã Vạn Yên' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-xavanyen' AS id,
' Xã Vạn Yên' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-xachuphan' AS id,
' Xã Chu Phan' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-xachuphan' AS id,
' Xã Chu Phan' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-xatienthinh' AS id,
' Xã Tiến Thịnh' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-xatienthinh' AS id,
' Xã Tiến Thịnh' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-xamelinh' AS id,
' Xã Mê Linh' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-xamelinh' AS id,
' Xã Mê Linh' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-xavankhe' AS id,
' Xã Văn Khê' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-xavankhe' AS id,
' Xã Văn Khê' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-xahoangkim' AS id,
' Xã Hoàng Kim' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-xahoangkim' AS id,
' Xã Hoàng Kim' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-xatienphong' AS id,
' Xã Tiền Phong' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-xatienphong' AS id,
' Xã Tiền Phong' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-xatrangviet' AS id,
' Xã Tráng Việt' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenmelinh-xatrangviet' AS id,
' Xã Tráng Việt' AS commune,
'Huyện Mê Linh' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-thitransocson' AS id,
' Thị trấn Sóc Sơn' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-thitransocson' AS id,
' Thị trấn Sóc Sơn' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xabacson' AS id,
' Xã Bắc Sơn' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xabacson' AS id,
' Xã Bắc Sơn' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xaminhtri' AS id,
' Xã Minh Trí' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xaminhtri' AS id,
' Xã Minh Trí' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xahongky' AS id,
' Xã Hồng Kỳ' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xahongky' AS id,
' Xã Hồng Kỳ' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xanamson' AS id,
' Xã Nam Sơn' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xanamson' AS id,
' Xã Nam Sơn' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xatrunggia' AS id,
' Xã Trung Giã' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xatrunggia' AS id,
' Xã Trung Giã' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xatanhung' AS id,
' Xã Tân Hưng' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xatanhung' AS id,
' Xã Tân Hưng' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xaminhphu' AS id,
' Xã Minh Phú' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xaminhphu' AS id,
' Xã Minh Phú' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xaphulinh' AS id,
' Xã Phù Linh' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xaphulinh' AS id,
' Xã Phù Linh' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xabacphu' AS id,
' Xã Bắc Phú' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xabacphu' AS id,
' Xã Bắc Phú' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xatanminh' AS id,
' Xã Tân Minh' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xatanminh' AS id,
' Xã Tân Minh' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xaquangtien' AS id,
' Xã Quang Tiến' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xaquangtien' AS id,
' Xã Quang Tiến' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xahienninh' AS id,
' Xã Hiền Ninh' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xahienninh' AS id,
' Xã Hiền Ninh' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xatandan' AS id,
' Xã Tân Dân' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xatandan' AS id,
' Xã Tân Dân' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xatienduoc' AS id,
' Xã Tiên Dược' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xatienduoc' AS id,
' Xã Tiên Dược' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xavietlong' AS id,
' Xã Việt Long' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xavietlong' AS id,
' Xã Việt Long' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xaxuangiang' AS id,
' Xã Xuân Giang' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xaxuangiang' AS id,
' Xã Xuân Giang' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xamaidinh' AS id,
' Xã Mai Đình' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xamaidinh' AS id,
' Xã Mai Đình' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xaduchoa' AS id,
' Xã Đức Hoà' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xaduchoa' AS id,
' Xã Đức Hoà' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xathanhxuan' AS id,
' Xã Thanh Xuân' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xathanhxuan' AS id,
' Xã Thanh Xuân' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xadongxuan' AS id,
' Xã Đông Xuân' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xadongxuan' AS id,
' Xã Đông Xuân' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xakimlu' AS id,
' Xã Kim Lũ' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xakimlu' AS id,
' Xã Kim Lũ' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xaphucuong' AS id,
' Xã Phú Cường' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xaphucuong' AS id,
' Xã Phú Cường' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xaphuminh' AS id,
' Xã Phú Minh' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xaphuminh' AS id,
' Xã Phú Minh' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xaphulo' AS id,
' Xã Phù Lỗ' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xaphulo' AS id,
' Xã Phù Lỗ' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xaxuanthu' AS id,
' Xã Xuân Thu' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyensocson-xaxuanthu' AS id,
' Xã Xuân Thu' AS commune,
'Huyện Sóc Sơn' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-thitranvandinh' AS id,
' Thị trấn Vân Đình' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-thitranvandinh' AS id,
' Thị trấn Vân Đình' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xavienan' AS id,
' Xã Viên An' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xavienan' AS id,
' Xã Viên An' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xaviennoi' AS id,
' Xã Viên Nội' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xaviennoi' AS id,
' Xã Viên Nội' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xahoason' AS id,
' Xã Hoa Sơn' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xahoason' AS id,
' Xã Hoa Sơn' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xaquangphucau' AS id,
' Xã Quảng Phú Cầu' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xaquangphucau' AS id,
' Xã Quảng Phú Cầu' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xatruongthinh' AS id,
' Xã Trường Thịnh' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xatruongthinh' AS id,
' Xã Trường Thịnh' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xacaothanh' AS id,
' Xã Cao Thành' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xacaothanh' AS id,
' Xã Cao Thành' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xalienbat' AS id,
' Xã Liên Bạt' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xalienbat' AS id,
' Xã Liên Bạt' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xasoncong' AS id,
' Xã Sơn Công' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xasoncong' AS id,
' Xã Sơn Công' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xadongtien' AS id,
' Xã Đồng Tiến' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xadongtien' AS id,
' Xã Đồng Tiến' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xaphuongtu' AS id,
' Xã Phương Tú' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xaphuongtu' AS id,
' Xã Phương Tú' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xatrungtu' AS id,
' Xã Trung Tú' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xatrungtu' AS id,
' Xã Trung Tú' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xadongtan' AS id,
' Xã Đồng Tân' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xadongtan' AS id,
' Xã Đồng Tân' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xataoduongvan' AS id,
' Xã Tảo Dương Văn' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xataoduongvan' AS id,
' Xã Tảo Dương Văn' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xavanthai' AS id,
' Xã Vạn Thái' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xavanthai' AS id,
' Xã Vạn Thái' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xaminhduc' AS id,
' Xã Minh Đức' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xaminhduc' AS id,
' Xã Minh Đức' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xahoalam' AS id,
' Xã Hòa Lâm' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xahoalam' AS id,
' Xã Hòa Lâm' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xahoaxa' AS id,
' Xã Hòa Xá' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xahoaxa' AS id,
' Xã Hòa Xá' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xatramlong' AS id,
' Xã Trầm Lộng' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xatramlong' AS id,
' Xã Trầm Lộng' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xakimduong' AS id,
' Xã Kim Đường' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xakimduong' AS id,
' Xã Kim Đường' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xahoanam' AS id,
' Xã Hòa Nam' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xahoanam' AS id,
' Xã Hòa Nam' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xahoaphu' AS id,
' Xã Hòa Phú' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xahoaphu' AS id,
' Xã Hòa Phú' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xadoibinh' AS id,
' Xã Đội Bình' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xadoibinh' AS id,
' Xã Đội Bình' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xadaihung' AS id,
' Xã Đại Hùng' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xadaihung' AS id,
' Xã Đại Hùng' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xadonglo' AS id,
' Xã Đông Lỗ' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xadonglo' AS id,
' Xã Đông Lỗ' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xaphuluu' AS id,
' Xã Phù Lưu' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xaphuluu' AS id,
' Xã Phù Lưu' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xadaicuong' AS id,
' Xã Đại Cường' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xadaicuong' AS id,
' Xã Đại Cường' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xaluuhoang' AS id,
' Xã Lưu Hoàng' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xaluuhoang' AS id,
' Xã Lưu Hoàng' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xahongquang' AS id,
' Xã Hồng Quang' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-huyenunghoa-xahongquang' AS id,
' Xã Hồng Quang' AS commune,
'Huyện Ứng Hòa' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thixasontay-leloi' AS id,
' Lê Lợi' AS commune,
'Thị xã Sơn Tây ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thixasontay-leloi' AS id,
' Lê Lợi' AS commune,
'Thị xã Sơn Tây ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thixasontay-phuthinh' AS id,
' Phú Thịnh' AS commune,
'Thị xã Sơn Tây ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thixasontay-phuthinh' AS id,
' Phú Thịnh' AS commune,
'Thị xã Sơn Tây ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thixasontay-ngoquyen' AS id,
' Ngô Quyền' AS commune,
'Thị xã Sơn Tây ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thixasontay-ngoquyen' AS id,
' Ngô Quyền' AS commune,
'Thị xã Sơn Tây ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thixasontay-quangtrung' AS id,
' Quang Trung' AS commune,
'Thị xã Sơn Tây ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thixasontay-quangtrung' AS id,
' Quang Trung' AS commune,
'Thị xã Sơn Tây ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thixasontay-sonloc' AS id,
' Sơn Lộc' AS commune,
'Thị xã Sơn Tây ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thixasontay-sonloc' AS id,
' Sơn Lộc' AS commune,
'Thị xã Sơn Tây ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thixasontay-xuankhanh' AS id,
' Xuân Khanh' AS commune,
'Thị xã Sơn Tây ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thixasontay-xuankhanh' AS id,
' Xuân Khanh' AS commune,
'Thị xã Sơn Tây ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thixasontay-vienson' AS id,
' Viên Sơn' AS commune,
'Thị xã Sơn Tây ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thixasontay-vienson' AS id,
' Viên Sơn' AS commune,
'Thị xã Sơn Tây ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thixasontay-trunghung' AS id,
' Trung Hưng' AS commune,
'Thị xã Sơn Tây ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thixasontay-trunghung' AS id,
' Trung Hưng' AS commune,
'Thị xã Sơn Tây ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thixasontay-trungsontram' AS id,
' Trung Sơn Trầm' AS commune,
'Thị xã Sơn Tây ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thixasontay-trungsontram' AS id,
' Trung Sơn Trầm' AS commune,
'Thị xã Sơn Tây ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thixasontay-xaduonglam' AS id,
' Xã Đường Lâm' AS commune,
'Thị xã Sơn Tây ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thixasontay-xaduonglam' AS id,
' Xã Đường Lâm' AS commune,
'Thị xã Sơn Tây ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thixasontay-xaxuanson' AS id,
' Xã Xuân Sơn' AS commune,
'Thị xã Sơn Tây ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thixasontay-xaxuanson' AS id,
' Xã Xuân Sơn' AS commune,
'Thị xã Sơn Tây ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thixasontay-xathanhmy' AS id,
' Xã Thanh Mỹ' AS commune,
'Thị xã Sơn Tây ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thixasontay-xathanhmy' AS id,
' Xã Thanh Mỹ' AS commune,
'Thị xã Sơn Tây ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thixasontay-xakimson' AS id,
' Xã Kim Sơn' AS commune,
'Thị xã Sơn Tây ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thixasontay-xakimson' AS id,
' Xã Kim Sơn' AS commune,
'Thị xã Sơn Tây ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thixasontay-xasondong' AS id,
' Xã Sơn Đông' AS commune,
'Thị xã Sơn Tây ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thixasontay-xasondong' AS id,
' Xã Sơn Đông' AS commune,
'Thị xã Sơn Tây ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thixasontay-xacodong' AS id,
' Xã Cổ Đông' AS commune,
'Thị xã Sơn Tây ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
DELETE FROM area WHERE id = (SELECT CAST(id AS TEXT) FROM location_values);
WITH location_values AS ( 
SELECT 
'vietnam-hanoi-thixasontay-xacodong' AS id,
' Xã Cổ Đông' AS commune,
'Thị xã Sơn Tây ' AS district,
'Việt Nam' AS nation,
'Hà Nội' AS provincial_level,
'null' AS state,
'null' AS x_rel_coo,
'null' AS y_rel_coo)
INSERT INTO area(id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo) 
SELECT id, commune, district, nation, provincial_level, state, x_rel_coo, y_rel_coo 
FROM location_values; 

