USE bestiari

ALTER TABLE animals
    ADD PRIMARY KEY (nom);

CREATE TABLE encanteris (
    data_encanteri DATE,
    nom_mag VARCHAR(20),
    id_encanteri VARCHAR(20),
    FOREIGN KEY (id_encanteri) REFERENCES animals(nom)
);