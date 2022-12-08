-- EXCEPT(MINUS) KULLANIMI
/*
Bir sorgudan elde edilen sonuçlardan, 
ikinci sorgudan gelen sonuçları çıkarmak için EXCEPT komutu kullanılır
*/

-- 5000’den az maas alip Honda’da calismayanlari yazdirin

SELECT isim,sirket FROM personel WHERE maas<5000
EXCEPT
SELECT isim,sirket FROM personel WHERE sirket='Honda'