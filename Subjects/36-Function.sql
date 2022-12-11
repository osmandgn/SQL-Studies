-- FUNCTION OLUŞTURMA

-- PotgreSQL'de Function oluşturmak için 
-- CREATE FUNCTION diyoruz ve function name ile parametreleri belirliyoruz. 
-- Ardından RETURNS ile return type'ı bildiriyoruz. 
-- Dil olarak prosecure language kısatlatması ile PostgreSQL 
-- kelimelerinin kısaltmalarının birleşimi olan plpgsql kelimesini yazıyoruz. 
-- AS starting point
-- Function Body'i ($$ BEGIN) ve ($$ END) arasında oluşturuyoruz. 
-- Bu ikisi arasında return işlemini gerçekleştiriyoruz. 

CREATE OR REPLACE FUNCTION addf(a int, b int) 
RETURNS int  
language plpgsql  
as
$$
BEGIN  
   
   RETURN a+b;
   
END
$$

CREATE OR REPLACE FUNCTION addf(a INT, b INT) RETURNS INT LANGUAGE plpgsql AS $$ BEGIN RETURN a+b; END $$



-- OLUŞTURDUĞUMUZ FUNCTION'U ÇAĞIRMA 

-- Bir table çağırırken yaptığımız gibi Select * From diyoruz 
-- Ve yanına function ismini yazıp, parantez içerisine parametrelerimizi giriyoruz. 


SELECT * FROM addf(10,15)