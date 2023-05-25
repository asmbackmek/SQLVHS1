USE uebungschule2;

-- 01 Erstellung von View

CREATE VIEW VW_Lehrer_fach AS

SELECT l.name, f.fachbezeichnung
FROM lehrer l inner JOIN lehrer_hat_faecher lf
ON l.id = lf.idLehrer
inner join faecher f
on lf.idFaecher = f.id
order By l.name;

-- 02 Verwendung

SELECT * FROM VW_Lehrer_fach;
SELECT name FROM uebungschule2.VW_Lehrer_fach;

-- 03 DROP View
DROP VIEW VW_Lehrer_fach; 
