-- FILM --

INSERT film (title,director,released,genre,duration,synopsis)
VALUES 
('Taxi Driver','Martin Scorsese',1976,'Drama',114,'A mentally unstable veteran works as a nighttime taxi driver in New York City, where the perceived decadence and sleaze fuels his urge for violent action, while attempting to liberate a twelve-year-old prostitute.' ),
('Brazil','Terry Gilliam',1985,'Dystopia',142,'A bureaucrat, in a retro-future world, tries to correct an administrative error, and becomes an enemy of the state. ' ),
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
('Mila','James','1979-03-04'),
('Obama','Barack','1991-04-02'),
('Vladimir','Putin','1979-01-01'),
('Bond','James','1988-10-28'),
('Kilmer','Val','1975-06-15'),
('Van Damme','Jean-Claude','1977-09-21'),
('Sardou','Michel','1955-01-11'),
('Christ','Jesus','1970-12-25'),
('Devernay','Laurent','1979-08-04'),
('Chirac','Jacques','1941-04-02'),
('Tintin','Emilou','1989-10-01'),
('Haddock','Capitaine','1968-10-28'),
('Pompidou','Georges','1965-06-15'),
('Quatorze','Louis','1927-09-21'),
('Premier','François','1955-01-11'),
('Zidane','Zinedine','1929-05-08'),
('Miller','Bode','1949-03-04'),
('Baggins','Frodo','1911-04-02'),
('Ding','Dong','1939-10-01'),
('Coco','Channel','1938-10-28'),
('Alert','Toto','1945-06-15'),
('Thatcher','Margareth','1927-09-21'),
('Zim','Babwé','1955-11-11'),
('Pratt','Chris','1970-12-25'),
('Mercury','Freddy','1959-08-04');

-- Room --

INSERT room(capacity,equipment)
VALUES
(200,"3D"),
(120,null),
(210,"3D imax"),
(100,null),
(32,null),
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

('2018-06-20 10:30:00',1,7),
('2018-06-20 13:30:00',1,7),
('2018-06-20 17:30:00',1,7),
('2018-06-20 20:30:00',1,7),
('2018-06-20 10:30:00',2,8),
('2018-06-20 13:30:00',2,8),
('2018-06-20 17:30:00',2,8),
('2018-06-20 20:30:00',2,8),
('2018-06-20 10:30:00',3,9),
('2018-06-20 13:30:00',3,9),
('2018-06-20 17:30:00',3,9),
('2018-06-20 20:30:00',3,9),
('2018-06-20 10:30:00',4,7),
('2018-06-20 13:30:00',4,7),
('2018-06-20 17:30:00',4,7),
('2018-06-20 20:30:00',4,7),
('2018-06-20 10:30:00',5,8),
('2018-06-20 13:30:00',5,8),
('2018-06-20 17:30:00',5,8),
('2018-06-20 20:30:00',5,8),
('2018-06-20 10:30:00',6,9),
('2018-06-20 13:30:00',6,9),
('2018-06-20 17:30:00',6,9),
('2018-06-20 20:30:00',6,9);

-- Ticket -- une ligne = une projection (on met 2 spectateurs uniquement pour pas trop bourrer le code)
-- sauf une séance, pour tester le query demandé

INSERT ticket(price,seat,FKidclient,FKidprojection)
VALUES 
(10,1,1,1),(10,2,2,1),
(10,1,3,2),(10,2,4,2),
(10,1,5,3),(10,2,6,3),
(10,1,7,4),(10,2,8,4),
(10,1,9,5),(10,2,10,5),
(10,1,11,6),(10,2,12,6),
(10,1,13,7),(10,2,14,7),
(10,1,15,8),(10,2,16,8),
(10,1,17,9),(10,2,18,9),
(10,1,19,10),(10,2,20,10),
(10,1,21,11),(10,2,22,11),
(10,1,23,12),(10,2,24,12),
(10,1,25,13),(10,2,26,13),
(10,1,27,14),(10,2,28,14),
(10,1,29,15),(10,2,30,15),
(10,1,31,16),(10,2,32,16),
(10,1,1,17),(10,2,2,17),
(10,1,3,18),(10,2,4,18),
(10,1,5,19),(10,2,6,19),
(10,1,7,20),(10,2,8,20),
(10,1,9,21),(10,2,10,21),
(10,1,11,22),(10,2,12,22),
(10,1,13,23),(10,2,14,23),
(10,1,15,24),(10,2,16,24),
(10,1,17,25),(10,2,18,25),
(10,1,19,25),(10,2,20,25),
(10,1,21,26),(10,2,22,26),
(10,1,23,27),(10,2,24,27),
(10,1,25,28),(10,2,26,28),
(10,1,27,29),(10,2,28,29),
(10,1,29,30),(10,2,30,30),
(10,1,31,31),(10,2,32,31),
(10,1,1,32),(10,2,2,32),
(10,1,3,33),(10,2,4,33),
(10,1,5,34),(10,2,6,34),
(10,1,7,35),(10,2,8,35),
(10,1,9,36),(10,2,10,36),
(10,1,11,37),(10,2,12,37),
(10,1,13,38),(10,2,14,38),
(10,1,15,39),(10,2,16,39),
(10,1,17,40),(10,2,18,40),
(10,1,19,41),(10,2,20,41),
(10,1,21,42),(10,2,22,42),
(10,1,23,43),(10,2,24,43),
(10,1,25,44),(10,2,26,44),
(10,1,27,45),(10,2,28,45),
(10,1,29,46),(10,2,30,46),
(10,1,31,47),(10,2,32,47),
(10,1,1,48),(10,2,2,48),
(10,1,3,49),(10,2,4,49),
(10,1,5,50),(10,2,6,50),
(10,1,7,51),(10,2,8,51),
(10,1,9,52),(10,2,10,52),
(10,1,11,53),(10,2,12,53),
(10,1,13,54),(10,2,14,54),
(10,1,15,55),(10,2,16,55),
(10,1,17,56),(10,2,18,56),
(10,1,19,57),(10,2,20,57),
(10,1,21,58),(10,2,22,58),
(10,1,23,59),(10,2,24,59),
(10,1,25,60),(10,2,26,60),
(10,1,27,61),(10,2,28,61),
(10,1,29,62),(10,2,30,62),
(10,1,31,63),(10,2,32,63),
(10,1,1,64),(10,2,2,64),
(10,1,3,65),(10,2,4,65),
(10,1,5,66),(10,2,6,66),
(10,1,1,67),(10,2,2,67),(10,3,3,67),(10,4,4,67),(10,5,5,67),(10,6,6,67),(10,7,7,67),(10,8,8,67),(10,9,9,67),(10,10,10,67),(10,11,11,67),(10,12,12,67),(10,13,13,67),(10,14,14,67),(10,15,15,67),(10,16,16,67),(10,17,17,67),(10,18,18,67),(10,19,19,67),(10,20,20,67),(10,21,21,67),(10,22,22,67),(10,23,23,67),(10,24,24,67),(10,25,25,67),(10,26,26,67),(10,27,27,67),(10,28,28,67),(10,29,29,67),(10,30,30,67),(10,31,31,67),(10,32,32,67),
(10,1,9,68),(10,2,10,68),
(10,1,11,69),(10,2,12,69),
(10,1,13,70),(10,2,14,70),
(10,1,15,71),(10,2,16,71),
(10,1,17,72),(10,2,18,72);





