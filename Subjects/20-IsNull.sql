-- IS NULL % IS NOT NULL CONDITIONS

CREATE TABLE insanlar
(
ssn char(9),
name varchar(50),  
adres varchar(50)
);

INSERT INTO insanlar VALUES(123456789, 'Ali Can', 'Istanbul');  
INSERT INTO insanlar VALUES(234567890, 'Veli Cem', 'Ankara');  
INSERT INTO insanlar VALUES(345678901, 'Mine Bulut', 'Izmir');  
INSERT INTO insanlar (ssn, adres) VALUES(456789012, 'Bursa'); 
INSERT INTO insanlar (ssn, adres) VALUES(567890123, 'Denizli');

select * from insanlar

-- Name sutununda null olan değerleri listeleyelim

SELECT name FROM insanlar WHERE name IS NULL

-- Insanlar taplosunda sadece null olmayan değerleri listeleyiniz

SELECT name FROM insanlar WHERE name IS NOT NULL

-- Insanlar toplasunda null değer almış verileri no name olarak değiştiriniz

UPDATE insanlar
SET name='No Name'
WHERE name is null;

drop table if exists insanlar