CREATE DATABASE db_empresa;

USE db_empresa;

CREATE TABLE empleats (
    ID_E INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    DNI_E VARCHAR(9),
    Nom VARCHAR(20),
    Telefon CHAR(9),
    Salari DECIMAL(7, 2)
);

CREATE TABLE localitats (
    CodiLocalitats INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    NomLocalitats VARCHAR(20),
    EmpleatsId INT UNSIGNED,
    FOREIGN KEY (EmpleatsId) REFERENCES empleats(ID_E)
);

CREATE TABLE provincies (
    CodiProvincies INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    NomProvincies VARCHAR (20),
    LocalitatsId INT UNSIGNED,
    FOREIGN KEY (LocalitatsId) REFERENCES localitats(CodiLocalitats)
);

CREATE TABLE regions (
    NomRegions VARCHAR(20) PRIMARY KEY,
    ProvinciesId INT UNSIGNED,
    FOREIGN KEY (ProvinciesId) REFERENCES provincies(CodiProvincies)
);