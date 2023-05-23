/*
Select Spaltenweise
###################
SELECT * FROM TBLname;
SELECT Spalte1 FROM TBLname;
SELECT Spalte2, Spalte1 FROM TBLname;


SELECT  Zeilenweise
SELECT * FROM TBLname
WHERE 
	IN (listen Operator)
    NOT IN
    BETWEEN
    NOT BEWEEN
    LIKE _, %, _%
    ;
*/
USE vhs_bu_mai;
SHOW TABLES;
UNLOCK TABLES;
SELECT * FROM mutter;

-- Select one column
SELECT m_vorname FROM mutter;
SELECT m_herkunft_stadt FROM mutter;

-- Select distinct
SELECT DISTINCT m_herkunft_stadt FROM mutter;
-- Select one column mit Alias
SELECT m_vorname AS Muttername FROM mutter;
SELECT m_vorname  Muttername FROM mutter;
SELECT m_vorname  'Mutter name' FROM mutter;
-- Select many columns
SELECT m_vorname, m_age FROM mutter;
-- Select many columns mit alias
SELECT m_vorname Muttername, m_age 'Alter' FROM mutter;

-- SELECT mit IN
SELECT * FROM mutter
WHERE m_id IN (4,10,11);

SELECT * FROM mutter
WHERE m_vorname IN ('moritz','monika','asmae');

SELECT * FROM mutter
WHERE m_vorname IN ('mozard','monique','asmae');

-- SELECT mit  NOT IN
SELECT * FROM mutter
WHERE m_vorname NOT IN ('moritz','monika','asmae');
-- SELECT mit Between
SELECT * FROM mutter
WHERE m_age BETWEEN 20 AND 40;

-- SELECT mit Not Between
SELECT * FROM mutter
WHERE m_age NOT BETWEEN 35 AND 40;
-- SELECT mit Like 
-- Like _ = eine Buchstabe
SELECT * FROM Mutter
WHERE m_vorname LIKE '_____' ;

SELECT * FROM Mutter
WHERE m_vorname LIKE 'm____' ;

SELECT * FROM Mutter
WHERE m_vorname LIKE 'm___a' ;

SELECT * FROM Mutter
WHERE m_age LIKE '4_' ;
-- Like %
SELECT * FROM Mutter
WHERE m_vorname LIKE '%' ;
SELECT * FROM Mutter
WHERE m_vorname LIKE '%a' ;
SELECT * FROM Mutter
WHERE m_nachname LIKE '%e%' ;
SELECT * FROM Mutter
WHERE m_herkunft_stadt LIKE '__e_e%' ;





















