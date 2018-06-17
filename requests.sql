--- afficher nom et prénom de tous les clients

SELECT lastname,firstname 
FROM client;


--- afficher toutes les titres de film
SELECT title
FROM film;

--- afficher le film vu par la liste de clients
SELECT DISTINCT lastname,firstname
FROM ticket 
LEFT JOIN client ON FKidclient = idclient
LEFT JOIN projection ON FKidprojection = idprojection
LEFT JOIN film ON FKidfilm = idfilm
WHERE title = 'Taxi Driver'

--- afficher le film vu cette semaine par la liste de clients
SELECT DISTINCT lastname,firstname
FROM ticket 
LEFT JOIN client ON FKidclient = idclient
LEFT JOIN projection ON FKidprojection = idprojection
WHERE WEEK(debut) <= WEEK(current_date()) 
	AND WEEK(debut) >= WEEK(current_date())-1

--- afficher le nombre de places disponibles d'une salle


