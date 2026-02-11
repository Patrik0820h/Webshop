CREATE TABLE Users(
    user_first_name VARCHAR(50) NOT NULL,
    user_last_name VARCHAR(50) NOT NULL,
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    user_email VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL;
    phone_number INT (8) NOT NULL,
    address_of_order VARCHAR(50) NOT NULL;
    user_birthday DATETIME NOT NULL,
);

CREATE TABLE Role(
    role_id INT AUTO_INCREMENT PRIMARY KEY,
    role_name VARCHAR(50) NOT NULL,
    role_point VARCHAR(50) NOT NULL,
);

Create Table Orders(
    order_id INT AUTO_INCREMENT,
    user_id INT NOT NULL,
    product_id INT NOT NULL,
    order_amount INT NOT NULL,
    order_date TIMESTAMP,
    order_manufacterer VARCHAR(50) NOT NULL,
    PRIMARY KEY (order_id)
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
    FOREIGN KEY (paymethod_id) REFERENCES PaymentMethods(paymethod_id)
);

Create Table Payment(
    payment_id INT AUTO_INCREMENT,
    paymethod_id INT NOT NULL,
    payment_date DATETIME NOT NULL,
    PRIMARY KEY (payment_id),
    FOREIGN KEY (payment_id) REFERENCES Paymethod(s)
    FOREIGN KEY (paymethod_id) REFERENCES Paymethod(paymethod_id)
);

Create Table Paymethod(
    paymethod_id INT AUTO_INCREMENT,
    paymethod_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (paymethod_id)
);