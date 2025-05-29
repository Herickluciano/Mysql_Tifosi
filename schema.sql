DROP DATABASE IF EXISTS db_tifosi;

CREATE DATABASE db_tifosi;


USE db_tifosi;


CREATE TABLE ingredient(
   Id_ingredient INT,
   nom CHAR(20) NOT NULL,
   PRIMARY KEY(Id_ingredient)
);

CREATE TABLE foccacia(
   Id_foccacia INT,
   nom VARCHAR(20) NOT NULL,
   prix VARCHAR(20) NOT NULL,
   PRIMARY KEY(Id_foccacia)
);

CREATE TABLE Client(
   Id_client INT,
   nom VARCHAR(20) NOT NULL,
   email VARCHAR(50) NOT NULL,
   code_postal INT,
   PRIMARY KEY(Id_client)
);

CREATE TABLE menu(
   Id_menu INT,
   nom VARCHAR(50) NOT NULL,
   prix VARCHAR(50) NOT NULL,
   Id_foccacia INT NOT NULL,
   PRIMARY KEY(Id_menu),
   FOREIGN KEY(Id_foccacia) REFERENCES foccacia(Id_foccacia)
);

CREATE TABLE marque(
   Id_marque INT,
   nom VARCHAR(50) NOT NULL,
   PRIMARY KEY(Id_marque)
);

CREATE TABLE boisson(
   Id_boisson INT,
   nom VARCHAR(50) NOT NULL,
   PRIMARY KEY(Id_boisson)
);

CREATE TABLE comprend(
   Id_ingredient INT,
   Id_foccacia INT,
   quantite INT,
   PRIMARY KEY(Id_ingredient, Id_foccacia),
   FOREIGN KEY(Id_ingredient) REFERENCES ingredient(Id_ingredient),
   FOREIGN KEY(Id_foccacia) REFERENCES foccacia(Id_foccacia)
);

CREATE TABLE achete(
   Id_client INT,
   Id_menu INT,
   date_achat DATE,
   PRIMARY KEY(Id_client, Id_menu),
   FOREIGN KEY(Id_client) REFERENCES Client(Id_client),
   FOREIGN KEY(Id_menu) REFERENCES menu(Id_menu)
);

CREATE TABLE appartient(
   Id_marque INT,
   Id_boisson INT,
   PRIMARY KEY(Id_marque, Id_boisson),
   FOREIGN KEY(Id_marque) REFERENCES marque(Id_marque),
   FOREIGN KEY(Id_boisson) REFERENCES boisson(Id_boisson)
);

CREATE TABLE contient(
   Id_menu INT,
   Id_boisson INT,
   PRIMARY KEY(Id_menu, Id_boisson),
   FOREIGN KEY(Id_menu) REFERENCES menu(Id_menu),
   FOREIGN KEY(Id_boisson) REFERENCES boisson(Id_boisson)
);
