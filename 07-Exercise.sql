-- Exercise

CREATE TABLE ogrenciler3
(
id int,
isim VARCHAR(50),
veli_isim VARCHAR(50),
yazili_notu int       
);
INSERT INTO ogrenciler3 VALUES(123, 'Ali Can', 'Hasan',75);
INSERT INTO ogrenciler3 VALUES(124, 'Merve Gul', 'Ayse',85);
INSERT INTO ogrenciler3 VALUES(125, 'Kemal Yasa', 'Hasan',85);
INSERT INTO ogrenciler3 VALUES(126, 'Nesibe Yilmaz', 'Ayse',95);
INSERT INTO ogrenciler3 VALUES(127, 'Mustafa Bak', 'Can',99);
INSERT INTO ogrenciler3 VALUES(127, 'Mustafa Bak', 'Ali', 99);

-- Delete records named Mustafa Bak and Nesibe Yılmaz

DELETE FROM ogrenciler3 WHERE isim = 'Nesibe Yilmaz';
DELETE FROM ogrenciler3 WHERE isim LIKE 'Mustafa%'; 

DELET FROM ogrenciler3 WHERE isim = 'Mustafa Bak' or isim = 'Nesibe Yilmaz';

