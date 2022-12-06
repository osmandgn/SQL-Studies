CREATE TABLE calisanlar2 (
id int,
isim VARCHAR(50),
sehir VARCHAR(50), maas int,
isyeri VARCHAR(20) );

SELECT * FROM Markalar


CREATE TABLE markalar
(
marka_id int,
marka_isim VARCHAR(20), calisan_sayisi int
);


-- Çalisan sayisi 15.000’den cok olan markalarin isimlerini ve 
-- bu markada calisanlarin isimlerini ve maaşlarini listeleyin.

SELECT isim, maas, isyeri FROM calisanlar2 
Where isyeri In (SELECT marka_isim FROM markalar WHERE calisan_sayisi > 15000);


--- marka_id’si 101’den büyük olan marka çalişanlarinin isim, maaş ve şehirlerini listeleyiniz.


SELECT isim, maas, sehir FROM calisanlar2 WHERE isyeri IN(SELECT marka_isim FROM markalar WHERE marka_id>101);

-- Ankara’da calisani olan markalarin marka id'lerini ve calisan sayilarini listeleyiniz.

Select marka_id, calisan_sayisi From markalar Where marka_isim In (Select isyeri From calisanlar2 Where sehir = 'Ankara')

-- Her markanin id’sini, ismini ve toplam kaç şehirde bulunduğunu listeleyen bir SORGU yaziniz.

SELECT marka_id, marka_isim, (Select count(sehir) From calisanlar2 Where markalar.marka_isim = calisanlar2.isyeri ) as sehir_sayisi From markalar;

-- Her markanin ismini, calisan sayisini ve o markaya ait calisanlarin toplam maaşini listeleyiniz

SELECT marka_isim, calisan_sayisi, (Select sum(maas) FROM calisanlar2 Where markalar.marka_isim = calisanlar2.isyeri) From markalar;


-- Her markanin ismini, calisan sayisini ve o markaya ait calisanlarin maksimum ve minumum maaşini listeleyen bir Sorgu yaziniz.

SELECT marka_isim, calisan_sayisi, (Select max(maas) FROM calisanlar2 Where markalar.marka_isim = calisanlar2.isyeri), (Select min(maas) FROM calisanlar2 Where markalar.marka_isim = calisanlar2.isyeri)  From markalar;



CREATE TABLE mart
(
urun_id int,
musteri_isim varchar(50), urun_isim varchar(50)
);



CREATE TABLE nisan
(
urun_id int ,
musteri_isim varchar(50), urun_isim varchar(50)
);

SELECT * FROM Mart -- EXİSTS


-- MART VE NİSAN aylarında aynı URUN_ID ile satılan ürünlerin URUN_ID’lerini listeleyen 
-- ve aynı zamanda bu ürünleri MART ayında alan MUSTERI_ISIM 'lerini listeleyen bir sorgu yazınız.

Select urun_id, musteri_isim From mart where Exists (Select urun_id from nisan where mart.urun_id = nisan.urun_id)

--Her iki ayda birden satılan ürünlerin URUN_ISIM'lerini ve bu ürünleri
-- NİSAN ayında satın alan MUSTERI_ISIM'lerini listeleyen bir sorgu yazınız.

Select urun_isim, musteri_isim From nisan where Exists(Select urun_isim from mart where mart.urun_isim = nisan.urun_isim);


--Her iki ayda ortak satilmayan ürünlerin URUN_ISIM'lerini ve bu ürünleri 
--NİSAN ayında satın alan MUSTERI_ISIM'lerini listeleyen bir sorgu yazınız.

Select urun_isim, musteri_isim From nisan Where not exists (Select urun_isim from mart where nisan.urun_isim = mart.urun_isim);


SELECT urun_isim, musteri_isim FROM nisan WHERE NOT EXISTS (SELECT urun_isim FROM mart WHERE nisan.urun_isim = mart.urun_isim)

SELECT * FROM tedarikciler
DELETE FROM TEDARIKCILER
-- tedarikciler
vergi_no int PRIMARY KEY, firma_ismi VARCHAR(50), irtibat_ismi VARCHAR(50)
-- urunler
ted_vergino int,
urun_id int,
urun_isim VARCHAR(50),
musteri_isim VARCHAR(50),


INSERT INTO tedarikciler VALUES (101, 'IBM', 'Kim Yon');
INSERT INTO tedarikciler VALUES (102, 'Huawei', 'Çin Li');
INSERT INTO tedarikciler VALUES (103, 'Erikson', 'Maki Tammen'); INSERT INTO tedarikciler VALUES (104, 'Apple', 'Adam Eve');

INSERT INTO urunler VALUES(101, 1001,'Laptop', 'Ayşe Can'); 

