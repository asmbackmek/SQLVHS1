USE uebungschule2;

/*
Group by
*/
SHOW TABLES;
SELECT * FROM Lehrer;
SELECT * FROM Orte;
SELECT * FROM Faecher;

-- ----------------------------

SELECT Status, count(status) FROM lehrer
GROUP BY status;

SELECT Status, count(status), Sum(gehalt) FROM lehrer
GROUP BY status;

SELECT idOrte,orte.name, count(lehrer.id) FROM lehrer,orte
WHERE idOrte = orte.id
GROUP BY idOrte;



SELECT idOrte,orte.name, count(lehrer.id) FROM lehrer,orte
WHERE idOrte = orte.id
GROUP BY idOrte
having idOrte IN (1,3,5);


SELECT idOrte,orte.name, count(lehrer.id) FROM lehrer,orte
WHERE idOrte = orte.id
GROUP BY idOrte
HAVING  count(lehrer.id) > 4 ;


SELECT status,idOrte,orte.name, count(lehrer.id) FROM lehrer,orte
WHERE idOrte = orte.id and status = 'Beamter'
GROUP BY idOrte;










