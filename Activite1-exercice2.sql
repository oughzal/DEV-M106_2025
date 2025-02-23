-- Active: 1737679472715@@127.0.0.1@33066@centreformation
CREATE DATABASE CentreFormation;

show create DATABASE CentreFormation;
use centreFormation;

CREATE Table Etudiant(
    numCINEtu VARCHAR(10) PRIMARY KEY,
    nomEtu VARCHAR(45),
    prenomEtu VARCHAR(45),
    dateNaissanceEtu DATE,
    addressEtu VARCHAR(45),
    villeEtu VARCHAR(45),
    niveauEtu VARCHAR(45)
);

SHOW TABLES;

DROP TABLE IF EXISTS Session;

CREATE TABLE Session(
    codeSession INT AUTO_INCREMENT PRIMARY KEY,
    nomSession VARCHAR(45),
    dateDebut DATE,
    dateFin DATE
);

DESCRIBE Session;
ALTER Table session CHANGE COLUMN nomSesion nomSession VARCHAR(45) NOT NULL;

DROP TABLE IF EXISTS Inscription;
CREATE TABLE Inscription(
    codeSession INT,
    numCINEtu VARCHAR(10),
    typeCours VARCHAR(45),
    PRIMARY KEY(codeSession, numCINEtu),
    FOREIGN KEY (codeSession) REFERENCES Session(codeSession),
    FOREIGN KEY (numCINEtu) REFERENCES Etudiant(numCINEtu)
);

CREATE TABLE Formation(
    codeFormation INT AUTO_INCREMENT PRIMARY KEY,
    titreFormation VARCHAR(45),
    dureeFormation DOUBLE,
    prixFormation DOUBLE,
    codeSession INT,
    FOREIGN KEY (codeSession) REFERENCES Session(codeSession)
);

DESCRIBE Formation;
SHOW COLUMNS FROM Formation;

CREATE TABLE Specialite(
    codeSpecialite INT AUTO_INCREMENT PRIMARY KEY,
    nomSpec VARCHAR(45),
    descriptionSpec VARCHAR(200)
);

CREATE TABLE Catalogue(
    codeSpec INT,
    codeFormation INT,
    PRIMARY KEY(codeSpec, codeFormation),
    FOREIGN KEY (codeSpec) REFERENCES Specialite(codeSpecialite)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (codeFormation) REFERENCES Formation(codeFormation)
        ON DELETE NO ACTION
        ON UPDATE CASCADE
);

INSERT INTO Etudiant (numCINEtu, nomEtu, prenomEtu, dateNaissanceEtu, addressEtu, villeEtu, niveauEtu)
VALUES
('AB234567', 'Alami', 'Ahmad', '1986-01-01', 'Rue du port, 13', 'Tanger', 'bac'),
('G5346789', 'Toumi', 'Aicha', '2000-12-03', 'N12 immeuble Jaouhara', 'Casablanca', 'Master'),
('C0987265', 'Souni', 'Sanaa', '1998-04-30', 'Place du peuple n 2', 'Tanger', 'Niveau bac'),
('D2356903', 'Idrissi Alami', 'Mohammed', '1996-05-05', 'Lotissement najah, rue n 12 immeuble 3', 'Rabat', 'Bac+ 4'),
('Y1234987', 'Ouled thami', 'Ali', '1979-12-04', 'La ville haute, rue chouhada n 6', 'Tanger', 'Bachelor'),
('J3578902', 'Ben Omar', 'Abd Allah', '1990-06-25', 'Villa Amina n12 bir rami', 'Kenitra', 'Phd'),
('F9827363', 'Boudiaf', 'Fatima Zohra', '1997-01-10', 'Immeuble iftikhar, n 13 ettakaddoum', 'Rabat', 'Bac + 2');

INSERT INTO Formation (titreFormation, dureeFormation, prixFormation, codeSession)
VALUES
('Programming Java', 12, 3600, 1101),
('Web Development', 14, 4200, 1102),
('Anglais Technique', 15, 3750, 1201),
('Communication', 10, 2500, 1202),
('Base de Données Oracle', 20, 6000, 1301),
('Soft Skills', 12, 3000, 1302);

INSERT INTO Session (codeSession, nomSession, dateDebut, dateFin)
VALUES
(1101, 'Session 1101', '2022-01-02', '2022-01-14'),
(1102, 'Session 1102', '2022-02-03', '2022-02-15'),
(1201, 'Session 1201', '2022-03-04', '2022-03-18'),
(1202, 'Session 1202', '2022-04-05', '2022-04-19'),
(1301, 'Session 1301', '2022-01-06', '2022-01-21'),
(1302, 'Session 1302', '2022-05-07', '2022-05-22'),
(1303, 'Session 1303', '2022-06-08', '2022-06-23'),
(1401, 'Session 1401', '2022-09-01', '2022-09-11'),
(1402, 'Session 1402', '2022-08-08', '2022-08-18'),
(1501, 'Session 1501', '2022-11-11', '2022-12-01'),
(1502, 'Session 1502', '2022-09-12', '2022-10-02'),
(1601, 'Session 1601', '2022-09-13', '2022-09-25'),
(1602, 'Session 1602', '2022-10-14', '2022-10-26'),
(1104, 'Session 1104', '2022-10-15', '2022-10-27'),
(1203, 'Session 1203', '2022-11-16', '2022-11-30'),
(1204, 'Session 1204', '2022-12-17', '2022-12-31');

INSERT INTO Specialite (codeSpecialite, nomSpec, descriptionSpec)
VALUES
(101, 'GL', 'Genie logiciel et developpement'),
(102, 'Data', 'Data engineering'),
(103, 'Langues', 'Anglais Français'),
(104, 'Communication', 'Communication'),
(105, 'Securite', 'Reseaux et securite');

Insert into INSCRIPTION (codeSession,numCINEtu,TypeCours)
Values
(1101,'AB234567','Distanciel'),
(1101,'G5346789','Distanciel'),
(1101,'C0987265','Distanciel'),
(1101,'D2356903','Distanciel'),
(1101,'Y1234987','Distanciel'),
(1101,'J3578902','Distanciel'),
(1101,'F9827363','Distanciel'),
(1201,'AB234567','Présentiel'),
(1201,'G5346789','Présentiel'),
(1201,'C0987265','Présentiel'),
(1201,'D2356903','Présentiel'),
(1201,'Y1234987','Présentiel'),
(1201,'J3578902','Présentiel'),
(1302,'AB234567','Présentiel'),
(1302,'G5346789','Distanciel'),
(1302,'C0987265','Présentiel'),
(1302,'D2356903','Présentiel'),
(1302,'Y1234987','Présentiel'),
(1401,'G5346789','Distanciel'),
(1401,'C0987265','Distanciel'),
(1401,'D2356903','Distanciel'),
(1401,'Y1234987','Distanciel'),
(1401,'J3578902','Distanciel'),
(1401,'F9827363','Distanciel'),
(1501,'AB234567','Distanciel'),
(1501,'G5346789','Présentiel'),
(1501,'C0987265','Distanciel'),
(1501,'D2356903','Présentiel'),
(1501,'Y1234987','Présentiel'),
(1501,'J3578902','Présentiel'),
(1501,'F9827363','Présentiel');

INSERT INTO Catalogue (codeSpec, codeFormation)
VALUES
(101, 13),
(101, 14),
(102, 17),
(101, 17),
(103, 15),
(104, 15),
(104, 16),
(104, 18);

select * from formation;
