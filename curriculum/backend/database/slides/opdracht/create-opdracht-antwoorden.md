# Oefenen met tabellen aanmaken
Voor deze opdrachten kun je deze website gebruiken om dingen op te zoeken of verdiepend in te gaan op stof uit de
slides: https://www.postgresqltutorial.com/.


## Database
Maak een nieuwe database aan in pgAdmin en noem deze postduif.

## Maak de tabel duif
De tabel duif moet de volgende gegevens bevatten:
 * Ringnummer,
 * geslacht,
 * geboortedatum.

```sql
-- We zorgen er eerst voor dat de tabel wordt verwijderd, mocht die bestaan
DROP TABLE if exists pigeon CASCADE;

CREATE TABLE pigeon (
   ringnumber VARCHAR(11) PRIMARY KEY,
   sex varchar(6) CHECK (sex = 'doffer' OR sex = 'duivin') NOT NULL,
   birthdate date NOT NULL
);

-- De geboortedatum is niet per se nodig, want het geboortejaar is onderdeel van het ringnummer.

```

Houd rekening met de volgende punten:
 1. Verzin zelf de datatypes.
 1. Geen enkel veld mag leeg zijn
 1. Geboortedatum mag ook jaar zijn.
 1. Kun je een check maken voor geslacht? Hier mag alleen doffer of duivin ingevoerd worden.
 1. Het ringnummer bestaat altijd uit een x aantal tekens. Dwing dit af.
 1. Alle tabel- en kolomnamen moeten in het **engels**.
 1. Bedenk bij jezelf, is geboortedatum echt nodig?

## Maak de tabel lid
De tabel lid moet de volgende gegevens kunnen bijhouden:
1. Geboortedatum lid
1. voornaam lid
2. achternaam lid
1. geslacht lid
1. Rekeningnummer lid
1. Telefoonnummer lid
1. emailadres lid
1. lid sinds
1. datum laatste betaling contributie

```sql
DROP TABLE if exists person CASCADE;

CREATE TABLE person (
id INT GENERATED ALWAYS AS IDENTITY,
firstname varchar(64) NOT NULL,
lastname varchar(64) NOT NULL,
birthdate date,
sex char(1) check(sex = 'f' OR sex = 'm'),
bank_account_number varchar(64),
phone_number varchar(10) NOT NULL, 
email varchar(64) UNIQUE NOT NULL, 
member_since date DEFAULT CURRENT_DATE, -- CURRENT_DATE is een manier om de huidige datum te krijgen
last_paid date DEFAULT now() -- now() is een manier om de huidige datum te krijgen.
);

```

Paar dingen om op te letten:
 * Is er al data in de tabel aanwezig die als Primary Key kan dienen en die je ook zou willen gebruiken om iemand te
   identificeren?
 * Welke kolommen kunnen uniek gemaakt worden? Houd hierbij rekening met:
   * Leden kunnen op hetzelfde adres wonen.
   * Ieder lid moet een eigen e-mailadres opgeven.
 * De volgende data is niet verplicht: Geslacht, rekeningnummer en geboortedatum.
 * Bij inschrijving betaalt de lid altijd direct zijn contributie.
 * Zelf uitzoeken: Kun je een DEFAULT waarde aan `datum laatste betaling contributie` en `lid sinds` geven. De default-waarde
   is dan de dag van invoer.
 * Alle tabel- en kolomnamen moeten in het **engels**.
   
## Maak de tabel losplaats
De tabel losplaats bevat minimaal de volgende gegevens:
* x coordinaat
* y coordinaat
* plaatsnaam

Verzin zelf welke *constraints* voor deze tabel moeten gelden.

** In onderstaand voorbeeld worden het X en Y coordinaten SAMEN als PRIMARY KEY geconfigureerd **.

```sql
DROP TABLE if exists drop_location CASCADE;

CREATE TABLE drop_location (
   latitude NUMERIC(9,6) NOT NULL,
   longitude NUMERIC(9,6) NOT NULL, 
   city VARCHAR(32) NOT NULL,
   PRIMARY KEY (latitude, longitude)
);
```

In *real life* wil je gebruikmaken van postGIS of Point datatype. Dat doen we hier niet. Zie
https://stackoverflow.com/questions/8150721/which-data-type-for-latitude-and-longitude voor meer informatie.

