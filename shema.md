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
<u>Creation de la table "categorie"</u>

Categorie(<b>id_categorie</b>,nom)
<u>Question piege</u>

    .car si on ajoute une categorie dans la table plats, on ne pourra pas faire de jointure avec la table categorie