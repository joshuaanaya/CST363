#Create tables

CREATE  TABLE CUSTOMER(
	CustomerID	    	  Int			 NOT NULL AUTO_INCREMENT,
	CustomerLastName	  Char(25)		 NOT NULL,
	CustomerFirstName	  Char(25)	     NOT NULL,
	Phone			      Char(12)		 NOT NULL,
    Email				  Char(25)		 NOT NULL,
	CONSTRAINT 		      CUSTOMER_PK 	 PRIMARY KEY(CustomerID)
	);
    
CREATE  TABLE INVENTORY(
	ProductNumber	      Int		     NOT NULL AUTO_INCREMENT,
	Product			      Char(50) 		 NOT NULL,
    Price				  Numeric(8)		 NOT NULL,
	Quantity              Int 		     NOT NULL,
	ProductType		      Char(25)	     NOT NULL,
	CONSTRAINT 		      INVENTORY_PK 	 PRIMARY KEY(ProductNumber)
	);
    
CREATE  TABLE INVOICE(
	CustomerID	          Int			 NOT NULL,
	ProductNumber	      Int			 NOT NULL,
    Quantity			  Int            NOT NULL,
	AmountPaid		      Numeric(8,2)	 NULL,
  CONSTRAINT 		      INVOICE_PK  PRIMARY KEY(CustomerID, ProductNumber),
  CONSTRAINT 		      INVOICE_CUSTOMER_FK FOREIGN KEY (CustomerID)
	            					    REFERENCES CUSTOMER(CustomerID)
                                  ON UPDATE NO ACTION
                							    ON DELETE NO ACTION,
  CONSTRAINT 		      INVOICE_INVENTORY_FK  FOREIGN KEY (ProductNumber)
                            REFERENCES INVENTORY(ProductNumber)
						                	    ON UPDATE CASCADE
                							    ON DELETE CASCADE
  );