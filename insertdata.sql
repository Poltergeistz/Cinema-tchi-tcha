-- FILM --

INSERT film (title,director,released,genre,actor,duration,synopsis)
VALUES 
('Taxi Driver','Martin Scorsese',1976,'Drama','Robert De Niro',114,'A mentally unstable veteran works as a nighttime taxi driver in New York City, where the perceived decadence and sleaze fuels his urge for violent action, while attempting to liberate a twelve-year-old prostitute.' ),
('Brazil','Terry Gilliam',1985,'Dystopia','Jonathan Pryce',142,'A bureaucrat, in a retro-future world, tries to correct an administrative error, and becomes an enemy of the state. ' ),
('A Land Before Time','Don Bluth',1988,'Animation',69,'An orphaned brontosaurus named Littlefoot sets off in search of the legendary Great Valley. A land of lush vegetation where the dinosaurs can thrive and live in peace. Along the way he meets four other young dinosaurs, each one a different species, and they encounter several obstacles as they learn to work together in order to survive' ),
('The Lord Of The Rings : The Fellowship of the Ring','Peter Jackson',2001,'Fantasy',258,'Young hobbit Frodo Baggins, after inheriting a mysterious ring from his uncle Bilbo, must leave his home in order to keep it from falling into the hands of its evil creator. Along the way, a fellowship is formed to protect the ringbearer and make sure that the ring arrives at its final destination: Mt. Doom, the only place where it can be destroyed.' ),
('Django Unchained','Quentin Tarantino',2012,'Drama',245,'With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner.'),
('The Big Lebowski','Joel Cohen',1998,'Comedy', 157,'Jeffrey "The Dude" Lebowski, a Los Angeles slacker who only wants to bowl and drink white Russians, is mistaken for another Jeffrey Lebowski, a wheelchair-bound millionaire, and finds himself dragged into a strange series of events involving nihilists, adult film producers, ferrets, errant toes, and large sums of money.'),
('Jumanji: Bienvenue dans la jungle','Jake Kasdan',2017,'Fantastique, Action', 159,"The tables are turned as four teenagers are sucked into Jumanji's world - pitted against rhinos, black mambas and an endless variety of jungle traps and puzzles. To survive, they'll play as characters from the game..."),
('Flashdance','Adrian Lyne',1983,'Drame, Romance, Musical', 134,'The popular 1980’s dance movie that depicts the life of an exotic dancer with a side job as a welder who true desire is to get into ballet school. It’s her dream to be a professional dancer and now is her chance.'),
('Rocky Balboa','Sylvester Stallone',2006,'Drama', 142, "When he loses a highly publicized virtual boxing match to ex-champ Rocky Balboa, reigning heavyweight titleholder, Mason Dixon retaliates by challenging Rocky to a nationally televised, 10-round exhibition bout. To the surprise of his son and friends, Rocky agrees to come out of retirement and face an opponent who's faster, stronger and thirty years his junior.");

-- Client --

INSERT client (lastname,firstname,birthdate)
VALUES
('Journo','David','1991-04-02'),
('Darmandieu','Simon','1989-01-01'),
('Zurcher','Marion','1998-10-28'),
('Smith','Hans','1985-06-15'),
('Hoffman','Jake','1997-09-21'),
('Brown','Francis','1955-01-11'),
('Andrea','Tinkerton','1989-05-08'),
('Mila','James','1979-03-04');

-- Room --

INSERT room(capacity,equipment)
VALUES
(200,"3D"),
(120,null),
(210,"3D imax"),
(100,null),
(90,null),
(180,"3D");

-- Projection --

-- 6 salles ; 3 films par semaine pendant 3 semaines ; 4 séances par jour dans chaque salle ;
-- 1 jour par semaine est présenté uniquement, pour éviter le flood de code

INSERT projection(debut,FKidroom,FKidfilm)
VALUES 
('2018-06-15 10:30:00',1,1),
('2018-06-15 13:30:00',1,1),
('2018-06-15 17:30:00',1,1),
('2018-06-15 20:30:00',1,1),
('2018-06-15 10:30:00',2,2),
('2018-06-15 13:30:00',2,2),
('2018-06-15 17:30:00',2,2),
('2018-06-15 20:30:00',2,2),
('2018-06-15 10:30:00',3,3),
('2018-06-15 13:30:00',3,3),
('2018-06-15 17:30:00',3,3),
('2018-06-15 20:30:00',3,3),
('2018-06-15 10:30:00',4,1),
('2018-06-15 13:30:00',4,1),
('2018-06-15 17:30:00',4,1),
('2018-06-15 20:30:00',4,1),
('2018-06-15 10:30:00',5,2),
('2018-06-15 13:30:00',5,2),
('2018-06-15 17:30:00',5,2),
('2018-06-15 20:30:00',5,2),
('2018-06-15 10:30:00',6,3),
('2018-06-15 13:30:00',6,3),
('2018-06-15 17:30:00',6,3),
('2018-06-15 20:30:00',6,3),

('2018-06-09 09:30:00',1,4),
('2018-06-09 13:30:00',1,4),
('2018-06-09 18:30:00',1,4),
('2018-06-09 22:30:00',1,4),
('2018-06-09 10:30:00',2,5),
('2018-06-09 13:30:00',2,5),
('2018-06-09 17:30:00',2,5),
('2018-06-09 20:30:00',2,5),
('2018-06-09 10:30:00',3,6),
('2018-06-09 13:30:00',3,6),
('2018-06-09 17:30:00',3,6),
('2018-06-09 20:30:00',3,6),
('2018-06-09 09:30:00',4,4),
('2018-06-09 13:30:00',4,4),
('2018-06-09 18:30:00',4,4),
('2018-06-09 22:30:00',4,4),
('2018-06-09 10:30:00',5,5),
('2018-06-09 13:30:00',5,5),
('2018-06-09 17:30:00',5,5),
('2018-06-09 20:30:00',5,5),
('2018-06-09 10:30:00',6,6),
('2018-06-09 13:30:00',6,6),
('2018-06-09 17:30:00',6,6),
('2018-06-09 20:30:00',6,6),

('2018-06-15 10:30:00',1,7),
('2018-06-15 13:30:00',1,7),
('2018-06-15 17:30:00',1,7),
('2018-06-15 20:30:00',1,7),
('2018-06-15 10:30:00',2,8),
('2018-06-15 13:30:00',2,8),
('2018-06-15 17:30:00',2,8),
('2018-06-15 20:30:00',2,8),
('2018-06-15 10:30:00',3,9),
('2018-06-15 13:30:00',3,9),
('2018-06-15 17:30:00',3,9),
('2018-06-15 20:30:00',3,9),
('2018-06-15 10:30:00',4,7),
('2018-06-15 13:30:00',4,7),
('2018-06-15 17:30:00',4,7),
('2018-06-15 20:30:00',4,7),
('2018-06-15 10:30:00',5,8),
('2018-06-15 13:30:00',5,8),
('2018-06-15 17:30:00',5,8),
('2018-06-15 20:30:00',5,8),
('2018-06-15 10:30:00',6,9),
('2018-06-15 13:30:00',6,9),
('2018-06-15 17:30:00',6,9),
('2018-06-15 20:30:00',6,9);

-- Ticket --

INSERT ticket(price,seat,FKidclient,FKidprojection)
VALUES 
(10,1,1,1),
(10,2,2,1),
(10,3,3,1),
(10,4,4,1),
(10,5,5,1),
(10,6,6,1),
(10,7,7,1),
(10,8,8,1);

