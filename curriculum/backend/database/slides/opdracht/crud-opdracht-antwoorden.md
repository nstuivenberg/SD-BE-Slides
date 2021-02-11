# Oefenen met SQL (1)
Voor deze opdracht heb je de tabellen duif, losplaats en lid nodig.

Voor deze opdrachten kun je deze website gebruiken om dingen op te zoeken of verdiepend in te gaan op stof uit de
slides: https://www.postgresqltutorial.com/.

Het kan zijn dat je bij de SELECT opdrachten niet genoeg data in je database hebt staan om een resultaat terug te
krijgen bij je SELECT statement. Je kunt dan zelf wat extra (dummy)-data toevoegen.

## INSERT
Voeg de volgende vijf duiven toe aan je database:
* Bert, NL-21-1234568, doffer, 2021
* Sjaak, NL-21-1234597, duivin, 2021
* Henk, NL-21-1234467, duivin, 2021
* Aart, NL-21-1234367, doffer, 2021
* Mootje, NL-21-1222456, duivin, 2021



Het kan zijn dat jouw tabel (geheel logisch) geen namen van duiven kan opslaan. Deze hoef je dan niet toe te voegen.
** BONUSopdracht: ** Kijk of je via `ALTER TABLE` de tabel zo kan aanpassen dat ook namen opgeslagen kunnen worden.

### Antwoord inclusief bonus
Documentatie en antwoorden:
 * https://www.postgresqltutorial.com/postgresql-alter-table/
 * https://www.postgresqltutorial.com/postgresql-insert/

```sql
ALTER TABLE pigeon 
ADD COLUMN name varchar(64);

INSERT INTO pigeon (name, ringnumber, sex, birthdate)
VALUES('Bert', 'NL211234568', 'doffer', '2021-01-01');
INSERT INTO pigeon (name, ringnumber, sex, birthdate)
VALUES('Sjaak', 'NL211234597', 'duivin', '2021-01-01');
INSERT INTO pigeon (name, ringnumber, sex, birthdate)
VALUES('Henk', 'NL211234467', 'duivin', '2021-01-01');
INSERT INTO pigeon (name, ringnumber, sex, birthdate)
VALUES('Aart', 'NL211234367', 'doffer', '2021-01-01');
INSERT INTO pigeon (name, ringnumber, sex, birthdate)
VALUES('Mootje', 'NL211222456', 'duivin', '2021-01-01');

```

## INSERT (2)
Voeg de volgende 10 duiven in 1 query aan je database toe. Dus gebruik maak 1 keer `INSERT INTO`
 * Pim, NL-19-1234568, doffer, 2019
* Otis, NL-18-1234597, duivin, 2018
* Rooie, NL-20-1234467, duivin, 2020
* Blauwe, NL-16-1234367, doffer, 2016
* Grijsje, NL-15-1222456, duivin, 2015
* Adelaartje, NL-14-1222456, doffer, 2014
* Witte, NL-12-1222456, duivin, 2012
* Spoetnik, NL-20-1222456, duivin, 2020
* Apollo, NL-18-1222456, doffer, 2018
* Kraai, NL-17-1222456, duivin, 2017

Antwoord kan hier gevonden worden: https://www.postgresqltutorial.com/postgresql-insert-multiple-rows/
```sql
INSERT INTO pigeon (name, ringnumber, sex, birthdate)
VALUES ('Pim', 'NL191234568', 'doffer', '2019-01-01'),
('Otis', 'NL181234597', 'duivin', '2018-01-01'),
('Rooie', 'NL201234467', 'duivin', '2020-01-01'),
('Blauwe', 'NL161234367', 'doffer', '2016-01-01'),
('Grijsje', 'NL151222456', 'duivin', '2015-01-01'),
('Adelaartje', 'NL141222456', 'doffer', '2014-01-01'),
('Witte', 'NL121222456', 'duivin', '2012-01-01'),
('Spoetnik', 'NL201222456', 'duivin', '2020-01-01'),
('Apollo', 'NL181222456', 'doffer', '2018-01-01'),
('Kraai', 'NL171222456', 'duivin', '2017-01-01');
```



