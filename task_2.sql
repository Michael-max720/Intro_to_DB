CREATE TABLE IF NOT EXISTS Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
);
CREATE TABLE IF NOT EXISTS Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    price DOUBLE NOT NULL,
    publication_date DATE,
    author_id INT,
    CONSTRAINT fk_author FOREIGN KEY (Author_id)
    REFERENCES Authors (Author_id)
);
CREATE TABLE IF NOT EXISTS Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) UNIQUE NOT NULL,
    address TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE NOT NULL,
    customer_id INT,
    CONSTRAINT fk_customer FOREIGN KEY (Customer_id)
    REFERENCES Customers (Customer_id)
);
CREATE TABLE IF NOT EXISTS Order_details (
   orderdetails_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity INT NOT NULL,
    CONSTRAINT fk_order FOREIGN KEY (Order_id)
    REFERENCES Orders (Order_id),
    CONSTRAINT fk_book FOREIGN KEY (Book_id)
    REFERENCES Books (Book_id)
);
