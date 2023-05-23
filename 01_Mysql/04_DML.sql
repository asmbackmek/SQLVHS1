/*
DML Befehle:
insert
delete
update
*/

-- insert
INSERT INTO klasse (k_name) VALUE ('1A'),('1B'),('1C');


SELECT * FROM mutter;
-- update
UPDATE mutter 
SET m_vorname = 'monika'
WHERE m_id = 10;

UPDATE mutter 
SET m_age = 50, m_telephone='0176554532',m_email ='mo.d@gmal.com'
WHERE m_id = 10;

UPDATE mutter
SET m_age = 44
WHERE m_id < 4;

-- delete
SELECT * FROM schueler1;
SELECT * FROM mutter;
DELETE FROM mutter
WHERE m_id = 3;

# hier kann ich die mama mit der id 1 nicht löschen
DELETE FROM mutter
WHERE m_id = 1;

# ich lösche erstmal die Kinder bon der Mama mit der Id 1
DELETE FROM schueler1
WHERE s_id IN (10,11);


# jetzt kann ich die Mam mit der id 1 löschen
DELETE FROM mutter
WHERE m_id = 1;






