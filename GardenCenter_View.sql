
CREATE VIEW CustomerOrder AS
SELECT c.CustomerID, c.CustomerFirstName, c.CustomerLastName, invn.Product, invo.PurchasedQuantity, invn.Price AS ProductPrice,  invo.AmountPaid
FROM Invoice AS invo, Customer AS c, Inventory AS invn
WHERE invo.CustomerID = c.CustomerID AND invn.ProductNumber = invo.ProductNumber ;

SELECT *
FROM CustomerOrder
WHERE CustomerID = 1;

/*
The Function of this view is to produce a summary to view what a certain
customer has ordered, how much they ordered and how much they paid for 
either the store's records or the customer's.
*/
