-- Requêtes de test pour les table de la BDD 'db_tifosi'
USE db_tifosi;

-- Sélectionner tous les s focaccias
SELECT * FROM T_focaccia;

-- Afficher la liste des noms des focaccias par ordre alphabétique croissant
SELECT * FROM T_focaccia ORDER BY nom_focaccia ASC;

-- Afficher le nombre total d'ingrédients
SELECT COUNT(*) FROM T_ingredient;

-- Afficher le prix moyen des focaccias
SELECT AVG(prix) FROM T_focaccia

-- Afficher la liste des boissons avec leur marque, triée par nom de boisson
SELECT * FROM T_boisson 
INNER JOIN T_marque ON T_boisson.Id_boisson=T_marque.Id_boisson;

-- Afficher la liste des ingrédients pour une Raclaccia
SELECT nom_ingredient FROM T_focaccia WHERE nom_focaccia = 'Raclaccia';

-- Afficher le nom et le nombre d'ingrédients pour chaque foccacia
SELECT nom_ingredient, id_ingredient FROM T_focaccia;

-- Afficher le nom de la focaccia qui a le plus d'ingrédients,
SELECT nom_focaccia  FROM Clients WHERE Id_foccacia>id_ingredient;

-- Afficher la liste des focaccia qui contiennent de l'ail,
SELECT Base Tomate, Base creme FROM T_focaccia ORDER BY nom_focaccia ASC; 

-- Afficher la liste des ingrédients inutilisés
SELECT Mozarella, Ail, Olive noire, Poivre, Parmesan FROM T_ingredient; 

-- . Afficher la liste des focaccia qui n'ont pas de champignons
SELECT Base Tomate, Base creme FROM T_focaccia ORDER BY nom_focaccia ASC;

-- Supprimer un ingredient
DELETE FROM T_ingredient WHERE id_ingredient = 2;