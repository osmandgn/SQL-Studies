CREATE TABLE calisanlar  (
calisan_id char(9),
calisan_isim varchar(50),
calisan_dogdugu_sehir varchar(50)
);
INSERT INTO calisanlar VALUES(123456789, 'Ali Can', 'Istanbul');  
INSERT INTO calisanlar VALUES(234567890, 'Veli Cem', 'Ankara');  
INSERT INTO calisanlar VALUES(345678901, 'Mine Bulut', 'Izmir');

select * from calisanlar

-- There are two ways to combine datas in diffrent columns

-- 1. Way Concat Sympbol -> ||
SELECT calisan_isim||' '||calisan_dogdugu_sehir AS calisan_bilgisi FROM calisanlar

--2. Way Concat word 
SELECT concat (calisan_isim,' ',calisan_dogdugu_sehir) AS calisan_bilgisi FROM calisanlar