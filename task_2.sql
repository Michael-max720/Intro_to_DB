CREATE TABLE IF NOT EXISTS Authors (
    Author_id INT AUTO_INCREMENT PRIMARY KEY,
    Author_name VARCHAR(215) NOT NULL
);
CREATE TABLE IF NOT EXISTS Books (
    Book_id INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(130) NOT NULL,
    Price DOUBLE NOT NULL,
    Publication_date DATE,
    Author_id INT,
    CONSTRAINT fk_author FOREIGN KEY (Author_id)
    REFERENCES Authors (Author_id)
);
CREATE TABLE IF NOT EXISTS Customers (
    Customer_id INT AUTO_INCREMENT PRIMARY KEY,
    Customer_name VARCHAR(215) NOT NULL,
    Email VARCHAR(215) UNIQUE NOT NULL,
    Address TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS Orders (
    Order_id INT AUTO_INCREMENT PRIMARY KEY,
    Order_date DATE NOT NULL,
    Customer_id INT,
    CONSTRAINT fk_customer FOREIGN KEY (Customer_id)
    REFERENCES Customers (Customer_id)
);
CREATE TABLE IF NOT EXISTS Order_details (
    Orderdetails_id INT AUTO_INCREMENT PRIMARY KEY,
    Order_id INT,
    Book_id INT,
    Quantity INT NOT NULL,
    CONSTRAINT fk_order FOREIGN KEY (Order_id)
    REFERENCES Orders (Order_id),
    CONSTRAINT fk_book FOREIGN KEY (Book_id)
    REFERENCES Books (Book_id)
);
