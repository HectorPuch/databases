CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE alumnes (
    NumMatricula CHAR(7) PRIMARY KEY,
    NomAlumne VARCHAR(9),
    DataNaixement DATE,
    Telefon CHAR(9)
);

CREATE TABLE professors (
    ID_P INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    NIF_P VARCHAR(9),
    Nom VARCHAR(9), 
    Especialitat VARCHAR(15),
    Telefon CHAR(9)
);

CREATE TABLE assignatures (
    Codi CHAR(10) PRIMARY KEY,
    NomAssignatura VARCHAR(15),
    ID_P INT UNSIGNED,
    FOREIGN KEY (ID_P) REFERENCES professors(ID_P) 
    ON DELETE SET NULL
);

CREATE TABLE matriculacions (
    alumnes_matriculacions CHAR(7),
    assignatures_matriculacions CHAR(10),
    any_academic DATE,
    PRIMARY KEY (alumnes_matriculacions, assignatures_matriculacions),
    FOREIGN KEY (alumnes_matriculacions) REFERENCES alumnes(NumMatricula) ON DELETE CASCADE,
    FOREIGN KEY (assignatures_matriculacions) REFERENCES assignatures(Codi) ON DELETE CASCADE
);