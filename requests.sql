--- afficher nom et prénom de tous les clients

SELECT lastname,firstname 
FROM client;


--- afficher toutes les titres de film
SELECT title
FROM film;

--- récupérer la liste des clients qui ont vu un film donné
SELECT DISTINCT lastname,firstname,title
FROM ticket 
LEFT JOIN client ON FKidclient = idclient
LEFT JOIN projection ON FKidprojection = idprojection
LEFT JOIN film ON FKidfilm = idfilm
WHERE title = 'Taxi Driver'

--- récupérer la liste des clients qui ont vu un film cette semaine
SELECT DISTINCT lastname,firstname
FROM ticket 
LEFT JOIN client ON FKidclient = idclient
LEFT JOIN projection ON FKidprojection = idprojection
WHERE WEEK(debut) <= WEEK(current_date()) 
	AND WEEK(debut) >= WEEK(current_date())-1

--- savoir si une salle est pleine (plus de reservation possible)
SELECT idroom,debut
FROM ticket 
LEFT JOIN projection ON FKidprojection = idprojection
LEFT JOIN room ON FKidroom = idroom
WHERE seat = capacity;


