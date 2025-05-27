-- creation de la base de donnee
CREATE DATABASE db_tifosi ;
USE db_tifosi ;




-- Création du  schéma (db_tifosi)
CREATE SCHEMA IF NOT EXISTS db_tifosi;

-- Création des tables dans le schéma
CREATE TABLE IF NOT EXISTS db_tifosi.T_focaccia (
     id_focaccia INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
     nom_focaccia CHAR(20) NOT NULL
     prix CHAR(20) NOT NULL
     ingredients CHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS db_tifosi.T_ingredient (
    id_ingredient INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom_ingredient CHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS db_tifosi.T_marque (
    id_marque INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom_marque CHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS db_tifosi.T_boisson (
    id_boisson INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom_boisson CHAR(20) NOT NULL,
marque CHAR(20) NOT NULL
);




-- creation des tables de connexion avec la base de donnee
CREATE TABLE T_focaccia
(
id_focaccia INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nom_focaccia CHAR(20) NOT NULL,
prix CHAR(20) NOT NULL,
ingredients CHAR(20) NOT NULL
) ENGINE = InnoDB CHARACTER SET latin1 COLLATE latin1_bin;

CREATE TABLE T_ingredient
(
id_ingredient INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nom_ingredient CHAR(20) NOT NULL
) ENGINE = InnoDB CHARACTER SET latin1 COLLATE latin1_bin;


CREATE TABLE T_marque
(
id_marque INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nom_marque CHAR(20) NOT NULL
) ENGINE = InnoDB CHARACTER SET latin1 COLLATE latin1_bin;


CREATE TABLE T_boisson
(
id_boisson INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nom_boisson CHAR(20) NOT NULL
marque CHAR(20) NOT NULL
) ENGINE = InnoDB CHARACTER SET latin1 COLLATE latin1_bin;


CREATE TABLE T_tifosi
(
ti_Num INT NOT NULL PRIMARY KEY AUTO_INCREMENT ,
id_focaccia INT NOT NULL ,
id_ingredient INT NOT NULL ,
id_marque INT NOT NULL ,
id_boisson INT NULL ,
ti_Modele CHAR(20) NOT NULL ,
ti_NbPortsMb INT NOT NULL ,
ti_NbPortsGb INT NOT NULL ,
FOREIGN KEY (id_focaccia) REFERENCES T_focaccia(id_focaccia) ,
FOREIGN KEY (id_ingredient) REFERENCES T_Batiments(T_ingredient),
FOREIGN KEY (id_marque) REFERENCES T_marque(id_marque) ,
FOREIGN KEY (id_boisson) REFERENCES T_boisson(id_boisson)
) ENGINE = InnoDB CHARACTER SET latin1 COLLATE latin1_bin ;