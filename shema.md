# Conception
## Niveau 1
### Etape 1: la carte
<< la liste de tout les plats avec leur prix >>

<u>Creation de la table "plats"</u>

Plats(<b>id_plat</b>,nom,prix)

<u>Question piege</u>

    .BIGINT est le type du prix car il faut qu'on utilise des entiers

.<b>id_plat</b> est le identifiant avec SERIAL PRIMARY KEY commen type

### Etape 2: Les categorie
<< Je range les plats par categorie >>
<u>Creation de la table "categorie"</u>

Categorie(<b>id_categorie</b>,nom)
<u>Question piege</u>

    .car si on ajoute une categorie dans la table plats, on ne pourra pas faire de jointure avec la table categorie

### Etape 3: Les commandes
<<J'enregistre les commandes: date,quels plats, et combien de chaque>>

<u>Creation de la table "commandes"</u>

commandes(<b>id_commande</b>,date)

<u>Creation de la table "contenir"</u>

contenir(<b>id_commande</b>,<b>id_plat</b>,quantite)

<u>Question piege</u>

    .La quantité ne se place ni dans la table commande ni dans la table plats, car elle dépend à la fois d'une commande spécifique et d'un plat particulier. On la place donc obligatoirement dans la table de liaison intermédiaire (contenir).

### Etape 4: Les habitues
<< Certains clients sont des habitues, je veux les reconnaitres. Mais la plupart sont de passage et je ne leur demande rien >>

<u>Creation de la table "clients"</u>

clients(<b>id_cli</b>,nom)

<u>question piege</u>

    .Non, la clé étrangère id_client ne doit pas être NOT NULL (elle doit autoriser les valeurs NULL), car la plupart des clients sont de passage et n'ont pas de profil enregistré. Il faut utiliser une jointure externe de type LEFT JOIN (en partant de la table commande vers client) pour afficher toutes les commandes sans en perdre aucune, même celles qui n'ont pas de client rattaché

### Etape 5: Les serveurs et les tables

<u>Creation de la table "serveurs"</u>

serveurs(<b>id_serveur</b>,nom)

<u>creation de la table "table_salle"</u>

table_salle(<b>id_table</b>,numero_table)

<u>question piege</u>

    .Une table de la salle est un élément physique du restaurant (le meuble où s'assoient les clients), tandis qu'une commande représente un acte d'achat qui peut s'y dérouler (ou être à emporter, sans table).
    Le mot TABLE pose un problème en SQL car c'est un mot-clé réservé du langage (utilisé pour créer des structures de données avec CREATE TABLE). L'utiliser comme nom de table provoquerait des erreurs de syntaxe, c'est pourquoi il faut le renommer (par exemple table_salle)