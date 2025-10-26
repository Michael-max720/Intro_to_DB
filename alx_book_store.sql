CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;
CREATE TABLE Books(
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT  NOT NULL,
    price DOUBLE NOT NULL,
    publication_date DATE,
    FOREIGN KEY(Author_id) REFERENCES Authors(Author_id) 
);
CREATE TABLE Authors(
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
);
CREATE TABLE Customers(
    customer-id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) UNIQUE=TRUE  NOT NULL,
    address TEXT NOT NULL 
);
CREATE TABLE Orders(
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    customer_id INT,
    FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id)
);
CREATE TABLE Order_details(
    orderdetails_id INT AUTO INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    book_id INT NOT NULL,
    quantity DOUBLE,
    FOREIGN KEY (Order_id) REFERENCES Orders(Order_id),
    FOREIGN KEY (Book_id) REFERENCES Books(Book_id)
);
