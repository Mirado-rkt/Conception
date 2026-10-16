// le plat le plus cher au moins cher
SELECT nom,prix FROM plats ORDER BY prix DESC;

// Nombres de plats par categorie y compris les plats sans categorie
SELECT c.nom, COUNT(p.id_plat) AS nombre_de_plats
FROM categorie c
LEFT JOIN plats p ON c.id_cat = p.id_cat
GROUP BY c.id_cat, c.nom;

// Montant total de chaque commande
SELECT c.id_com, SUM(p.prix * cont.quantite) AS montant_total
FROM commande c
JOIN contenir cont ON c.id_com = cont.id_com
JOIN plats p ON cont.id_plat = p.id_plat
GROUP BY c.id_com;