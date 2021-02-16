# Oefenen met Foreign Key.

Bekijk onderstaande tabellen. Bedenk aan welke tabel je de kolom met de foreign key moet toevoegen. Je kunt de tabellen 
middels markdown aanpassen, maar je mag ook Word, draw.io of een ander favoriete tool gebruiken.

## Voorbeeld

Bekijk onderstaande tabellen. Pas deze aan met de volgende regels:

* Dit is een 0 tot 1 relatie.
* Een address kan niet bestaan zonder een relatie met een persoon.

##### Person
| id | first_name | last_name |
| :--- |:--- | : --- |
|1 | Nick | Stuivenberg
| 2| Nova | Eeken
|3| Sjaak | Polak
|4| Frederik | de Kleine

##### Address
| id | street_name| number | zip | 
| :--- | :--- | :--- | :---
1 | Zonnebaan | 9 | 3578AB
2 | Zonnebaan | 10 | 3579AB
3 | Zonnebaan | 11 | 3570AB
4 | Zonnebaan | 12 | 3571AB

### Uitwerking voorbeeld:
| id | first_name | last_name |
| :--- |:--- | : --- |
|1 | Nick | Stuivenberg
| 2| Nova | Eeken
|3| Sjaak | Polak
|4| Frederik | de Kleine

##### Address
| id | street_name| number | zip | user_id
| :--- | :--- | :--- | :--- | :---
1 | Zonnebaan | 9 | 3578AB | 4
2 | Zonnebaan | 10 | 3579AB | 3
3 | Zonnebaan | 11 | 3570AB | 1
4 | Zonnebaan | 12 | 3571AB | 2


## Opdracht 1
Bekijk onderstaande tabellen. Pas deze aan met de volgende regels:

* Dit is een 0 tot 1 relatie.
* Zowel hond als persoon kunnen los van elkaar bestaan.

##### Person
| id | first_name | last_name |
| :--- |:--- | : --- |
|1 | Nick | Stuivenberg
| 2| Nova | Eeken
|3| Sjaak | Polak
|4| Frederik | de Kleine

##### Dog
| id | name | species | owner_id
| :--- |:--- | : --- | :---
| 1 | Dotje | Terrier | 1
| 2 | Nelis | Labrador | 2
| 3 | Bram | Labradoodle | 3
| 4 | Frank | D. herder| 4
| 5 | Lassie | Wiener | null

### Jouw uitwerking #1

## Opdracht 2
Bekijk onderstaande tabellen. Pas deze aan met de volgende regels:

* Dit is een 0 tot N (nul tot meer) relatie.
* Een eigenaar kan meerdere honden hebben
* Een hond heeft altijd 1 eigenaar.

##### Person
| id | first_name | last_name |
| :--- |:--- | : --- |
|1 | Nick | Stuivenberg
| 2| Nova | Eeken
|3| Sjaak | Polak
|4| Frederik | de Kleine

##### Dog
| id | name | species | owner_id
| :--- |:--- | : --- | :---
| 1 | Dotje | Terrier |
| 2 | Nelis | Labrador |
| 3 | Bram | Labradoodle |
| 4 | Frank | D. herder |
| 5 | Lassie | Wiener |

### Jouw uitwerking #2


## Opdracht 3
Bekijk onderstaande tabellen. Pas deze aan met de volgende regels:

* Een persoon kan voor 0 of 1 bedrijf werken.
* Een bedrijf kan meerdere mensen in dienst hebben.
* Een bedrijf moet een address hebben.
* Een address moet bij een persoon of bedrijf horen.
* Een persoon is niet verplicht een adres te hebben.

##### Person
| id | first_name | last_name | address_id | company_id
| :--- |:--- | : --- | :--- | :---
|1 | Nick | Stuivenberg | 2 | 1
| 2| Nova | Eeken | null | 1
|3| Sjaak | Polak | null
|4| Frederik | de Kleine | null 

##### Address
| id | street_name| number | zip | 
| :--- | :--- | :--- | :--- | 
1 | Zonnebaan | 9 | 3578AB | 
2 | Zonnebaan | 10 | 3579AB | 
3 | Zonnebaan | 11 | 3570AB | 
4 | Zonnebaan | 12 | 3571AB |

##### Company
| id | name | address_id |
| :--- |:--- | : --- | 
1 | NOVI | 1
2 | LOI | 3
3 | NCOI | 4


### Jouw uitwerking #3

## Opdracht 4
Bedenk zelf de tabellen met de volgende regels:
* Een Persoon kan 0 tot meerdere duiven hebben
* Een duif heeft altijd 1 eigenaar.

### Jouw uitwerking #4
| id | first_name | last_name | 
| :--- |:--- | : --- | 
|1 | Nick | Stuivenberg |
| 2| Nova | Eeken | 
|3| Sjaak | Polak | 
|4| Frederik | de Kleine |

