USE uebungschule2;

-- Procedure erstellen
DELIMITER //
CREATE PROCEDURE Pro_lehrer_fach()
BEGIN

SELECT l.name, f.fachbezeichnung
FROM lehrer l inner JOIN lehrer_hat_faecher lf
ON l.id = lf.idLehrer
inner join faecher f
on lf.idFaecher = f.id
order By l.name;



END //
DELIMITER ;

-- 02 Verwendung
CALL Pro_lehrer_fach();

-- 03 Drop Procedure
DROP PROCEDURE Pro_lehrer_fach;


