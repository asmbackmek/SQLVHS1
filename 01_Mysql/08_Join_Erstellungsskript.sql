CREATE DATABASE unternehmen_Tom;

USE unternehmen_Tom;

CREATE TABLE mitarbeiter
(ID_Mitarbeiter INT AUTO_INCREMENT PRIMARY KEY,
Vorname VARCHAR(100),
Nachname VARCHAR(100),
Email VARCHAR(100),
CONSTRAINT Chek_Email CHECK (Email LIKE "%@%")
);

CREATE TABLE auto
(ID INT AUTO_INCREMENT PRIMARY KEY,
FK_ID_Mitarbeiter INT,
Auto_Kennzeichen VARCHAR(10) CHECK(Auto_Kennzeichen LIKE "%-%"),
CONSTRAINT FK_ID_Mitarbeiter_in_auto FOREIGN KEY(FK_ID_Mitarbeiter) REFERENCES mitarbeiter(ID_Mitarbeiter));

CREATE TABLE projekt
(ID_Projekt int PRIMARY KEY,
Projekt_Title varchar(100),
Start_Datum varchar(10),
End_Datum varchar(10)
);

CREATE TABLE zuweisung
(ID int AUTO_INCREMENT PRIMARY KEY,
FK_ID_Mitarbeiter int,
FK_ID_Projekt int,
CONSTRAINT FK_ID_Mitarbeiter_in_zuweisung FOREIGN KEY(FK_ID_Mitarbeiter) REFERENCES mitarbeiter(ID_Mitarbeiter),
CONSTRAINT FK_ID_Projekt FOREIGN KEY(FK_ID_Projekt) REFERENCES projekt(ID_Projekt)
);

INSERT INTO mitarbeiter VALUES
	(1001, "Thomas", "Meier", "t.m@..."),
	(1002, "Sara", "Möller", "s.m@..."),
	(1003, "Ingo", "Vry", "i.v@...");
INSERT INTO auto (FK_ID_Mitarbeiter, Auto_Kennzeichen) VALUES
	(1001, "HH-1234"),
    (1002, "FM-852"),
    (1002, "FM-242");
INSERT INTO projekt VALUES
	(50, "Projekt A", "01/01/2020", "10/10/2021"),
    (60, "Projekt B", "01/01/2020", "10/10/2021"),
    (70, "Projekt C", "01/01/2020", "10/10/2021"),
    (80, "Projekt D", "01/01/2020", "10/10/2021");
INSERT INTO zuweisung (FK_ID_Mitarbeiter, FK_ID_Projekt) VALUES
	(1001, 50),
    (1001, 60),
    (1002, 50);
    
SELECT * FROM mitarbeiter;
SELECT * FROM auto;
SELECT * FROM projekt;
SELECT * FROM zuweisung;

