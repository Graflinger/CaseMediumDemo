CREATE SCHEMA case_example;

CREATE TABLE case_example.orders (
    order_id INT NOT NULL,
    customer_name VARCHAR (25) NOT NULL,
    order_country VARCHAR (25) NOT NULL,
    order_price DECIMAL (10,2) NOT NULL,
    PRIMARY KEY (order_id)
);

INSERT INTO case_example.orders (
    order_id,
    customer_name,
    order_country,
    order_price
)
VALUES 
(1,'John','US',10.10), 
(2,'Jane','USA',9.10),
(3,'Stefan','Germany',7.54),
(4,'Anna','Italy',15.23),
(5,'Tim','France',20.23)