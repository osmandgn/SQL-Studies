


-- INTERSECT (Kesişim)
/*
Farkli iki sorgudaki ortak verileri INTERSECT komutu ile getirebiliriz
*/

--Personel tablosundan Istanbul veya Ankara’da calisanlarin id’lerini yazdir
--Personel_bilgi tablosundan 2 veya 3 cocugu olanlarin id lerini yazdirin

SELECT id FROM personel WHERE sehir IN ('Istanbul','Ankara')
INTERSECT
SELECT id FROM personel_bilgi WHERE cocuk_sayisi IN (2,3)

select * from personel
--Honda,Ford ve Tofas’ta calisan ortak isimde personel varsa listeleyin

SELECT isim FROM personel WHERE sirket='Honda'
INTERSECT
SELECT isim FROM personel WHERE sirket='Ford'
INTERSECT
SELECT isim FROM personel WHERE sirket='Tofas'

-- Iki tablo arasındaki ortak id leri bulun. 

SELECT sirket_id FROM sirketler
INTERSECT
SELECT sirket_id FROM siparisler
