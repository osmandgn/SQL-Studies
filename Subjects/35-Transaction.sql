-- TRANSACTION (BEGIN-SAVEPOINT-ROLLBACK-COMMIT)
/*
Transaction başlatmak için BEGIN komutu kullanmamız gerekir ve Transaction'ı sonlardık için
COMMIT komutunu çalıştırmalıyız
*/

Drop table ogrenciler

CREATE TABLE ogrenciler2
(
id serial, -- Serial data türü otomatik olarak 1 den baslayarak sıralı olarak sayı ataması yapar
            -- INSERT INTO ile tabloya veri eklerken serial data türünü kullandığım veri değeri yerine DEFAULT yazarız
isim VARCHAR(50),
veli_isim VARCHAR(50),
yazili_notu real       
);
BEGIN;
INSERT INTO ogrenciler2 VALUES(default, 'Ali Can', 'Hasan',75.5);
INSERT INTO ogrenciler2 VALUES(default, 'Merve Gul', 'Ayse',85.3);
savepoint x;
INSERT INTO ogrenciler2 VALUES(default, 'Kemal Yasa', 'Hasan',85.6);
INSERT INTO ogrenciler2 VALUES(default, 'Nesibe Yilmaz', 'Ayse',95.3);
savepoint y;
INSERT INTO ogrenciler2 VALUES(default, 'Mustafa Bak', 'Can',99);
INSERT INTO ogrenciler2 VALUES(default, 'Can Bak', 'Ali', 67.5);
ROLLBACK to y;
COMMIT;

SELECT * from ogrenciler2
delete from ogrenciler2
drop table ogrenciler2