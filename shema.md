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
//une commande contient plusieurs plats, et un plat peut etre dans plusieurs commandes
<u>Creation de la table "commandes"</u>
commandes(<b>id_commande</b>,date)
<u>Creation de la table "contenir"</u>
contenir(<b>id_commande</b>,<b>id_plat</b>,quantite)

<u>Question piege</u>
    .La quantité ne se place ni dans la table commande ni dans la table plats, car elle dépend à la fois d'une commande spécifique et d'un plat particulier. On la place donc obligatoirement dans la table de liaison intermédiaire (contenir).

### Etape 4: Les clients