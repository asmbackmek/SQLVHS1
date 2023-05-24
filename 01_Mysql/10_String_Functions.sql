/*
String Function

*/
-- Concat()
SELECT concat('Hallo','zusammen') Begrüßung;
SELECT concat('Hallo',' ','zusammen') Begrüßung;
SELECT concat('Hallo ','zusammen') Begrüßung;
SELECT concat('Hallo ','zusammen', 12) Begrüßung;

USE uebungshule2;
SELECT * FROM lehrer;
SELECT concat(name,'->',status) AS Lehrer_status FROM lehrer;
SELECT concat('Hallo ',name,', Sie sind ',status) AS Lehrer_status FROM lehrer;

-- Concat_ws()
SELECT concat_ws(' ','Hallo','zusammen');
SELECT concat_ws('->',name,status) AS Lehrer_status FROM lehrer;

-- char_length()
SELECT char_length('Asmae');
SELECT name , char_length(name) 'namenlänge' FROM lehrer;

-- Substring()
SELECT substr('Hallo liebe Teilnehmende',7,5);
-- LEft()
SELECT left('Hallo liebe Teilnehmende',5);

-- right()
SELECT right('Hallo liebe Teilnehmende',13);

-- Upper(), Lower()
SELECT ('Hallo liebe Teilnehmende') Eingangstext,
UPPER('Hallo liebe Teilnehmende') UPPER,
lower('Hallo liebe Teilnehmende') lower;

SELECT name,
upper(name),lower(name) FROM lehrer;












