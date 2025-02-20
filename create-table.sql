-- Active: 1737679472715@@127.0.0.1@33066@db3
CREATE TABLE parent_table (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

DROP TABLE IF EXISTS child_table;
CREATE TABLE child_table (
    id INT PRIMARY KEY,
    parent_id INT REFERENCES parent_table(id),
    description VARCHAR(255)
    -- FOREIGN KEY (parent_id) REFERENCES parent_table(id)
);

-- afficher les tables de la base de données actuelle
show TABLES;
-- afficher les bases de données
show DATABASES;