INSERT INTO urunler VALUES(102, 1002,'Phone', 'Fatma Aka'); 
INSERT INTO urunler VALUES(102, 1003,'TV', 'Ramazan Öz'); 
INSERT INTO urunler VALUES(102, 1004,'Laptop', 'Veli Han'); 
INSERT INTO urunler VALUES(103, 1005,'Phone', 'Canan Ak'); 
INSERT INTO urunler VALUES(104, 1006,'TV', 'Ali Bak');
INSERT INTO urunler VALUES(104, 1007,'Phone', 'Aslan Yılmaz');

INSERT INTO urunler VALUES(104, 1006,'TV', 'Ali Bak');

-- vergi_no’su 102 olan tedarikcinin firma ismini 'Vestel' olarak güncelleyeniz.

UPDATE tedarikciler SET firma_ismi = 'VESTEL' WHERE vergi_no = 102;

-- vergi_no’su 101 olan tedarikçinin firma ismini 'casper' ve irtibat_ismi’ni 'Ali Veli' olarak güncelleyiniz.

Update tedarikciler Set firma_ism = 'Casper', irtibat_ismi = 'Ali Veli' where vergi_no = 101;


-- urunler tablosundaki 'Phone' değerlerini 'Telefon' olarak güncelleyiniz.

Update urunler Set urun_isim = 'Phone' where urun_isim = 'Telefon';

-- urunler tablosundaki urun_id değeri 1004'ten büyük olanların urun_id’sini 1 arttırın.

Update urunler Set urun_id = urun_id+1 Where urun_id > 1004;

-- urunler tablosundaki tüm ürünlerin urun_id değerini ted_vergino sutun değerleri ile toplayarak güncelleyiniz

Update urunler Set urun_id = urun_id + ted_vergino; 

SELECT * FROM URUNLER

-- urunler tablosundan Ali Bak’in aldigi urunun ismini, tedarikci tablosunda irtibat_ismi 'Adam Eve' olan firmanın ismi (firma_ismi) ile degistiriniz.

Update urunler Set urun_isim = 
(Select firma_ismi From tedarikciler Where irtibat_ismi = 'Adam Eve') 
Where urun_isim = (Select urun_isim From urunler where musteri_isim = 'Ali Bak' limit(1))
				   

-- Urunler tablosunda laptop satin alan musterilerin ismini, firma_ismi Apple’in irtibat_isim'i ile degistirin.

Update urunler set musteri_isim = (Select irtibat_ismi From tedarikciler where firma_ismi = 'Apple')
Where urun_isim = 'Laptop'; 


UPDATE urunler SET urun_id = urun_id+1 
Select * from personel

UPDATE urunler SET urun_id = urun_id + ted_vergino;

Select musteri_isim, count(urun_isim) from urunler Group By musteri_isim Order by count(urun_isim) Desc


-- 1) Isme gore alinan toplam urunleri bulun

Select musteri_isim, count(urun_isim) from urunler Group by musteri_isim

-- 2) Urun ismine gore urunu alan toplam kisi sayisi

Select urun_isim, count(urun_isim) from urunler group by urun_isim



Create table personel(
	id int,
	isim varchar(50),
	sehir varchar(50), 
	maas int,
	sirket varchar(20)
)

INSERT INTO personel VALUES(123456789, 'Ali Yilmaz', 'Istanbul', 5500, 'Honda'); INSERT INTO personel VALUES(234567890, 'Veli Sahin', 'Istanbul', 4500, 'Toyota');
INSERT INTO personel VALUES(345678901, 'Mehmet Ozturk', 'Ankara', 3500, 'Honda'); INSERT INTO personel VALUES(456789012, 'Mehmet Ozturk', 'Izmir', 6000, 'Ford'); 
INSERT INTO personel VALUES(567890123, 'Mehmet Ozturk', 'Ankara', 7000, 'Tofas'); INSERT INTO personel VALUES(456789012, 'Veli Sahin', 'Ankara', 4500, 'Ford'); 
INSERT INTO personel VALUES(123456710, 'Hatice Sahin', 'Bursa', 4500, 'Honda');

-- 1) Isme gore toplam maaslari bulun

Select isim, sum(maas) from personel group by isim;



-- 2) sehre gore toplam personel sayisini bulun

Select sehir, count(isim) from personel group by sehir;


-- 3) Sirketlere gore maasi 5000 liradan fazla olan personel sayisini bulun

Select sehir, min(maas) from personel group by sehir having min(maas) > 5000;


-- 4) Her sirket icin Min ve Max maasi bulun

Select sirket, min(maas), max(maas) from personel group by sirket;



