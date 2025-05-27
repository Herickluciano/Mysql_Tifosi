-- Requêtes de test pour les table de la BDD 'db_tifosi'

-- Sélectionner tous les s focaccias
SELECT * FROM T_focaccia;

-- Afficher la liste des noms des focaccias par ordre alphabétique croissant
SELECT * FROM T_focaccia ORDER BY nom_focaccia ASC;

-- Afficher le nombre total d'ingrédients
SELECT * FROM T_ingredient;

-- Afficher le prix moyen des focaccias
SELECT AVG(8.90) FROM T_focaccia

-- Afficher la liste des boissons avec leur marque, triée par nom de boisson
SELECT * FROM T_boisson ORDER BY  nom_boisson;

-- Afficher la liste des ingrédients pour une Raclaccia
SELECT nom_ingredient FROM T_focaccia WHERE nom_focaccia = 'Raclaccia';

-- Afficher le nom et le nombre d'ingrédients pour chaque foccacia
SELECT nom_ingredient, id_ingredient FROM T_focaccia;

-- Afficher le nom de la focaccia qui a le plus d'ingrédients,
SELECT Base Tomate  FROM Clients T_focaccia;

-- Afficher la liste des focaccia qui contiennent de l'ai,
SELECT Base Tomate, Base creme FROM T_focaccia ORDER BY nom_focaccia ASC; 

-- Afficher la liste des ingrédients inutilisés
SELECT Mozarella, Ail, Olive noire, Poivre, Parmesan FROM T_ingredient; 

-- . Afficher la liste des focaccia qui n'ont pas de champignons
SELECT Base Tomate, Base creme FROM T_focaccia ORDER BY nom_focaccia ASC;

-- Supprimer un ingredient
DELETE FROM T_ingredient WHERE id_ingredient = 2;