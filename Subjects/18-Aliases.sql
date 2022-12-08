--ALIASES
-- AS : can change field names for that output

drop table if exists calisanlar
CREATE TABLE calisanlar  (
calisan_id char(9),
calisan_isim varchar(50),
calisan_dogdugu_sehir varchar(50)
);
INSERT INTO calisanlar VALUES(123456789, 'Ali Can', 'Istanbul');  
INSERT INTO calisanlar VALUES(234567890, 'Veli Cem', 'Ankara');  
INSERT INTO calisanlar VALUES(345678901, 'Mine Bulut', 'Izmir');

select * from calisanlar

SELECT calisan_id AS CALISANLAR FROM calisanlar; 
SELECT calisan_isim, calisan_dogdugu_sehir AS SEHIR FROM CALISANLAR;


