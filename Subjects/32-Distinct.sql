-- DISTINCT KULLANIMI

-- Distinct verileri tekrarsız bir şekilde sorgulamak için kullanılır. 

CREATE TABLE maas1 
(
id int, 
musteri_isim varchar(50),
maas int,
Primary Key (id,musteri_isim)    
);

INSERT INTO maas VALUES (10, 'Ali', 5000); 
INSERT INTO maas VALUES (10, 'Ali', 7500); 
INSERT INTO maas VALUES (20, 'Veli', 10000); 
INSERT INTO maas VALUES (30, 'Ayse', 9000); 
INSERT INTO maas VALUES (20, 'Ali', 6500); 
INSERT INTO maas VALUES (10, 'Adem', 8000); 
INSERT INTO maas VALUES (40, 'Veli', 8500); 
INSERT INTO maas VALUES (20, 'Elif', 5500);

SELECT * FROM maas

-- Musteri urun tablosundan urun isimlerini tekrarsız olarak listeleyiniz

--GROUP BY ÇÖZÜMÜ
SELECT urun_isim FROM musteri_urun
GROUP BY urun_isim

--DISTINCT ÇÖZÜMÜ
SELECT DISTINCT(urun_isim) FROM musteri_urun;

-- Tabloda kaç farklı meyve vardır

SELECT urun_isim, count(urun_isim) FROM musteri_urun
GROUP BY urun_isim  

Select urun_isim, count(distinct(urun_isim)) from musteri_urun   
Group by urun_isim    -- Her ürünü bir defa sayar. Tekrarsız saydığı için.
