-- JOINS

-- INNER JOIN 2 Tables
SELECT
	m.vorname,
    m.nachname,
    a.auto_kennzeichen
FROM mitarbeiter AS m INNER JOIN auto AS a
ON m.id_mitarbeiter = a.fk_id_mitarbeiter;

-- INNER JOIN 3 Tables
SELECT
	m.vorname,
    m.nachname,
    p.projekt_title
FROM mitarbeiter AS m
INNER JOIN zuweisung AS z
	ON m.id_mitarbeiter = z.fk_id_mitarbeiter
INNER JOIN projekt AS p
	ON z.fk_id_projekt = p.id_projekt
ORDER BY nachname;

-- LEFT JOIN 3 Tables
SELECT
	m.vorname,
    m.nachname,
    p.projekt_title
FROM mitarbeiter AS m
LEFT JOIN zuweisung AS z
	ON m.id_mitarbeiter = z.fk_id_mitarbeiter
LEFT JOIN projekt AS p
	ON z.fk_id_projekt = p.id_projekt
ORDER BY nachname;

-- RIGHT JOIN 3 Tables
SELECT
	m.vorname,
    m.nachname,
    p.projekt_title
FROM mitarbeiter AS m
RIGHT JOIN zuweisung AS z
	ON m.id_mitarbeiter = z.fk_id_mitarbeiter
RIGHT JOIN projekt AS p
	ON z.fk_id_projekt = p.id_projekt
ORDER BY nachname;