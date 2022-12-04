-- SUBQUERIES --> Query within query

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

-- Query names of brands with more than 15,000 
-- employees names and salaries of those working in this brand

SELECT isim, maas, isyeri FROM calisanlar2 WHERE isyeri IN (SELECT marka_isim FROM markalar WHERE calisan_sayisi > 15000);

--Query the names, salaries and cities of brand employees 
--whose brand_id is greater than 101

SELECT isim,maas,sehir FROM calisanlar2 
WHERE isyeri IN (SELECT marka_isim FROM markalar WHERE marka_id>101);


-- Query names of brands with more than 15,000, with employees names and salaries 

Select isim, maas, isyeri From calisanlar2 Where isyeri IN (Select marka_isim From markalar where calisan_sayisi > 15000);


-- Query the names, salaries and cities of brand employees whose brand_id is greater than 101.

Select isim,maas,sehir FROM calisanlar2 where isyeri IN (Select marka_isim from markalar where marka_id > 101);


-- List the brand IDs and the number of employees of the brands that have employees in Ankara.

Select marka_isim, marka_id, calisan_sayisi from markalar where marka_isim In (Select isyeri from calisanlar2 where sehir = 'Ankara');