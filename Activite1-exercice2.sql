-- Active: 1737679472715@@127.0.0.1@33066@centreformation
CREATE DATABASE CentreFormation;
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

show TABLES;


drop table formation;

CREATE Table Session(
    codeSession int AUTO_INCREMENT PRIMARY key,
    nomSesion VARCHAR(45),
    dateDebut DATE,
    dateFin Date
);

CREATE Table Inscription(
    codeSession INT REFERENCES session(codeSession),
    numCINEtu VARCHAR(10) REFERENCES Etudiant(numCINEtu),
    typeCours VARCHAR(45)
);

CREATE Table Formation(
    codeFormation int AUTO_INCREMENT PRIMARY key,
    titreFormation VARCHAR(45),
    dureeFormation DOUBLE,
    prixFormation Double,
    codeSession INT REFERENCES Session(codeSession)
);

CREATE Table Specialite(
    codeSpecialite INT AUTO_INCREMENT PRIMARY KEY,
    nomSpec VARCHAR(45),
    descriptionSpec VARCHAR(200) 
);

drop TABLE catalogue;
CREATE Table catalogue(
    codeSpec INT,
    codeFormation int REFERENCES Formation(codeFormation),
    Foreign Key (codeSpec) REFERENCES Specialite(codeSpecialite)
    on Delete CASCADE
    on update CASCADE
);
