-- JOINS

-- INNER JOIN 

-- Iki tabloda birbiri ile eşleşen elemanları birleştirmek için kullanılır. 

CREATE TABLE sirketler  (
sirket_id int,  
sirket_isim varchar(20)
);
INSERT INTO sirketler VALUES(100, 'Toyota');  
INSERT INTO sirketler VALUES(101, 'Honda');  
INSERT INTO sirketler VALUES(102, 'Ford');  
INSERT INTO sirketler VALUES(103, 'Hyundai');


CREATE TABLE siparisler  (
siparis_id int,  sirket_id int,  siparis_tarihi date
);
INSERT INTO siparisler VALUES(11, 101, '2020-04-17');  
INSERT INTO siparisler VALUES(22, 102, '2020-04-18');  
INSERT INTO siparisler VALUES(33, 103, '2020-04-19');  
INSERT INTO siparisler VALUES(44, 104, '2020-04-20');  
INSERT INTO siparisler VALUES(55, 105, '2020-04-21');

select * from sirketler
select * from siparisler

-- Iki Tabloda sirket_id’si ayni olanlarin sirket_ismi, siparis_id ve
-- siparis_tarihleri ile yeni bir tablo olusturun


SELECT a.sirket_isim, e.siparis_id, e.siparis_tarihi FROM 
sirketler a INNER JOIN siparisler e ON a.sirket_id = e.sirket_id;


SELECT sirketler.sirket_isim,siparisler.siparis_id,siparisler.siparis_tarihi
FROM sirketler INNER JOIN siparisler
ON sirketler.sirket_id=siparisler.sirket_id

-- LEFT JOIN -- 


Select sirket_isim, siparis_id, siparis_tarihi From sirketler 
Left Join siparisler on sirketler.sirket_id = siparisler.sirket_id



-- Iki Tabloda sirket_id’si ayni olanlarin sirket_ismi, siparis_id ve
-- siparis_tarihleri ile yeni bir tablo olusturun

SELECT sirketler.sirket_isim,siparisler.siparis_id,siparisler.siparis_tarihi
FROM siparisler LEFT JOIN sirketler
ON sirketler.sirket_id=siparisler.sirket_id

-- RIGHT JOIN
SELECT sirketler.sirket_isim,siparisler.siparis_id,siparisler.siparis_tarihi
FROM sirketler RIGHT JOIN siparisler
ON sirketler.sirket_id=siparisler.sirket_id

-- FULL JOIN

SELECT sirketler.sirket_isim,siparisler.siparis_id,siparisler.siparis_tarihi
FROM sirketler FULL JOIN siparisler
ON sirketler.sirket_id=siparisler.sirket_id

-- SELF JOIN
drop table personel cascade

CREATE TABLE personel  (
id int,
isim varchar(20),  
title varchar(60),  yonetici_id int
);
INSERT INTO personel VALUES(1, 'Ali Can', 'SDET', 2);
INSERT INTO personel VALUES(2, 'Veli Cem', 'QA', 3);
INSERT INTO personel VALUES(3, 'Ayse Gul', 'QA Lead', 4);  
INSERT INTO personel VALUES(4, 'Fatma Can', 'CEO', 5);

select * from personel

--Her personelin yanina yonetici ismini yazdiran 
--bir tablo olusturun

Select a.isim, e.isim From personel a INNER join personel e On a.yonetici_id = e.id


SELECT isim FROM personel

SELECT p1.isim,p2.isim
FROM personel p1 INNER JOIN personel p2 ON p1.yonetici_id=p2.id


