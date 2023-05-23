USE uebungschule2;
SHOW TABLES;
SELECT * FROM lehrer;

/*
Aggregat Funktionen
SUM()
MIN()
MAX()
AVG()
COUNT()
*/
--
SELECT SUM(gehalt) 'Summe der Gehälter ' FROM lehrer;
SELECT MIN(gehalt) 'Minimum Gehalt ' FROM lehrer;

SELECT MIN(gehalt) 'Minimum Gehalt ',
	   MAX(gehalt) 'Maximum Gehalt ',
       AVG(gehalt) 'Average Gehalt',
       SUM(gehalt) 'Summe der Gehälter ' FROM lehrer;

SELECT COUNT(id) FROM lehrer;

SELECT COUNT(m_email) FROM vhs_bu_mai.mutter;
SELECT COUNT(*) FROM vhs_bu_mai.mutter;

