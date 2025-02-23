-- créer une base de données bdName
CREATE DATABASE IF NOT EXISTS bdName;
-- afficher la base de données bdName
show create DATABASE bdName;
-- Afficher les bases de données
show databases;
-- sélectionner la base de données bdName
use bdName;

-- créer une table tableName
CREATE TABLE  IF NOT EXISTS tableName (
    -- Définir les colonnes de la table
    -- nom type [contraintes]
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    prix DECIMAL(10,2) NOT NULL,
    -- Définir les contraintes
    UNIQUE(name)
);


