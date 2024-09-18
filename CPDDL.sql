CREATE TABLE Customer (
    Customer_id NUMBER PRIMARY KEY,
    Customer_name VARCHAR2(50),
    Customer_tel VARCHAR2(50),
    
);

CREATE TABLE Product (
    Product_id NUMBER PRIMARY KEY,
    Product_name VARCHAR2(50),
    Price  NUMBER(10, 2) NOT NULL,
    
);

CREATE TABLE Customer_Product (
    Customer_id NUMBER,
    Product_id NUMBER,
    Quantity NUMBER NOT NULL,
    Total_amount NUMBER NOT NULL,
    PRIMARY KEY (Customer_id, Product_id),
    FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    FOREIGN KEY (Product_id) REFERENCES Product(Product_id)
);

INSERT INTO Customer (Customer_id, Customer_name,  Customer_tel) 
VALUES (1, 'RAHMA', '22334455'),
        (2, 'AMINE', '22445566'),
        (3, 'CHADY', ' 33445566');
      
INSERT INTO Product (Product_id, Product_name,  Price) 
VALUES (1, 'product1', 5000),
        (2, 'product2', 200),
        (3, 'product3', 1000);
      
INSERT INTO Customer_Product (Customer_id, Product_id,  Quantity,Total_amount) 
VALUES (1, 1, 1,5000),
        (2, 1, 2,10000),
        (3, 2, 4,800);