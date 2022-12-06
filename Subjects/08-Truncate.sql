-- TRUNCATE -- 
-- Deletes all data in a table in a way that we cannot retrieve. 
-- Doesn't do conditional deletion

SELECT * FROM ogrenciler4

CREATE TABLE ogrenciler4
(
id int,
isim VARCHAR(50),
veli_isim VARCHAR(50),
yazili_notu int       
);
INSERT INTO ogrenciler4 VALUES(123, 'Ali Can', 'Hasan',75);
INSERT INTO ogrenciler4 VALUES(124, 'Merve Gul', 'Ayse',85);
INSERT INTO ogrenciler4 VALUES(125, 'Kemal Yasa', 'Hasan',85);
INSERT INTO ogrenciler4 VALUES(126, 'Nesibe Yilmaz', 'Ayse',95);
INSERT INTO ogrenciler4 VALUES(127, 'Mustafa Bak', 'Can',99);
INSERT INTO ogrenciler4 VALUES(127, 'Mustafa Bak', 'Ali', 99);


SELECT * FROM ogrenciler4

TRUNCATE ogrenciler4