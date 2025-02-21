-- Active: 1737679472715@@127.0.0.1@33066@gestioncommandes
CREATE DATABASE if not EXISTS gestionCommandes;
use gestionCommandes;
CREATE TABLE CLIENT (
    id_client INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telephone VARCHAR(15) UNIQUE NOT NULL
);

CREATE TABLE PRODUIT (
    id_produit INT PRIMARY KEY AUTO_INCREMENT,
    nom_produit VARCHAR(100) NOT NULL,
    categorie VARCHAR(50),
    prix DECIMAL(10,2) NOT NULL
);

CREATE TABLE COMMANDE (
    id_commande INT PRIMARY KEY AUTO_INCREMENT,
    id_client INT,
    date_commande DATE NOT NULL,
    statut ENUM('En cours', 'Expédiée', 'Livrée') DEFAULT 'En cours',
    FOREIGN KEY (id_client) REFERENCES CLIENT(id_client) ON DELETE CASCADE
);

CREATE TABLE DETAIL_COMMANDE (
    id_commande INT,
    id_produit INT,
    quantite INT NOT NULL,
    PRIMARY KEY (id_commande, id_produit),
    FOREIGN KEY (id_commande) REFERENCES COMMANDE(id_commande) ON DELETE CASCADE,
    FOREIGN KEY (id_produit) REFERENCES PRODUIT(id_produit) ON DELETE CASCADE
);

CREATE TABLE PAIEMENT (
    id_paiement INT PRIMARY KEY AUTO_INCREMENT,
    id_commande INT,
    montant DECIMAL(10,2) NOT NULL,
    mode_paiement ENUM('Carte', 'Espèces', 'Virement') NOT NULL,
    date_paiement DATE NOT NULL,
    FOREIGN KEY (id_commande) REFERENCES COMMANDE(id_commande) ON DELETE CASCADE
);
