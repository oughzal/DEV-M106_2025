
-- Active: 1737679472715@@127.0.0.1@33066@dev101
CREATE TABLE groupe(
    id int PRIMARY KEY,
    nom VARCHAR(40)
);
drop TABLE stagiaire;
CREATE TABLE stagiaire(
  CEF BIGINT PRIMARY KEY,
  nom VARCHAR(40),  
  prenom VARCHAR(40),
  groupe int REFERENCES groupe(id) on update CASCADE on delete CASCADE
);

delete from stagiaire;
delete from groupe;

-- insert : Create
INSERT INTO groupe(id,nom) VALUES(1,"DEV101");
INSERT INTO groupe(id,nom) 
VALUES(3,"ID101"),
(4,"ID102"),
(1,"DEV101"),
(2,"DEVOA201"),
(5,"IDOCS201"),
(6,"IDOSR201");

insert into stagiaire(cef,nom,prenom,groupe) VALUES
(1,"nom1","prenom1",1),
(2,"nom1","prenom1",2),
(3,"nom1","prenom1",1),
(4,"nom1","prenom1",2);



-- select : Read
select * from groupe;

select * FROM stagiaire;

-- update : Update modification
start TRANSACTION;
update groupe
SET id = 1
where id = 10;

-- delete : suppression
delete from groupe WHERE id=1;
delete from groupe;

delete from groupe where nom like 'ID%';

COMMIT;
ROLLBACK;

-- select

select cef,prenom,nom
from stagiaire;

select DISTINCT g.nom
from stagiaire s,groupe g
where s.groupe = g.id and cef BETWEEN 1 and 3
;

select cef,nom from stagiaire
where cef in (select cef from stagiaire where nom like "[^AMO]_X%");

select DATEDIFF(SYSDATE(),'2005-03-10') <28;

select g.nom , count(*) as nombre
from stagiaire s, groupe g
where s.groupe = g.id
group by g.nom
;

