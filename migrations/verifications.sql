// le plat le plus cher au moins cher
SELECT nom,prix FROM plats ORDER BY prix DESC;

// Nombres de plats par categorie y compris les plats sans categorie
SELECT c.nom, COUNT(p.id_plat) AS nombre_de_plats
FROM categorie c
LEFT JOIN plats p ON c.id_cat = p.id_cat
GROUP BY c.id_cat, c.nom;

