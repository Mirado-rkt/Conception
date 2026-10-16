CREATE TABLE categorie(
    id_cat SERIAL PRIMARY KEY,
    nom VARCHAR(255) NOT NULL
)

INSERT INTO categorie
VALUES(nom)
('Plat Malagasy'),
('Plat Chinois'),
('Soupe'),
('Dessert et Gouter'),
('Boisson');


ALTER TABLE plats
ADD COLUMN id_cat INT REFERENCES categorie(id_cat);

UPDATE plats
SET id_cat = 1
WHERE id_plat IN (1,2,3);

UPDATE plats
SET id_cat= 2
WHERE id_plat= 4;

UPDATE plats
SET id_cat= 3
WHERE id_plat= 5;

UPDATE plats
SET id_cat= 4
WHERE id_plat= 6;

UPDATE plats
SET id_cat= 5
WHERE id_plat= 7;

