-- FETCH NEXT () ROW ONLY / OFFSET / LIMIT

-- Fetch Next 3 Row Only : Tablonun başından itibaren istenilen sayı kadar row yani record getirir. 
-- Offset 3 : Verilen sayı kadar satır atlar. 
-- Limit 3 : Sorguyu verilen limitle sınırlar. Başından itibaren verilen limit kadar record getirir. 

-- Musteri urun tablosundan ilk üç kaydı listeleyiniz

SELECT * FROM musteri_urun ORDER BY urun_id
FETCH NEXT 3 ROW ONLY

-- LIMIT
SELECT * FROM musteri_urun ORDER BY urun_id
limit 3

-- Musteri urun tablosundan ilk kaydı listeleyiniz

Select * From musteri_urun Order By urun_id Fetch Next 1 row only

SELECT * FROM musteri_urun ORDER BY urun_id
limit 1

-- Müsteri urun tablosundan son üç kaydı listeleyiniz
SELECT * FROM musteri_urun ORDER BY urun_id DESC
limit 3

-- EN yüksek maası alan müsteriyi listeleyiniz

SELECT * FROM maas ORDER BY maas DESC limit 1

Select * From musteri_urun Order By urun_id DESC 
Fetch Next 1 row only


-- Maas tablosundan en yüksek ikinci maası listeleyiniz

SELECT * FROM maas ORDER BY maas DESC offset 1 limit 1

Select * From maas Where maas < (Select max(maas) From maas) Order by maas DESC limit 1

/*
OFFSET --> Satır atlamak istediğimizde offset komutunu kullanırız
*/
SELECT * FROM maas ORDER BY maas desc
OFFSET 1 
FETCH NEXT 1 ROW ONLY

-- Maas tablosundan en düşük dördüncü maası listeleyiniz
SELECT * FROM maas ORDER BY maas offset 3 limit 1