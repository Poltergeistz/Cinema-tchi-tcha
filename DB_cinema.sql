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

ALTER TABLE client 
ADD CONSTRAINT person_id FOREIGN KEY (id_person) REFERENCES person (id_client);

--- VISUALISER CLIENT ---
-- DESCRIBE client; --

