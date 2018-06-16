CREATE DATABASE cinema;
CREATE TABLE client (
  id INT Not NULL,
  last_name VARCHAR(45),
  first_name VARCHAR(45),
  birthdate DATE,
  id_person INT,
  PRIMARY KEY(id)
);

CREATE TABLE person (
  id INT Not NULL,
  category VARCHAR(45),
  PRIMARY KEY(id)
);

CREATE TABLE ticket (
    id INT Not NULL,
    price INT,
    seat INT,
    PRIMARY KEY(id)
);

CREATE TABLE projection (
    id INT Not NULL,
    debut DATE,
    PRIMARY KEY(id)
);

CREATE TABLE room (
    id INT Not NULL,
    capacity INT,
    equipement VARCHAR(100),
    PRIMARY KEY(id)
);

CREATE TABLE film (
    id INT Not NULL,
    title VARCHAR(45),
    genre VARCHAR(45),
    duration INT,
    synopsis TEXT(150),
    PRIMARY KEY(id)
);

INSERT INTO film (title,director,genre,duration,synopsis)
--- LOTR '2001' ---
VALUES ('The Lord Of The Rings : The Fellowship of the Ring', 'Peter Jackson', 'Fantasy', '258', 
'Young hobbit Frodo Baggins, after inheriting a mysterious ring from his uncle Bilbo, must leave his home in order to keep it from falling into the hands of its evil creator. Along the way, a fellowship is formed to protect the ringbearer and make sure that the ring arrives at its final destination: Mt. Doom, the only place where it can be destroyed.' );
--- Django Unchained 2012 ---
VALUES ('Django Unchained', 'Quentin Tarantino', 'Drama' , '245', 'With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner.' );
--- The Big Lebowski 1998 ---
VALUES ('The Big Lebowski', 'Joel Cohen', 'Comedy', '157', 'Jeffrey "The Dude" Lebowski, a Los Angeles slacker who only wants to bowl and drink white Russians, is mistaken for another Jeffrey Lebowski, a wheelchair-bound millionaire, and finds himself dragged into a strange series of events involving nihilists, adult film producers, ferrets, errant toes, and large sums of money.');


