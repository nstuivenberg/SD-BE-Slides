# Oefenen met SQL (1)
Voor deze opdracht heb je de tabellen duif, losplaats en lid nodig.

Voor deze opdrachten kun je deze website gebruiken om dingen op te zoeken of verdiepend in te gaan op stof uit de
slides: https://www.postgresqltutorial.com/.

Het kan zijn dat je bij de SELECT opdrachten niet genoeg data in je database hebt staan om een resultaat terug te
krijgen bij je SELECT statement. Je kunt dan zelf wat extra (dummy)-data toevoegen.

## INSERT
Voeg de volgende vijf duiven toe aan je database:
* Bert, NL-21-1234568, Doffer, 2021
* Sjaak, NL-21-1234597, Duivin, 2021
* Henk, NL-21-1234467, Duivin, 2021
* Aart, NL-21-1234367, Doffer, 2021
* Mootje, NL-21-1222456, Duivin, 2021

Het kan zijn dat jouw tabel (geheel logisch) geen namen van duiven kan opslaan. Deze hoef je dan niet toe te voegen.
** BONUSopdracht: ** Kijk of je via `ALTER TABLE` de tabel zo kan aanpassen dat ook namen opgeslagen kunnen worden.

## INSERT (2)
Voeg de volgende 10 duiven in 1 query aan je database toe. Dus gebruik maak 1 keer `INSERT INTO`
 * Pim, NL-19-1234568, Doffer, 2019
* Otis, NL-18-1234597, Duivin, 2018
* Rooie, NL-20-1234467, Duivin, 2020
* Blauwe, NL-16-1234367, Doffer, 2016
* Grijsje, NL-15-1222456, Duivin, 2015
* Adelaartje, NL-14-1222456, Doffer, 2014
* Witte, NL-12-1222456, Duivin, 2012
* Spoetnik, NL-20-1222456, Duivin, 2020
* Apollo, NL-18-1222456, Doffer, 2018
* Kraai, NL-17-1222456, Duivin, 2017

```sql

```



## INSERT (3)
Voeg de volgende duif toe:
Haasje, NL-20-1222456, Doffer, 2020

Welke foutmelding krijg je?

## INSERT (4)
Als het goed is heb je een CHECK aan je duiven-tabel toegevoegd. Kijkt of die werkt. Voeg de volgende duif toe:
Error, NL-12-1234567, Man, 12

## Insert (5)
Voeg vijf personen toe aan de lid database. Zorg dat bij 1 persoon het geslacht leeg is.

## UPDATE
 * Verander de naam van NL-19-1234568 naar `Pimmetje`
 * Verander de naam van Adelaartje naar Adel
 * Verander het geboortejaar en het ringnummer van Kraai naar: 2018 en NL-18-1333456
 * NL-21-1234367 blijkt een duivin te zijn. Pas dit aan.

## Delete (1)
 * Verwijder alle personen die geen geslacht hebben uit de database.
 * NL-12-1222456 doet niet meer mee aan wedstrijden. Verwijder deze.

## SELECT (1)
Selecteer alle informatie van alle duiven.

## SELECT (2)
Selecteer alle informatie van alle jonge duiven.

## SELECT (3)
Selecteer het geslacht en de ringnummer van alle duiven.

## SELECT (4)
Selecteer de ringsnummer van alle jonge duiven.

## SELECT (5)
Selecteer alle ringnummers van alle **niet** jonge duiven.

## DELETE (2)
Verwijder alle data uit de losplaats tabel

## SELECT (6) -  Zelf uitzoeken
Vind een manier om de database het aantal mensen te laten tellen.

## SELECT (7)
Selecteer alle leden geboren voor 1970

## SELECT (8) - Zelf uitzoeken
Selecteer alle leden geboren tussen 1950 en 1960

## SELECT (9) - Zelf uitzoeken
Selecteer alle voor- en achternamen en het e-mailadres van de leden waarvan we geen geboortedatum hebben.

## SELECT (10) - Zelf uitzoeken
Selecteer de voor- en achternaam en inschrijvingsdatum gesorteerd op inschrijvingsdatum (aflopend).

## SELECT (11) - Zelf uitzoeken
Selecteer de voor- en achternaam en inschrijvingsdatum gesorteerd op inschrijvingsdatum (oplopend).

## SELECT (12) - Zelf uitzoeken
Selecteer de voornaam en het e-mailadres van het langst ingeschreven vrouwelijke lid.

## SELECT (13) - Zelf uitzoeken
Selecteer alle duivennamen die met Ap beginnen. (Mocht je geen duivennamen bijhouden, doe het dan op de leden tabel)

## SELECT (14) - Zelf uitzoeken
Tel het aantal doffers in de database

## SELECT (15) - Zelf uitzoeken
Selecteer het ringnummer van de vijf oudste duivinnen.

## Extra
Zoek uit hoe je een gehele tabel kunt verwijderen.

