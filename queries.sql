-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT P.ProductName, C.CategoryName
FROM product as P
INNER JOIN category as C ON P.CategoryID = C.id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT O.id, O.ShipName
FROM [Order] as O
WHERE O.OrderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT P.ProductName, O.Quantity
FROM OrderDetail as O
JOIN Product as P ON O.ProductID = P.id
WHERE O.OrderId = '10251'
ORDER BY P.ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT O.Id as "Order ID", C.CompanyName as "Ordered By", E.LastName as "NorthWind Employee"
FROM [Order] as O
JOIN Employee as E ON O.EmployeeId = E.id
JOIN Customer as C on O.CustomerId = C.id

-- STRETCH PROBLEMS

--   Displays CategoryName and a new column called Count that shows how many products are in each category. Shows 8 records.

-- not correct yet
SELECT CategoryName, P.ProductName FROM Categories as C
JOIN Products as P ON P.CategoryID = C.CategoryID
ORDER BY C.CategoryID

--   Display OrderID and a column called ItemCount that shows the total number of products placed on the order. Shows 196 records.

