/*
Order By
*/
USE uebungschule2;

-- Ascending order -> Aufsteigend A-->z  0 -->10
SELECT * FROM Lehrer;
SELECT * FROM Lehrer ORDER BY id;
SELECT * FROM Lehrer ORDER BY id ASC;

SELECT * FROM lehrer ORDER BY name;
SELECT * FROM lehrer ORDER BY status, name;
SELECT * FROM lehrer ORDER BY status ASC, name ASC;

-- Descending order -> Absteigend z-->a  10 -->0
SELECT * FROM Lehrer ORDER BY id DESC;
SELECT * FROM lehrer ORDER BY name DESC;
SELECT * FROM lehrer ORDER BY status DESC, name DESC;

SELECT * FROM lehrer ORDER BY status ASC, name DESC;

-- Limit
SELECT * FROM lehrer LIMIT 3;
SELECT * FROM lehrer  ORDER BY id DESC LIMIT 4;
SELECT * FROM lehrer LIMIT 1;



