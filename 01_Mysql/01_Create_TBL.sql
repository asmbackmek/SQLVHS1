/*
DDL Befehle:
Create
ALter
DROP
*/
# 1. DB erstellen
CREATE DATABASE vhs_bu_mai;

# 2. DB auswählen
USE vhs_bu_mai;

# 3. Tabellen anlegen

# 3-1 Tabelle ohne Primary Key
CREATE TABLE test1
(
test_id INT,
test_name VARCHAR(100)
);

# 3-2 Tabelle mit Primary Key
CREATE TABLE test2
(
test_id INT PRIMARY KEY, -- Primary Key = NOT NULL + UNIQUE
test_name VARCHAR(100)
);


CREATE TABLE test3
(
test_id INT,
test_name VARCHAR(100),
test_datum DATE,
PRIMARY KEY(test_name)
);

CREATE TABLE test4
(
test_id INT,
test_name VARCHAR(100),
test_datum DATE,
PRIMARY KEY(test_name,test_datum)
);

# Tabelle tbl löschen

DROP TABLE test1;
DROP TABLE test2,test3,test4;

# Tabelle Anzeigen:
SELECT * FROM test2; -- Select all (*) from Tbl_name

# Tabelle anpassen
-- Add Column
ALTER TABLE test2
ADD test_datum CHAR(13); -- ADD Spaltenname Datentyp

-- Ändere Datatype
ALTER TABLE test2
MODIFY test_datum DATE;

-- Ändere der Spaltennamen
ALTER TABLE test2
CHANGE test_datum test_date DATE; -- Alter TABLE Tbl_name CHANGE alte_Spaltenname neue_Spaltenname Datentyp

-- Drop Column
ALTER TABLE test2 DROP COLUMN test_date;

















































