CREATE TABLE plats(
    id_plat SERIAL PRIMARY KEY ,
    nom varchar(255) not null,
    prix BIGINT DEFAULT 0 NOT NULL
);

INSERT INTO plats(nom, prix)
VALUES 
('Romazava',7000),
('Ravitoto sy henakisoa',8000),
('Akoho sy vohinio',8500),
('Mi sao',6000),
('Soupe chinoise',5000),
('Mofo gasy 4',1000),
('Ranon ampango',500);