| ringnummer | naam | person_id
| :--- | :--- | :---
1 | sjaak | 1
2 | sjaak | 1


## Opdracht 5 (Doordenkertje)
Bekijk onderstaande tabellen. Pas deze aan met de volgende regels:
 * Een persoon kan voor 0 tot meerdere bedrijven werken.
 * Een bedrijf heeft 0 tot meerdere werknemers in dienst.

##### Person
| id | first_name | last_name
| :--- |:--- | : --- |
|1 | Nick | Stuivenberg
| 2| Nova | Eeken
|3| Sjaak | Polak
|4| Frederik | de Kleine

##### Company
| id | name | 
| :--- |:--- |
1 | NOVI |
2 | LOI | 
3 | NCOI | 


## Opdracht 6
Bekijk onderstaande tabellen. Pas deze aan met de volgende regels:

 * Een Persoon heeft 0 tot meerdere honden
 * Een hond heeft 0 tot meerdere baasjes

##### Person
| id | first_name | last_name |
| :--- |:--- | : --- |
|1 | Nick | Stuivenberg
| 2| Nova | Eeken
|3| Sjaak | Polak
|4| Frederik | de Kleine

##### Dog
| id | name | species
| :--- |:--- | : --- |
| 1 | Dotje | Terrier
| 2 | Nelis | Labrador
| 3 | Bram | Labradoodle
| 4 | Frank | D. herder
| 5 | Lassie | Wiener

### Uitwerking 6

**PersonDog**

| dog_id | person_id |
| :--- | :---
1 | 2
2 | 3
1 | 3
2 | 4
5 | 1

## Opdracht 7a
Bedenk zelf de tabellen met de volgende regels:
* Een winkel heeft meerdere producten.
* Een product kan in meerdere winkels liggen.

## Opdracht 7b
Breidt bovenstaande uitwerking uit:
* Een winkel heeft meerdere producten.
* Een product kan in meerdere winkels liggen.
* Per winkel wil je een product-voorraad bijhouden.

### Jouw uitwerking #7a

**ShopProduct**

| shop_id | product_id |
| :--- | :--- |
1 | 2
1 | 3
4 | 8

### Jouw uitwerking #7b

**ShopProduct -> Stock**

| shop_id | product_id | amount |
| :--- | :--- | :--- |
1 | 2 | 10
1 | 3 | 100
4 | 8 | 222


## Opdracht 8 
Bekijk onderstaande tabellen. Pas deze aan met de volgende regels:

* Een persoon heeft 0 tot meerdere adressen.
* Een adres kan bij 1 tot meerdere personen horen.
* Van elk adres wordt de begin- en einddatum bijgehouden.
* Bij een huidig adres is de einddatum null (leeg)


##### Person
| id | first_name | last_name |
| :--- |:--- | : --- |
|1 | Nick | Stuivenberg
| 2| Nova | Eeken
|3| Sjaak | Polak
|4| Frederik | de Kleine

##### Address
| id | street_name| number | zip | 
| :--- | :--- | :--- | :---
1 | Zonnebaan | 9 | 3578AB
2 | Zonnebaan | 10 | 3579AB
3 | Zonnebaan | 11 | 3570AB
4 | Zonnebaan | 12 | 3571AB

### Jouw uitwerking #8

**PersonAddress**

Wat is het voordeel van dit zo opslaan?

| person_id | address_id | start_date | end_date |
| :--- |:---|:---| :---
| 1 | 1 | 2020-01-01 | 2020-02-01
| 1 | 2 | 2020-02-01 | 2020-03-01
| 1 | 3 | 2020-03-01 | null


## Opdracht 9
Maak de volgende tabellen en relaties.
 * **Factuur:** datum, isBetaald
 * **Product:** id, naam, prijs
 * Een factuur bevat meerdere producten. Een product kan op meerdere facturen voorkomen.
 * Per factuur wil je ook de hoeveelheid van het product weten.

### Jouw uitwerking #9

**Order**

| id | date | amount_paid |
| :--- | :--- | :----
1 | 2020-01-01 | 0
2 | 2020-01-01 | 0
3 | 2020-01-01 | 0
4 | 2020-01-01 | 0
5 | 2020-01-01 | 0
6 | 2020-01-01 | 0
7 | 2020-01-01 | 0
8 | 2020-01-01 | 0

**Product**

| id |  name | price |
| :--- | :--- | :----
| 1 | Nerf gun | 12.00 |
| 2 | Nerf Blaster | 13.00 |
| 3 | Spoedwet | 1.50 |
| 4 | Avondklok | 685.00 |
| 5 | Hoger Beroep | 1250.00 |
| 6 | Coronatest | 50.66 |

**OrderProduct -> OrderLine**

| order_id | product_id | amount
| :--- | :--- | :----
1 | 1 | 1
1 | 2 | 1
2 | 3 | 1
2 | 4 | 2
2 | 5 | 1
2 | 6 | 100000

