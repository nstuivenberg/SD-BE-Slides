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
1. geslacht lid
1. Rekeningnummer lid
1. Telefoonnummer lid
1. emailadres lid
1. lid sinds
1. datum laatste betaling contributie

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

