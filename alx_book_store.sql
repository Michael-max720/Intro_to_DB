CREATE DATABASE alx_book_store;
USE alx_book_store;
CREATE TABLE Books(
    Book_id INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(130) NOT NULL,
    Price DOUBLE NOT NULL,
    Publication_date DATE,
    FOREIGN KEY(Author_id) REFERENCES Authors(Author_id) 
);
CREATE TABLE Authors(
    Author_id INT AUTO_INCREMENT PRIMARY KEY,
    Author_name VARCHAR(215) NOT NULL
);
CREATE TABLE Customers(
    Customer-id INT AUTO_INCREMENT PRIMARY KEY,
    Customer_name VARCHAR(215) NOT NULL,
    Email VARCHAR(215) UNIQUE=TRUE  NOT NULL,
    Address TEXT NOT NULL 
);
CREATE TABLE orders(
    Order_id INT AUTO_INCREMENT PRIMARY KEY,
    Order_date DATE,
    FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id)
);
CREATE TABLE Order_details(
    Orderdetails_id INT AUTO INCREMENT PRIMARY KEY,
    Quantity DOUBLE,
    FOREIGN KEY (Order_id) REFERENCES Orders(Order_id),
    FOREIGN KEY (Book_id) REFERENCES Books(Book_id)
);
