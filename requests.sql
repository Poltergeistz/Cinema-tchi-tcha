--- afficher nom et prénom de tous les clients

SELECT lastname,firstname 
FROM client;


--- afficher toutes les titres de film
SELECT title
FROM film;

--- récupérer la liste des clients qui ont vu un film donné
SELECT DISTINCT lastname,firstname
FROM ticket 
LEFT JOIN client ON FKidclient = idclient
LEFT JOIN projection ON FKidprojection = idprojection
LEFT JOIN film ON FKidfilm = idfilm
WHERE title = 'Taxi Driver';

--- récupérer la liste des clients qui ont vu un film cette semaine
SELECT DISTINCT lastname,firstname
FROM ticket 
LEFT JOIN client ON FKidclient = idclient
LEFT JOIN projection ON FKidprojection = idprojection
WHERE WEEK(debut) <= WEEK(current_date()) 
	AND WEEK(debut) >= WEEK(current_date())-1;

--- savoir si une salle est pleine  , c'est à dire si on ne peut plus reserver pour cette séance
--- on ne s'intéresse donc que aux séances à venir, sinon la requête a moins de sens
--- on peut enlever la condition sur le jour , pour obtenir les salles remplies, par le passé
SELECT idroom,debut
FROM ticket 
LEFT JOIN projection ON FKidprojection = idprojection
LEFT JOIN room ON FKidroom = idroom
WHERE seat = capacity AND debut >= NOW();


