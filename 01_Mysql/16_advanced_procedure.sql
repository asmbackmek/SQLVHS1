USE vhs_bu_mai;
DELIMITER $
CREATE PROCEDURE insert_data1(a DOUBLE,b DOUBLE )
BEGIN
 INSERT INTO dreieck (seite_a, seite_b) VALUES(a,b);
 SELECT * FROM dreieck;
END $

DELIMITER ;

CALL insert_data1(23,13);
CALL insert_data1(3,13);

DROP PROCEDURE insert_data1;