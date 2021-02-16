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

#5. 
Selecteer stadsnamen, address, addres2, postal_code uit Nederland

#6. 
Selecteer de titel en rating van alle actie films

#7.
Selecteer de titel en rating van alle animatiefilms

#8.
Selecteer de gemiddelde rating van alle actie films.

#9.
Selecteer de titel van alle animatie- en actie films.

#10. Lastig
Geef de gemiddelde rating van alle genres.

#11. Lastig
Selecteer alle klanten uit Nederland.

# Theorievragen:

 * Hoe zorgen ze ervoor dat een winkel meerdere van dezelfde dvd's kan hebben?
 * Hoe zorgen ze ervoor dat een klant meerdere films kan huren?