## INSERT (3)
Voeg de volgende duif toe:
Haasje, NL-20-1222456, doffer, 2020

Welke foutmelding krijg je?
```sql
    INSERT INTO pigeon (name, ringnumber, sex, birthdate)
    VALUES('Haasje', 'NL201222456', 'doffer', '2020-01-01')
```

> ERROR:  duplicate key value violates unique constraint "pigeon_pkey"
> DETAIL:  Key (ringnumber)=(NL201222456) already exists.
> SQL state: 23505

## INSERT (4)
Als het goed is heb je een CHECK aan je duiven-tabel toegevoegd. Kijkt of die werkt. Voeg de volgende duif toe:
Error, NL-12-1234567, Man, 12
```sql
    INSERT INTO pigeon (name, ringnumber, sex, birthdate)
    VALUES('Error', 'NL121234567', 'Man', '2012-01-01')
```

>ERROR:  new row for relation "pigeon" violates check constraint "pigeon_sex_check"
DETAIL:  Failing row contains (NL121234567, Man, 2012-01-01, Error).
SQL state: 23514

## Insert (5)
Voeg vijf personen toe aan de lid database. Zorg dat bij 1 persoon het geslacht leeg is.

```sql
INSERT INTO person (firstname, lastname, birthdate, sex, bank_account_number, phone_number, email, member_since, last_paid)
VALUES ('Nick', 'Stuivenberg', '1990-03-10', 'm', 'NL12INGB121317182', '0612345678', 'n@n.nl', DEFAULT, DEFAULT),
('Nova', 'Eeken', '1991-12-12', 'f', 'NL12INGB121317181', '0612345675', 'nova@nova.nl', DEFAULT, DEFAULT),
('Sjaak', 'Patat', '1920-05-14', NULL, 'NL12INGB121317444', '0632144678', 'sjaak@patat.nl', '2001-01-10', '2020-01-01'),
('Harry', 'Flierefluiter', '1936-02-01', 'm', 'NL12RABO021317963', '0612335888', 'harry@msn.nl', DEFAULT, DEFAULT),
('Birgit', 'Fruitvlieg', '1975-08-28', 'f', 'NL12INGB121317182', '0612345678', 'bri@kaas.nl', '2014-01-01', '2020-01-12')
```

## UPDATE
 * Verander de naam van NL-19-1234568 naar `Pimmetje`
 * Verander de naam van Adelaartje naar Adel
 * Verander het geboortejaar en het ringnummer van Kraai naar: 2018 en NL-18-1333456
 * NL-21-1234367 blijkt een duivin te zijn. Pas dit aan.

```sql
UPDATE pigeon
SET name = 'Pimmetje'
WHERE ringnumber = 'NL191234568';

UPDATE pigeon
SET name = 'Adel'
WHERE name = 'Adelaartje';

UPDATE pigeon
SET birthdate = '2018-01-01' , ringnumber = 'NL181333456'
WHERE ringnumber = 'NL171222456';

UPDATE pigeon
SET sex = 'duivin'
WHERE ringnumber = 'NL211234367';

```

## Delete (1)
 * Verwijder alle personen die geen geslacht hebben uit de database.
 * NL-12-1222456 doet niet meer mee aan wedstrijden. Verwijder deze.

```sql
DELETE FROM person
WHERE sex IS NULL OR sex = '';

DELETE FROM pigeon
WHERE ringnumber = 'NL121222456';
```

## SELECT (1)
Selecteer alle informatie van alle duiven.
```sql
    SELECT *
    FROM pigeon
```

## SELECT (2)
Selecteer alle informatie van alle jonge duiven.
```sql
-- optie 1
SELECT *
FROM pigeon
WHERE birthdate = '2021-01-01';

-- optie 2
SELECT *
FROM pigeon
WHERE EXTRACT(year FROM birthdate) = EXTRACT(year FROM now());

-- optie 3
SELECT *
FROM pigeon
WHERE birthdate >= '2021-01-01' AND birthdate <= '2021-12-31'

-- optie 4
SELECT *
FROM pigeon
WHERE birthdate BETWEEN '2021-01-01' AND '2021-12-31' 
```

