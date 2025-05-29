USE db_tifosi;


INSERT INTO T_focaccia (nom, prix) VALUES
('faccacia 1', 'prix 1'),
('faccacia 2', 'prix 2');

INSERT INTO Client (nom, email, code_postal) VALUES
('Client 1', 'email 1', 'code_postal 1'),
('Client 2', 'email 4', 'code_postal 2'),
('Client 3', 'email 3', 'code_postal 3');

INSERT INTO menu (nom, prix, Id_foccacia) VALUES
('Client 1', 'prix 1', '1'),
('Client 2', 'prix 4', '2'),
('Client 3', 'prix 3', '3');

INSERT INTO marque (nom) VALUES
('marque 1'),
('marque 2'),
('marque 3');

INSERT INTO boisson (nom) VALUES
('boisson 1'),
('boisson 2'),
('boisson 3');

INSERT INTO comprend (Id_client, Id_foccacia, quantite) VALUES
('1, 1', 'quantite 1'),
('2, 2', 'quantite 3'),
('3, 3', 'quantite 4');

INSERT INTO achete (Id_boisson, Id_menu, date_achat) VALUES
('1, 1', 'date_achat 1'),
('2, 2', 'date_achat 3'),
('3, 3', 'date_achat 4');

INSERT INTO appartient (Id_marque, Id_boisson) VALUES
('1, 1'),
('2, 2'),
('3, 3');

INSERT INTO contient (Id_menu, Id_boisson) VALUES
('1, 1'),
('2, 2'),
('3, 3');