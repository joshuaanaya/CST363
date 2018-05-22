/*****   CUSTOMER INFO   ********************************************************/

INSERT INTO CUSTOMER (CustomerLastName, CustomerFirstName, Phone, email)
	VALUES('Christensen', 'Evan','555-345-7890','echristensen@email.com');
INSERT INTO CUSTOMER (CustomerLastName, CustomerFirstName, Phone, email)
	VALUES('Barbarick', 'Christopher','555-567-1234','cbarbarick@email.com');
INSERT INTO CUSTOMER (CustomerLastName, CustomerFirstName, Phone, email)
	VALUES('Anaya', 'Joshua','555-999-5764','janaya@email.com');
INSERT INTO CUSTOMER (CustomerLastName, CustomerFirstName, Phone, email)
	VALUES('White', 'Tonya','555-976-2435','twhite@email.com');
INSERT INTO CUSTOMER (CustomerLastName, CustomerFirstName, Phone, email)
	VALUES('Woo', 'Ane','555-789-4389','awoo@email.com');
INSERT INTO CUSTOMER (CustomerLastName, CustomerFirstName, Phone, email)
	VALUES('Cacho', 'Alejandro','555-407-6869','acacho@email.com');
INSERT INTO CUSTOMER (CustomerLastName, CustomerFirstName, Phone, email)
	VALUES('Jaime', 'Alfredo','555-009-7431','ajaime@email.com');
INSERT INTO CUSTOMER (CustomerLastName, CustomerFirstName, Phone, email)
	VALUES('Weldon', 'Nick','555-0741-1045','nweldon@email.com');
INSERT INTO CUSTOMER (CustomerLastName, CustomerFirstName, Phone, email)
	VALUES('Moore', 'Shelby','555-7345-9987','smoore@email.com');
INSERT INTO CUSTOMER (CustomerLastName, CustomerFirstName, Phone, email)
	VALUES('Wilson', 'Andrea','555-123-1234','ajohnson@email.com');

/***** INVENTORY   **********************************************************/

INSERT INTO INVENTORY (Product, Price, Quantity, ProductType)
	VALUES('Glossy Aralia', 10.50, '14', 'Shrub');
INSERT INTO INVENTORY (Product, Price, Quantity, ProductType)
	VALUES('Arbutus Compacta', 15.00, '8', 'Shrub');
INSERT INTO INVENTORY (Product, Price, Quantity, ProductType)
	VALUES('Rose of Sharon', 8.95, '12', 'Shrub');
INSERT INTO INVENTORY (Product, Price, Quantity, ProductType)
	VALUES('False Aralia', 11.50, '22', 'Shrub');
INSERT INTO INVENTORY (Product, Price, Quantity, ProductType)
	VALUES('Floribunda', 12.25, '6', 'Shrub');
INSERT INTO INVENTORY (Product, Price, Quantity, ProductType)
	VALUES('Palo Verde', 30.50, '14', 'Tree');
INSERT INTO INVENTORY (Product, Price, Quantity, ProductType)
	VALUES('Mulberry', 40.00, '8', 'Tree');
INSERT INTO INVENTORY (Product, Price, Quantity, ProductType)
	VALUES('Magnolia Grandiflora', 35.00, '6', 'Tree');
INSERT INTO INVENTORY (Product, Price, Quantity, ProductType)
	VALUES('Acacia Baileyana', 52.00, '7', 'Tree');
INSERT INTO INVENTORY (Product, Price, Quantity, ProductType)
	VALUES('Acer Platanoides', 45.00, '7', 'Tree');
INSERT INTO INVENTORY (Product, Price, Quantity, ProductType)
	VALUES('Coarse Sand', 15.00, '50', 'Soil');
INSERT INTO INVENTORY (Product, Price, Quantity, ProductType)
	VALUES('Silt', 12.00, '35', 'Soil');
INSERT INTO INVENTORY (Product, Price, Quantity, ProductType)
	VALUES('Clay', 20.00, '15', 'Soil');
INSERT INTO INVENTORY (Product, Price, Quantity, ProductType)
	VALUES('Caliche', 17.00, '22', 'Soil');
INSERT INTO INVENTORY (Product, Price, Quantity, ProductType)
	VALUES('Humus  Soil', 15.00, '38', 'Soil');

/***** INVOICE  ******************************************************/

INSERT INTO INVOICE VALUES(1, 1, 2, 21.00);
INSERT INTO INVOICE VALUES(1, 3, 1, 8.95);
INSERT INTO INVOICE VALUES(2, 2, 6, 90.00);
INSERT INTO INVOICE VALUES(3, 1, 1, 10.50);
INSERT INTO INVOICE VALUES(4, 10, 2, 90.00);
INSERT INTO INVOICE VALUES(5, 14, 5, 85.00);
INSERT INTO INVOICE VALUES(6, 9, 1, 52.00);
INSERT INTO INVOICE VALUES(7, 7, 3, 120.00);

