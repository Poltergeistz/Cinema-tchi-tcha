CREATE DATABASE cinema;

CREATE TABLE client (
  idclient INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  lastname VARCHAR(45),
  firstname VARCHAR(45),
  birthdate DATE
);

CREATE TABLE ticket (
    idticket INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    price INT,
    seat INT,
    FKidclient INT REFERENCES client(idclient),
    FKidprojection INT REFERENCES projection(idprojection)
);

CREATE TABLE projection (
    idprojection INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    debut DATETIME,
    FKidroom INT REFERENCES room(idroom),
    FKidfilm INT REFERENCES film(idfilm)
);

CREATE TABLE room (
    idroom INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    capacity INT,
    equipment VARCHAR(100)
);

CREATE TABLE film (
    idfilm INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(45),
    director VARCHAR(45),
    genre VARCHAR(45),
    released INT(4),
    actor VARCHAR(45),
    duration INT,
    synopsis TEXT(300)
);
