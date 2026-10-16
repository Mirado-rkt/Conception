CREATE TABLE clients(
    id_cli SERIAL PRIMARY KEY,
    nom VARCHAR(255) NOT NULL
);

ALTER TABLE commande
ADD COLUMN id_cli INT REFERENCES clients(id_cli);

INSERT INTO clients(nom)
VALUES
('bRYAN'),
('Herman');

INSERT INTO commande(id_cli) VALUES (1);
INSERT INTO commande(id_cli) VALUES (NULL);

INSERT INTO contenir(id_com, id_plat, quantite)
VALUES
(2,1,2),
(2,4,1);