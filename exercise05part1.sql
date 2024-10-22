CREATE DATABASE db_bufet_advocats;

USE db_bufet_advocats;

CREATE TABLE clients (
    IdClients INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    DNI CHAR(9),
    Nom VARCHAR(20),
    AdreçaClients VARCHAR(40)
);

CREATE TABLE assumptes (
    IdAssumptes INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Periode DATE,
    Estat ENUM('actiu', 'inactiu') DEFAULT 'actiu',
    ClientsId INT UNSIGNED,
    FOREIGN KEY (ClientsId) REFERENCES clients(IdClients)
);

CREATE TABLE procuradors (
    IdProcuradors INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Nom VARCHAR(20),
    AdreçaProcuradors VARCHAR(40),
    DNI VARCHAR(9),
    AssumptesId INT UNSIGNED,
    FOREIGN KEY (AssumptesId) REFERENCES assumptes(IdAssumptes)
);
