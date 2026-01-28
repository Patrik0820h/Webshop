Create Table Orders(
    order_id INT (10),
    quantity INT(4),
    order_date TIMESTAMP,
    product_id INT (10),
    PRIMARY KEY (order_id)
    FOREIGN KEY (product_id) REFERENCES Products(/*másik tábla primary key"*/)
);



Create Table Payment(
    payment_id INT (10),


    PRIMARY KEY (payment_id)
    FOREIGN KEY (payment_id) REFERENCES Paymethod(s)
);

Create Table Paymethod(

    bank_accounts varchar (255),
    paypal varchar (255),
    



    PRIMARY KEY()
);