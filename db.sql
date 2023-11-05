-- Create Customers table
CREATE TABLE Customers (
                           customerID INT PRIMARY KEY,
                           name VARCHAR(100),
                           email VARCHAR(100),
                           location VARCHAR(100)
);

-- Create Orders table
CREATE TABLE Orders (
                        orderID INT PRIMARY KEY,
                        customerID INT,
                        orderDate DATE,
                        totalAmount DECIMAL(10, 2),
                        FOREIGN KEY (customerID) REFERENCES Customers(customerID)
);

-- Create Products table
CREATE TABLE Products (
                          productID INT PRIMARY KEY,
                          name VARCHAR(100),
                          description TEXT,
                          price DECIMAL(10, 2)
);

-- Create Categories table
CREATE TABLE Categories (
                            categoryID INT PRIMARY KEY,
                            name VARCHAR(100)
);

-- Create Order_Items table
CREATE TABLE Order_Items (
                             orderItemID INT PRIMARY KEY,
                             orderID INT,
                             productID INT,
                             quantity INT,
                             unitPrice DECIMAL(10, 2),
                             FOREIGN KEY (orderID) REFERENCES Orders(orderID),
                             FOREIGN KEY (productID) REFERENCES Products(productID)
);

-- Insert sample data into Customers
INSERT INTO Customers (customerID, name, email, location) VALUES
                                                              (1, 'John Doe', 'john.doe@example.com', 'New York'),
                                                              (2, 'Jane Smith', 'jane.smith@example.com', 'Los Angeles'),
                                                              (3, 'Emily Johnson', 'emily.johnson@example.com', 'Chicago'),
                                                              (4, 'Michael Brown', 'michael.brown@example.com', 'Houston');

-- Insert sample data into Orders
INSERT INTO Orders (orderID, customerID, orderDate, totalAmount) VALUES
                                                                     (1, 1, '2023-01-01', 150.00),
                                                                     (2, 2, '2023-01-02', 200.00),
                                                                     (3, 1, '2023-01-03', 100.00),
                                                                     (4, 3, '2023-01-04', 250.00);

-- Insert sample data into Products
INSERT INTO Products (productID, name, description, price) VALUES
                                                               (1, 'Laptop', 'High-performance laptop', 1000.00),
                                                               (2, 'Mouse', 'Wireless mouse', 50.00),
                                                               (3, 'Keyboard', 'Mechanical keyboard', 150.00),
                                                               (4, 'Monitor', '4K UHD Monitor', 300.00);

-- Insert sample data into Categories
INSERT INTO Categories (categoryID, name) VALUES
                                              (1, 'Electronics'),
                                              (2, 'Accessories');

-- Insert sample data into Order_Items
INSERT INTO Order_Items (orderItemID, orderID, productID, quantity, unitPrice) VALUES
                                                                                   (1, 1, 1, 1, 1000.00),
                                                                                   (2, 1, 2, 1, 50.00),
                                                                                   (3, 2, 3, 1, 150.00),
                                                                                   (4, 3, 4, 1, 300.00),
                                                                                   (5, 4, 2, 2, 50.00);
