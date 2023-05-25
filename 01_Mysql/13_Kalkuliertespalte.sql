USE vhs_bu_mai;

CREATE TABLE dreieck(
seite_a DOUBLE,
seite_b DOUBLE,
seite_c DECIMAL(10,2) AS(sqrt(seite_a*seite_a + seite_b*seite_b )));

INSERT INTO dreieck(seite_a,seite_b) VALUE (2,3),(3,3);
SELECT * FROM dreieck;

