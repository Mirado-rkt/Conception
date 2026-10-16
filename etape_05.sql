CREATE TABLE serveur(
    id_serv SERIAL PRIMARY KEY,
    nom VARCHAR(255) NOT NULL
);

CREATE TABLE table_salle(
    id_table SERIAL PRIMARY KEY,
    numero_table INT NOT NULL
);

ALTER TABLE commande
ADD COLUMN id_serv INT REFERENCES serveur(id_serv);

ALTER TABLE commande
ADD COLUMN id_table INT REFERENCES table_salle(id_table);

INSERT INTO serveur(nom)
VALUES
('Njaka Rakoto'),
('Lalao Rasoa');

UPDATE commande SET id_serv = 1 WHERE id_serv IS NULL;

ALTER TABLE commande ALTER COLUMN id_serv SET NOT NULL;
ALTER TABLE commande
ADD CONSTRAINT fk_commande_serveur foreign key (id_serv) references serveur(id_serv);

INSERT INTO table_salle(numero_table)
VALUES
(1),(2),(3),(4),(5),(6),(7),(8);

UPDATE commande SET id_serv = 2, id_table = 1 WHERE id_com = 1;

INSERT INTO commande(id_serv, id_table,id_cli) VALUES (NULL, 1, NULL);