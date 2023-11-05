-- Task 1
SELECT c.customerID, c.name, c.email, c.location, COUNT(o.orderID) AS total_orders
FROM Customers AS c
         LEFT JOIN Orders AS o ON c.customerID = o.customerID
GROUP BY c.customerID
ORDER BY total_orders DESC;

-- Task 2
SELECT p.name AS product_name, oi.quantity, (oi.quantity * oi.unit_price) AS total_amount, oi.orderID
FROM Order_Items AS oi
         JOIN Products AS p ON oi.productID = p.productID
ORDER BY oi.orderID ASC;

-- Task 3
SELECT cat.name AS category_name, SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM Categories AS cat
         JOIN Products AS p ON cat.categoryID = p.categoryID
         JOIN Order_Items AS oi ON p.productID = oi.productID
GROUP BY cat.categoryID
ORDER BY total_revenue DESC;

-- Task 4
SELECT c.name AS customer_name, SUM(o.totalAmount) AS total_purchase_amount
FROM Customers AS c
         JOIN Orders AS o ON c.customerID = o.customerID
GROUP BY c.customerID
ORDER BY total_purchase_amount DESC
    LIMIT 5;

