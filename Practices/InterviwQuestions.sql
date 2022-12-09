drop table personel;
drop table isciler;

CREATE TABLE personel (
id int,
isim varchar(50), sehir varchar(50), maas int,
sirket varchar(20) );


CREATE TABLE isciler (
id int,
isim varchar(50), sehir varchar(50), maas int,
sirket varchar(20) );


INSERT INTO personel VALUES(123456789, 'Johnny Walk', 'New Hampshire', 2500, 'IBM'); 
INSERT INTO personel VALUES(234567891, 'Brian Pitt', 'Florida', 1500, 'LINUX');
INSERT INTO personel VALUES(245678901, 'Eddie Murphy', 'Texas', 3000, 'WELLS FARGO'); 
INSERT INTO personel VALUES(456789012, 'Teddy Murphy', 'Virginia', 1000, 'GOOGLE');
INSERT INTO personel VALUES(567890124, 'Eddie Murphy', 'Massachuset', 7000, 'MICROSOFT'); 
INSERT INTO personel VALUES(456789012, 'Brad Pitt', 'Texas', 1500, 'TD BANK');
INSERT INTO personel VALUES(123456719, 'Adem Stone', 'New Jersey', 2500, 'IBM');



INSERT INTO isciler VALUES(123456789, 'John Walker', 'Florida', 2500, 'IBM'); 
INSERT INTO isciler VALUES(234567890, 'Brad Pitt', 'Florida', 1500, 'APPLE'); 
INSERT INTO isciler VALUES(345678901, 'Eddie Murphy', 'Texas', 3000, 'IBM');
INSERT INTO isciler VALUES(456789012, 'Eddie Murphy', 'Virginia', 1000, 'GOOGLE'); 
INSERT INTO isciler VALUES(567890123, 'Eddie Murphy', 'Texas', 7000, 'MICROSOFT'); 
INSERT INTO isciler VALUES(456789012, 'Brad Pitt', 'Texas', 1500, 'GOOGLE'); 
INSERT INTO isciler VALUES(123456710, 'Mark Stone', 'Pennsylvania', 2500, 'IBM');



--  1)Her iki tablodaki ortak id’leri ve personel tablosunda bu id’ye sahip isimleri listeleyen query yaziniz

Select personel.isim, personel.id From personel, isciler where personel.id = isciler.id
Group by personel.id, personel.isim


Select isim, id from personel where id In (Select id from isciler)


Select isim, id from personel where Exists (Select id from isciler where personel.id = isciler.id)


Select a.isim, a.id from personel a Inner join isciler e On a.id = e.id
Group by a.id, a.isim


SELECT isim,id FROM personel WHERE id IN (SELECT id FROM isciler WHERE isciler.id=personel.id); -- Kitaptaki Cozum


-- 2) Her iki tablodaki ortak id ve isme sahip kayitlari listeleyen query yaziniz

Select id, isim from personel where id in (Select id from isciler) and isim in (Select isim from isciler)

Select isim, id from personel where exists (Select isim, id from isciler where personel.id = isciler.id and personel.isim = isciler.isim)

Select personel.isim, isciler.id from personel Inner Join isciler On isciler.id = personel.id And isciler.isim = personel.isim

Select a.isim, e.id from personel a, isciler e where e.id = a.id and e.isim = a.isim

Select isim, id from personel 
Intersect  						-- Slayt'taki cozum 
select isim, id from isciler

--  3) Personel tablosunda kac farkli sehirden personel var?

Select count(distinct(sehir))from personel

Select sehir, count(sehir) from personel group by sehir


-- 4) Personel tablosunda id’si cift sayi olan personel’in tum bilgilerini listeleyen Query yaziniz

Select * from personel where id % 2 = 0;


-- 5) Personel tablosunda kac tane kayit oldugunu gosteren query yazin

Select count(id) from personel


-- 6) Isciler tablosunda en yuksek maasi alan kisinin tum bilgilerini gosteren query yazin

Select * from isciler where maas = (Select max(maas) from isciler)

Select * from isciler Order by maas DESC Fetch Next 1 Row Only

Select * from isciler Order by maas desc limit 1

Select * from isciler order by maas offset (Select count(maas) from isciler) -1


-- 7) Personel tablosunda en dusuk maasi alan kisinin tum bilgilerini gosteren query yazin

Select * from personel order by maas limit 1
Select * from personel order by maas fetch next 1 row only
Select * from personel where maas = (Select min(maas) from personel)


-- 8) Isciler tablosunda ikinci en yuksek maasi maasi gosteren query yazin

Select maas from isciler order by maas Desc offset 1 limit 1
Select maas from isciler order by maas Desc offset 1 fetch next 1 row only
Select max(maas) from isciler where maas < (Select max(maas) from isciler) limit 1


-- 9) Isciler tablosunda ikinci en dusuk maasi alan iscinin tum bilgilerini gosteren query yazin

Select * from isciler order by maas offset 1 fetch next 1 row only
Select * from isciler order by maas offset 1 limit 1 
Select * from isciler where maas > (Select min(maas) from isciler) order by maas limit 1;


-- 10) Isciler tablosunda en yuksek maasi alan iscinin disindaki tum iscilerin, tum bilgilerini gosteren query yazin

Select * from isciler order by maas DESC -- En yuksek alan Eddie Murphy - 7000

Select * from isciler where maas < (Select max(maas) from isciler)
Select * from isciler order by maas DESC offset 1 
Select * from isciler order by maas Fetch Next ((Select count(maas) from isciler)-1) row only

SELECT *
FROM isciler
WHERE maas < ( SELECT MAX(maas) FROM isciler) -- Slayt Cozumu
ORDER BY maas DESC;