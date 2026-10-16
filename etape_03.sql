CREATE TABLE commande(
    id_com SERIAL PRIMARY KEY,
    date_com TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE contenir(
    id_com INTEGER REFERENCES commande(id_com),
    id_plat INTEGER REFERENCES plats(id_plat),
    quantite INTEGER NOT NULL CHECK (quantite > 0),
    PRIMARY KEY (id_com, id_plat)
);

INSERT INTO commande DEFAULT VALUES;

INSERT INTO contenir(id_com, id_plat, quantite)
VALUES
(1, 1, 2),
(1, 6, 1);