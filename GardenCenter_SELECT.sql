SELECT Product, Quantity
FROM Inventory;
# Used to see how much of each product there is.

SELECT Product, Quantity
FROM Inventory 
Where ProductType = 'Tree';
# Used to see how much of a certain type of product is available

SELECT c.CustomerID, c.CustomerFirstName, c.CustomerLastName, invo.AmountPaid
FROM Invoice AS invo, Customer AS c
WHERE invo.CustomerID = c.CustomerID
ORDER BY AmountPaid desc;
#Used to see which customer has spent the most money.alter

SELECT invn.ProductNumber, invn.Product, invo.PurchasedQuantity
FROM Inventory AS invn, Invoice AS invo
WHERE invn.ProductNumber = invo.ProductNumber
ORDER BY PurchasedQuantity desc;
#Used to see what items were bought the most

SELECT Product, Quantity
FROM Inventory
Where Quantity < 10
ORDER BY Quantity asc;
#Used to see what items might be low in stock