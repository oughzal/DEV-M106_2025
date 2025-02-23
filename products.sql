-- Active: 1737679472715@@127.0.0.1@33066@bdtest
show tables;

DROP TABLE IF EXISTS produits;


CREATE Table produits(
    num VARCHAR(10) PRIMARY KEY,
    description varchar(100),
    categorie varchar(50),
    cout float,
    prix float,
    dateAjout date
);

DELETE FROM produits;

INSERT INTO produits
VALUES('P01', 'Laptop', 'Electronics', 500, 700, '2025-01-01'),
('P02', 'Smartphone', 'Electronics', 300, 400, '2025-01-02'),
('P03', 'Tablet', 'Electronics', 200, 300, '2025-01-03'),
('P04', 'T-shirt', 'Clothing', 10, 20, '2025-01-04'),
('P05', 'Jeans', 'Clothing', 20, 30, '2025-01-05'),
('P06', 'Shoes', 'Clothing', 30, 40, '2025-01-06'),
('P07', 'Sofa', 'Furniture', 100, 200, '2025-01-07'),
('P08', 'Table', 'Furniture', 50, 100, '2025-01-08'),
('P09', 'Chair', 'Furniture', 40, 80, '2025-01-09'),
('P10', 'Bed', 'Furniture', 200, 400, '2025-01-10'),
('P11', 'Dress', 'Clothing', 30, 40, '2025-01-11'),
('P12', 'Hat', 'Clothing', 5, 10, '2025-01-12'),
('P13', 'Jacket', 'Clothing', 50, 100, '2025-01-13'),
('P14', 'Coat', 'Clothing', 100, 200, '2025-01-14'),
('P15', 'Gloves', 'Clothing', 5, 10, '2025-01-15'),
('P16', 'Scarf', 'Clothing', 10, 20, '2025-01-16'),
('P17', 'Sweater', 'Clothing', 20, 30, '2025-01-17'),
('P18', 'Shorts', 'Clothing', 15, 25, '2025-01-18'),
('P19', 'Skirt', 'Clothing', 20, 30, '2025-01-19'),
('P20', 'Blouse', 'Clothing', 25, 35, '2025-01-20'),
('P21', 'Pants', 'Clothing', 30, 40, '2025-01-21'),
('P22', 'Socks', 'Clothing', 5, 10, '2025-01-22'),
('P23', 'Underwear', 'Clothing', 5, 10, '2025-01-23'),
('P24', 'Bra', 'Clothing', 10, 20, '2025-01-24'),
('P25', 'Bikini', 'Clothing', 20, 30, '2025-01-25'),
('P26', 'Swimsuit', 'Clothing', 30, 40, '2025-01-26'),
('P27', 'Pajamas', 'Clothing', 20, 30, '2025-01-27'),
('P28', 'Robe', 'Clothing', 30, 40, '2025-01-28'),
('P29', 'Tie', 'Clothing', 10, 20, '2025-01-29'),
('P30', 'Belt', 'Clothing', 5, 10, '2025-01-30'),
('P31', 'Hat', 'Clothing', 5, 10, '2025-01-31'),
('P32', 'Scarf', 'Clothing', 10, 20, '2025-02-01'),
('P33', 'Sweater', 'Clothing', 20, 30, '2025-02-02'),
('P34', 'Shorts', 'Clothing', 15, 25, '2025-02-03'),
('P35', 'Skirt', 'Clothing', 20, 30, '2025-02-04'),
('P36', 'Blouse', 'Clothing', 25, 35, '2025-02-05'),
('P37', 'Pants', 'Clothing', 30, 40, '2025-02-06');


START TRANSACTION;

DELETE FROM produits;

UPDATE produits
SET prix = 1000;


SELECT * FROM produits;

COMMIT;

ROLLBACK;
