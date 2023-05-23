USE vhs_bu_mai;
/*
DML Befehle:
insert
delete
update
*/
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

-- insert
INSERT INTO mutter VALUE (1,'marie','herd',35,'0123457','m.b@gmail.com','berlin');
INSERT INTO mutter VALUE (2,'daria','bernd',40,'0167123457','d.b@gmail.com','bremen'),
(3,'faria','bernd',40,'0167123457','f.b@gmail.com','bremen'),(4,'moritz','stark',40,'0167123457','m.bb@gmail.com','kiel');

INSERT INTO schueler1 VALUE (10,'mathias','nord',1),(11,'mina','nord',1),(12,'nanouk','sud',2);
INSERT INTO schueler1(s_id) VALUE  (14);
-- Default
INSERT INTO mutter VALUE (9,'marie','herd',35,'0123457','m.b3@gmail.com',DEFAULT);

-- nicht alle Values eingeben
INSERT INTO mutter(m_id,m_nachname) VALUE (10,'gumm');
INSERT INTO mutter(m_vorname,m_id,m_nachname, m_age) VALUE ('Micha',11,'schmidt',20);

-- Fehlerhafte_inserts
INSERT INTO mutter VALUE (1,'marie','herd',35,'0123457','m.b@gmail.com','berlin');-- Error Code: 1062. Duplicate entry '1' for key 'mutter.PRIMARY'
INSERT INTO mutter VALUE (10,'marie','herd',35,'0123457','m.b@gmail.com','berlin');-- Error Code: 1062. Duplicate entry 'm.b@gmail.com' for key 'mutter.m_email'
INSERT INTO mutter VALUE (10,'marie','herd',16,'0123457','m.b3@gmail.com','berlin');-- Error Code: 3819. Check constraint 'mutter_chk_1' is violated.
INSERT INTO mutter(m_id) VALUE (12);-- Error Code: 1364. Field 'm_nachname' doesn't have a default value

INSERT INTO schueler1 VALUE (14,'mathias','nord',100);




SELECT * FROM mutter;
SELECT * FROM schueler1;

CREATE TABLE klasse( k_id INT PRIMARY KEY AUTO_INCREMENT, k_name VARCHAR(100));

INSERT INTO klasse (k_name) VALUE ('1A'),('1B'),('1C');
INSERT INTO klasse VALUE (100,'3A');
INSERT INTO klasse VALUE (200,'3B');
INSERT INTO klasse (k_name) VALUE ('2A'),('2B'),('2C');




SELECT * FROM klasse;









