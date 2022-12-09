-- DDL --> ALTER TABLE
drop table personel -- Tabloyu ortadan kaldırmak için kullanılır

-- DDL komutlarindan (Create, Drop Alter) tablo üzerinde çeşitli işlemler yapmak için kullanılır. 
-- Bunlar arasında sütun ekleme, bir sütunun data tipini değiştirme, 
-- yeniden isimlendirme veya silme işlemeleri bulunmaktadır. 

CREATE TABLE personel  (
id int,
isim varchar(50),  sehir varchar(50),  maas int,  
sirket varchar(20),
CONSTRAINT personel_pk PRIMARY KEY (id)
);

INSERT INTO personel VALUES(123456789, 'Ali Yilmaz', 'Istanbul', 5500, 'Honda');  
INSERT INTO personel VALUES(234567890, 'Veli Sahin', 'Istanbul', 4500, 'Toyota');  
INSERT INTO personel VALUES(345678901, 'Mehmet Ozturk', 'Ankara', 3500, 'Honda');  
INSERT INTO personel VALUES(456789012, 'Mehmet Ozturk', 'Izmir', 6000, 'Ford');  
INSERT INTO personel VALUES(567890123, 'Mehmet Ozturk', 'Ankara', 7000, 'Tofas');  
INSERT INTO personel VALUES(456715012, 'Veli Sahin', 'Ankara', 4500, 'Ford');  
INSERT INTO personel VALUES(123456710, 'Hatice Sahin', 'Bursa', 4500, 'Honda');

SELECT * FROM personel

-- 1) ADD ile tabloya bir vey birden fazla field ekleme (ADD)

ALTER TABLE personel
add zipcode varchar(30), add adres varchar(30) 

-- Default deger ile tabloya bir field ekleme

ALTER TABLE personel
ADD adres varchar(50) DEFAULT 'Turkiye' 
-- DEFAULT yazarsak oluşturduğumuz sütüna belirttiğimiz veriyi tüm satırlara girer

-- 2) DROP tablodan sutun silme (DROP COLUMN)

ALTER TABLE personel
DROP COLUMN zipcode

ALTER TABLE personel
DROP adres, drop sirket -- İki sutunu birden sildik


-- 3) RENAME COLUMN sutun adi degistirme

ALTER TABLE personel
RENAME COLUMN sehir TO il

-- 4) RENAME tablonun ismini degistirme
ALTER TABLE personel
RENAME TO isci

SELECT * FROM isci

-- 5) TYPE/SET(modify) sutunlarin ozelliklerini degistirme


ALTER TABLE isci
ALTER COLUMN il TYPE varchar(30),
ALTER COLUMN maas SET NOT NULL;


/*
Eğer numerik data türüne sahip bir sütunun data türüne string bir data türü atamak istersek
TYPE varchar(30) USING(maas::varchar(30)) bu formatı kullanırız
*/
ALTER TABLE isci
ALTER COLUMN maas
TYPE varchar USING(maas::varchar(30))

Alter Table isci Alter column id Type varchar Using(id::varchar(30));

