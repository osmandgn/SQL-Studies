CREATE TABLE calisanlar2 
(
id int, 
isim VARCHAR(50), 
sehir VARCHAR(50), 
maas int, 
isyeri VARCHAR(20)
);
INSERT INTO calisanlar2 VALUES(123456789, 'Ali Seker', 'Istanbul', 2500, 'Vakko');
INSERT INTO calisanlar2 VALUES(234567890, 'Ayse Gul', 'Istanbul', 1500, 'LCWaikiki');
INSERT INTO calisanlar2 VALUES(345678901, 'Veli Yilmaz', 'Ankara', 3000, 'Vakko');
INSERT INTO calisanlar2 VALUES(456789012, 'Veli Yilmaz', 'Izmir', 1000, 'Pierre Cardin');
INSERT INTO calisanlar2 VALUES(567890123, 'Veli Yilmaz', 'Ankara', 7000, 'Adidas');
INSERT INTO calisanlar2 VALUES(456789012, 'Ayse Gul', 'Ankara', 1500, 'Pierre Cardin');
INSERT INTO calisanlar2 VALUES(123456710, 'Fatma Yasa', 'Bursa', 2500, 'Vakko');

CREATE TABLE markalar
(
marka_id int, 
marka_isim VARCHAR(20), 
calisan_sayisi int
);
INSERT INTO markalar VALUES(100, 'Vakko', 12000);
INSERT INTO markalar VALUES(101, 'Pierre Cardin', 18000);
INSERT INTO markalar VALUES(102, 'Adidas', 10000);
INSERT INTO markalar VALUES(103, 'LCWaikiki', 21000);
INSERT INTO markalar VALUES(104, 'Nike', 19000);

select * from calisanlar2
select * from markalar

-- AGGREGATE METHOD
-- max
--Calisanlar tablosunda maksimum maası listeleyiniz

Select max(maas) from calisanlar2;
Select max(maas) as maksimum_maas from calisanlar2;


-- min
--Calisanlar tablosunda minimum maası listeleyiniz

Select min(maas) from calisanlar2;
Select min(maas) as minimum_maas from calisanlar2;

--sum
--Calisanlar tablosundaki maasların toplamını listeleyiniz

Select sum(maas) as toplam from calisanlar2;


--avg
--Calisanlar tablosundaki maasların ortalamasını listeleyiniz

Select round(avg(maas)) as ortalama from calisanlar2;
Select round(avg(maas), 2) from calisanlar2;

--count
--Calisanlar tablosundaki maasların sayısı

Select count(maas) from calisanlar2;
Select count(*) from calisanlar2;

--AGGREGATE METHODLARDA SUBQUERY

-- Her markanin id’sini, ismini ve toplam kaç şehirde 
-- bulunduğunu listeleyen bir SORGU yaziniz

Select marka_id, marka_isim, (Select count(sehir) as sehir_sayisi from calisanlar2 where marka_isim = isyeri) from markalar;

--  Her markanin ismini, calisan sayisini ve o markaya ait calisanlarin 
--  toplam maaşini listeleyiniz

Select marka_isim, calisan_sayisi, (Select sum(maas) from calisanlar2 where marka_isim = isyeri) from markalar;
	   
-- Her markanin ismini, calisan sayisini ve o markaya ait calisanlarin 
-- maksimum ve minumum maaşini listeleyen bir Sorgu yaziniz.

Select marka_isim, calisan_sayisi, 
(Select max(maas) from calisanlar2 where marka_isim = isyeri),
(Select min(maas) from calisanlar2 where marka_isim = isyeri) 
from markalar;
