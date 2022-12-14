-- Procedure 


-- Procedure Oluşturma 

CREATE PROCEDURE parametresiz_procedure()
LANGUAGE plpgsql
AS $$
BEGIN 
RAISE NOTICE 'Parametresiz Procedure Örneği';
END; $$

-- Procedure Cağırma işlemi CALL ile yapılır. 
CALL parametresiz_procedure()


SELECT * FROM markalar

-- Parametreli Procedure ile tabloya record ekleme

CREATE PROCEDURE marka_ekle(marka_id INT, marka_isim VARCHAR, calisan_sayisi INT)
LANGUAGE plpgsql 
AS $$
BEGIN 
INSERT INTO markalar VALUES (marka_id, marka_isim, calisan_sayisi);
END; $$

-- Procedure CALL (Çağırma İşlemi)

CALL marka_ekle (105, 'Zara', 150000)