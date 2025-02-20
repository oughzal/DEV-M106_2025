-- Active: 1737679472715@@127.0.0.1@33066@db1
CREATE DATABASE DB1;

-- Création de la base de données DB2
CREATE DATABASE DB2;

CREATE DATABASE if not EXISTS DB3;

use db1;

use db2;

show ENGINES;

-- création de la table T1 dans la base de données DB1
CREATE Table T1 (
    CEF INT PRIMARY KEY,
    nom VARCHAR(30),
    dateNaissance DATE,
    note DECIMAL(2, 2),
    CIN VARCHAR(12) NOT NULL UNIQUE
);

use db1;

CREATE Table T2 (
    id1 int,
    id2 int,
    PRIMARY key (id1, id2),
);

CREATE Table T3 (
    id1 int PRIMARY KEY,
    id2 int PRIMARY KEY,
    id3 int PRIMARY KEY,
);

Create Table T4 (
    id1 int PRIMARY KEY,
    id2 int,
    FOREIGN KEY (id2) REFERENCES T1(CEF)
)

create table T5 (
    id1 int PRIMARY KEY,
    note FLOAT check (
        note >= 0
        and note <= 20
    ),
    check ()
);

use db1;

drop Table t2;

CREATE table t1 (num int);

ALTER Table t1 
    add column nom varchar(10),
    add column prenom varchar(30);

alter Table t1
    DROP COLUMN prenom;

ALTER Table t1
    CHANGE COLUMN nom firstName varchar(20);

ALTER Table t1
    RENAME TO t2;

Alter TABLE t2
    add PRIMARY key(num);

alter Table t2
    drop PRIMARY key;