## SELECT (3)
Selecteer het geslacht en de ringnummer van alle duiven.

```sql
SELECT sex, ringnumber
FROM pigeon
```

## SELECT (4)
Selecteer de ringsnummer van alle jonge duiven.
```sql
SELECT ringnumber
FROM pigeon
WHERE EXTRACT(year FROM birthdate) = EXTRACT(year FROM now());
```

## SELECT (5)
Selecteer alle ringnummers van alle **niet** jonge duiven.
```sql
SELECT ringnumber
FROM pigeon
WHERE EXTRACT(year FROM birthdate) != EXTRACT(year FROM now());
```

## DELETE (2)
Verwijder alle data uit de losplaats tabel
```sql
DELETE 
FROM drop_location;
```

## SELECT (6) -  Zelf uitzoeken
Vind een manier om de database het aantal mensen te laten tellen.
```sql
SELECT COUNT(*)
FROM person
```

## SELECT (7)
Selecteer alle leden geboren voor 1970
```sql
SELECT *
FROM person
WHERE birthdate < '1970-01-01';
```

## SELECT (8) - Zelf uitzoeken
Selecteer alle leden geboren tussen 1950 en 1960
```sql
SELECT *
FROM person
WHERE birthdate >= '1950-01-01' AND birthdate < '1961-01-01';

-- optie 2
SELECT *
FROM person
WHERE birthdate BETWEEN '1950-01-01' AND '1960-12-31';
```

## SELECT (9) - Zelf uitzoeken
Selecteer alle voor- en achternamen en het e-mailadres van de leden waarvan we geen geboortedatum hebben.

```sql
SELECT firstname, lastname, email
FROM person
WHERE birthdate IS NULL;
```

## SELECT (10) - Zelf uitzoeken
Selecteer de voor- en achternaam en inschrijvingsdatum gesorteerd op inschrijvingsdatum (aflopend).
Informatie: https://www.postgresqltutorial.com/postgresql-order-by/
```sql
SELECT firstname, lastname, member_since
FROM person
ORDER BY member_since DESC;
```

## SELECT (11) - Zelf uitzoeken
Selecteer de voor- en achternaam en inschrijvingsdatum gesorteerd op inschrijvingsdatum (oplopend).
```sql
SELECT firstname, lastname, member_since
FROM person
ORDER BY member_since;

-- of (ASC is default value, dus dit hoeft niet)

SELECT firstname, lastname, member_since
FROM person
ORDER BY member_since ASC;
```

## SELECT (12) - Zelf uitzoeken
Selecteer de voornaam en het e-mailadres van het langst ingeschreven vrouwelijke lid.

Extra informatie: https://www.postgresqltutorial.com/postgresql-limit/
```sql
SELECT firstname, lastname, email
FROM person
WHERE sex = 'f'
ORDER BY member_since
LIMIT 1;
```

## SELECT (13) - Zelf uitzoeken
Selecteer alle duivennamen die met Ap beginnen. (Mocht je geen duivennamen bijhouden, doe het dan op de leden tabel)

Meer informatie: https://www.postgresqltutorial.com/postgresql-like/
```SQL
SELECT name
FROM pigeon
WHERE name LIKE 'Ap%'
```

## SELECT (14) - Zelf uitzoeken
Tel het aantal doffers in de database

Meer informatie: https://www.w3schools.com/sql/sql_count_avg_sum.asp
```sql
SELECT COUNT(*)
FROM pigeon
WHERE sex = 'doffer';
```

## SELECT (15) - Zelf uitzoeken
Selecteer het ringnummer van de vijf oudste duivinnen.
```sql
SELECT ringnumber
FROM pigeon
WHERE sex = 'duivin'
ORDER BY birthdate, ringnumber --ringnumber is een toevoeging, wanneer de date gelijk is, kijken we daarna naar het ringnumber.
LIMIT 5;
```

## Extra
Zoek uit hoe je een gehele tabel kunt verwijderen.
```sql
DROP TABLE IF EXISTS drop_location 
CASCADE;

```

