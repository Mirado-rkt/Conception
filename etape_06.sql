CREATE TABLE mode_paiement(
    id_mode SERIAL PRIMARY KEY,
    libelle VARCHAR(50) NOT NULL
);

CREATE TABLE paiement(
    id_paiement SERIAL PRIMARY KEY,
    id_mode INT NOT NULL REFERENCES mode_paiement(id_mode),
    id_com INT NOT NULL REFERENCES commande(id_com),
    montant INT NOT NULL CHECK (montant > 0),
    reference_transaction VARCHAR(255)
);

INSERT INTO mode_paiement(libelle)
VALUES
('Espèce'),
('Mvola'),
('Orange Money'),
('Airtel Money');


INSERT INTO paiement(id_mode, id_com, montant, reference_transaction)
VALUES
(1,1,10000,NULL),
(1,2,5000,'MV00201');

INSERT INTO paiement(id_mode, id_com, montant, reference_transaction)
VALUES
(2,3,6000,'OM00301');

