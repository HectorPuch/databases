CREATE DATABASE db_taller;
USE db_taller;
CREATE TABLE mecanics (
    dni CHAR(9) PRIMARY KEY,
    nom VARCHAR(9),
    edat TINYINT UNSIGNED
);

CREATE TABLE vehicles (
    matricula CHAR(7) PRIMARY KEY,
    propietari VARCHAR(20),
    marca VARCHAR(20),
    reparat_per CHAR(9) REFERENCES mecanics(dni)
    ON DELETE SET NULL
    ON UPDATE CASCADE
);

DESCRIBE mecanics;

DESCRIBE vehicles;
