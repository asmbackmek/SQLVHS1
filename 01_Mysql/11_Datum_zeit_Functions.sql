-- System functions : Datum  un Zeit

SELECT 
	DAY('1989-07-03') 'die Tageszahl',
    month('1989-07-03') 'die Monatszahl',
   YEAR('1989-07-03') 'die Jahresszahl'
    
;

-- Curent date
-- -------------------
SELECT current_date();
SELECT curdate();
SELECT DATE (current_timestamp());
-- SELECT current_timestamp();

-- Current time
SELECT current_time();
select curtime();

SELECT 
	DAY(current_date()) 'die Tageszahl',
    month(current_date()) 'die Monatszahl',
   YEAR(current_date()) 'die Jahresszahl'
    
;

SELECT 
	DAYNAME(current_date()) 'die Tageszahl',
    monthname(current_date()) 'die Monatszahl',
   YEAR(current_date()) 'die Jahresszahl'
    
;
select dayname(current_date());
select dayofmonth(current_date());
select dayofweek(current_date());		-- Gibt den Wochentagindex für date zurück (1 = Sonntag, 2 = Montag, …, 7 = Sonnabend). 


select(quarter(curtime()));


select(month(curtime()));
select(monthname(curtime()));
select(hour(curtime()));
select(minute(curtime()));
select(second(curtime()));


select sec_to_time(54778);
select(last_day(current_date()));

--	---------------------------------------------------------------------------------------
-- AUFGABE: Die Funktion SELECT DATEDIFF() zeigt die Zeit die zwischen zwei Datumsangaben vergangen ist. 

select datediff('2022-02-05','2020-06-15');

--	---------------------------------------------------------------------------------------
--	---------------------------------------------------------------------------------------
-- AUFGABE: zu einem beliebigen- bzw dem aktuellen Datum eine 
-- beliebige Zeitspanne hinzufügen oder abziehen

select adddate('2019-07-22', 1);
select date_add('2019-07-22', interval 10 day);
select date_add('2019-07-22', interval 10 month);

select current_time();
select addtime(current_time(),'01:12:00');


