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

//lise des commandes avec le nom du client , en affichant <<client de passage>> quand il n'y en a pas
SELECT c.id_com,c.date_com ,COALESCE(cl.nom, 'client de passage') AS nom_client
FROM commande c
LEFT JOIN clients cl ON c.id_cli = cl.id_cli;


//nombre de commandes et chiffre d'affaire par serveur
SELECT s.nom, COUNT(c.id_com) AS nombre_de_commandes, SUM(p.prix * cont.quantite) AS chiffre_d_affaire
FROM serveur s
LEFT JOIN commande c ON s.id_serv = c.id_serv
LEFT JOIN contenir cont ON c.id_com = cont.id_com
LEFT JOIN plats p ON cont.id_plat = p.id_plat
GROUP BY s.id_serv, s.nom;


// liste des commandes non soldees avec montant du,paye et reste a paye
SELECT c.id_com, COALESCE(SUM(DISTINCT p.prix * cont.quantite), 0) AS montant_du, COALESCE(SUM(pay.montant), 0) AS montant_paye,
(COALESCE(SUM(DISTINCT p.prix * cont.quantite), 0) - COALESCE(SUM(pay.montant), 0)) AS reste_a_payer
FROM commande c
LEFT JOIN contenir cont ON c.id_com = cont.id_com
LEFT JOIN plats p ON cont.id_plat = p.id_plat
LEFT JOIN paiement pay ON c.id_com = pay.id_com
GROUP BY c.id_com
HAVING (COALESCE(SUM(DISTINCT p.prix * cont.quantite), 0) - COALESCE(SUM(pay.montant), 0)) > 0;