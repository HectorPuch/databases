CREATE DATABASE db_zoologics;

USE db_zoologics;

CREATE TABLE zoologics (
    IdZoologics INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Nom VARCHAR(50),
    Ciutat VARCHAR(25),
    PaisZoologics VARCHAR(43),
    Pressupost DECIMAL(12, 2),
    Grandaria FLOAT(10, 2) CHECK (Grandaria BETWEEN 1000 AND 1000000)
);

CREATE TABLE animals (
    IdAnimals INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    NumIdentificacio VARCHAR(9),
    Sexe ENUM('Mascle', 'Femella'),
    AnyNaixement DATE,
    PaisOrigenAnimals VARCHAR(43),
    Continent VARCHAR(9),
    ZoologicsId INT UNSIGNED,
    FOREIGN KEY (ZoologicsId) REFERENCES zoologics(IdZoologics) 
);

CREATE TABLE especies (
    IdEspecies INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    NomVulgar VARCHAR(21),
    NomCientific VARCHAR(22),
    Familia VARCHAR(14),
    EnPerillExtensio VARCHAR(40),
    AnimalsId INT UNSIGNED,
    FOREIGN KEY (AnimalsId) REFERENCES animals(IdAnimals)
);

