#0a. Even inkomen
Selecteer voor- en achternaam van alle klanten

#0b. Even inkomen
Tel het aantal klanten.

#0c. Even inkomen
Selecteer de titels van alle films van voor 1980

#0d. Even inkomen
Selecteer de titels van alle films van na 1990

#0e. Even inkomen
Selecteer de titels van alle films tussen 1930 en 1975

# 1.
Selecteer filmtitels in het Japans

#2. 
Selecteer filmtitels in het Italiaans met een G rating

#3.
Selecteer voor- en achternaam van de acteurs die in Cheaper Clyde hebben gespeeld.

```sql
SELECT actor.first_name, actor.last_name
FROM actor
INNER JOIN film_actor ON actor.actor_id = film_actor.actor_id
INNER JOIN film on film_actor.film_id = film.film_id
WHERE film.title = 'Cheaper Clyde';
```

#4.
Selecteer alle stadsnamen uit Nederland
```sql
SELECT city.city
FROM city
INNER JOIN country on city.country_id = country.country_id
WHERE country = 'Netherlands' 
```


#5. 
Selecteer stadsnamen, address, addres2, postal_code uit Nederland
```sql
SELECT address.address, address.address2, address.postal_code, city.city
FROM address
INNER JOIN city on address.city_id = city.city_id
INNER JOIN country on city.country_id = country.country_id
WHERE country = 'Netherlands' 
```


#6. 
Selecteer de titel en rating van alle actie films
```sql
SELECT film.title, film.rating
FROM film
INNER JOIN film_category on film.film_id = film_category.film_id
INNER JOIN category on film_category.category_id = category.category_id
WHERE category.name = 'Action'
```

#7.
Selecteer de titel en rating van alle animatiefilms
```sql
SELECT film.title, film.rating
FROM film
INNER JOIN film_category on film.film_id = film_category.film_id
INNER JOIN category on film_category.category_id = category.category_id
WHERE category.name = 'Animation'
```

#8.
Selecteer de gemiddelde rating van alle actie films.
```sql
SELECT AVG(film.length)
FROM film
INNER JOIN film_category on film.film_id = film_category.film_id
INNER JOIN category on film_category.category_id = category.category_id
WHERE category.name = 'Action'
```

#9.
Selecteer de titel van alle animatie- en actie films.
```sql
SELECT film.title
FROM film
INNER JOIN film_category on film.film_id = film_category.film_id
INNER JOIN category on film_category.category_id = category.category_id
WHERE category.name = 'Animation'
OR category.name = 'Action'
```

#10. Lastig
Geef de gemiddelde rating van alle genres.
```sql
SELECT AVG(film.length)
FROM film
```

#11. Lastig
Selecteer alle klanten uit Nederland.
```sql
SELECT *
FROM Customer
INNER JOIN Address ON customer.address_id = address.address_id
INNER JOIN city on address.city_id = city.city_id
INNER JOIN country on city.country_id = country.country_id
WHERE country = 'Netherlands' 
```

# Theorievragen:

 * Hoe zorgen ze ervoor dat een winkel meerdere van dezelfde dvd's kan hebben?
```sql
   -- Door het gebruik van een inventory tabel
   ```
 * Hoe zorgen ze ervoor dat een klant meerdere films kan huren?
 ```sql
  -- Door  de rental tabel. Een klant kan 1 of meerdere rentals hebben.
 ```


