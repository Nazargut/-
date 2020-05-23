CREATE DATEBASE system for furniture;
USE system for furniture;
CREATE TABLE workers (
Id_worker INT AUTO_INCREMENT PRIMARY KEY,
name_worker  VARCHAR(30),
data_of_birth INT,
specialize VARCHAR(30),
);
INSERT INTO   workers VALUES(null, 'Melnyk B.B', '10.26.1999', 
'sofa');
INSERT INTO workers VALUES(null, 'Pankiv A.N', '7.12.1967', 
'kitchen')
INSERT INTO workers VALUES(null, 'Sobol O.K', '3.12.1987', 
'kitchen')
INSERT INTO workers VALUES(null, 'Plastun O.L', '4.12.1997', 
'chair')
INSERT INTO workers VALUES(null, 'Makarenko A.R', '5.12.1981', 
'sofa')
INSERT INTO workers VALUES(null, 'Kharatin R.M', '7.12.1982', 
'chair')
INSERT INTO workers VALUES(null, 'Kulyba N.M', '1.12.1977', 
'sofa')
CREATE TABLE sofa (
 sofa_id INT AUTO_INCREMENT PRIMARY KEY,
 type_sofa VARCHAR(30),
 price INT,
 color VARCHAR(30),
 );
 INSERT INTO  sofas(null, 'folding', '3400', 
'yellow');
 INSERT INTO  sofas(null,'corner', '2400', 
'checked')
INSERT INTO  sofas(null, 'leather', '1200', 
'striped')
INSERT INTO  sofas(null, 'eurobook', '1800', 
'green')
INSERT INTO  sofas(null, 'dolphin', '3000', 
'sofa')
INSERT INTO  sofas(null, 'french folding bed', '2000', 
'red')
INSERT INTO  sofas(null, 'sedaflex', '1800', 
'beige')

CREATE TABLE kitchens(
kitchen_Id INT AUTO_INCREMENT PRIMARY KEY,
kitchen style  VARCHAR(30),
price INTEGER(30),
color VARCHAR(30),
);
INSERT INTO   kitchens VALUES (null, 'high tech', '8000', 
'white');
INSERT INTO kitchens VALUES (null, 'high tech', '15000', 
'pink')
INSERT INTO kitchens VALUES (null, 'loft', '17000', 
'cgrey')
INSERT INTO kitchens VALUES (null, 'classic', '20000', 
'red')
INSERT INTO kitchens VALUES (null, 'loft', '10000', 
'black')
INSERT INTO kitchens VALUES (null, 'classic', '12000', 
'purpure')
INSERT INTO kitchens VALUES (null, 'loft', '16000', 
'silver')
INSERT INTO kitchens VALUES (null, 'classic', '30000', 
'spotted')
CREATE TABLE chairs(
chairs_Id INTEGER PRIMARY KEY,
material  VARCHAR(30),
price INTEGER(30),
color VARCHAR(30),
);

INSERT INTO   chairs VALUES (null, 'wood', '1000', 
'white');
INSERT INTO chairs VALUES (null, 'knitted', '800', 
'pink')
INSERT INTO chairs VALUES (null, 'leather', '700', 
'cgrey')
INSERT INTO chairs VALUES (null, 'chipboard', '200', 
'red')
INSERT INTO chairs VALUES (null, 'wood', '1100', 
'black')
INSERT INTO chairs VALUES (null, 'leather', '12000', 
'purpure')
INSERT INTO chairs VALUES (null, 'chipboard', '160', 
'silver')
INSERT INTO chairs VALUES (null, 'leather', '1500', 
'spotted')
