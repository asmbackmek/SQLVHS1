-- Tablle mkt Einschränkungen anlegen
USE vhs_bu_mai;
CREATE TABLE mutter
(
m_id INT PRIMARY KEY,
m_vorname VARCHAR(100) NULL,
m_nachname VARCHAR(100) NOT NULL,
m_age INT CHECK (m_age >=18),
m_telephone VARCHAR(100), -- NULL
m_email VARCHAR(100) UNIQUE,
m_herkunft_stadt VARCHAR(100) DEFAULT('Hamburg')
);



CREATE TABLE schueler1(
s_id INT PRIMARY KEY,
s_vorname VARCHAR(100),
s_nachame VARCHAR(100),
FK_m_id INT,
CONSTRAINT mutter_schueler1 FOREIGN KEY(FK_m_id) REFERENCES mutter(m_id)
);

CREATE TABLE schueler2(
s_id INT PRIMARY KEY,
s_vorname VARCHAR(100),
s_nachame VARCHAR(100),
FK_m_id INT,
FOREIGN KEY(FK_m_id) REFERENCES mutter(m_id)
);