-- Dimension Table: Customer
CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    income_level VARCHAR(20),
    customer_tenure INT,
    credit_risk VARCHAR(20)
);

-- Dimension Table: Product
CREATE TABLE product (
    product_id INT PRIMARY KEY,
    product_type VARCHAR(50),
    distribution_channel VARCHAR(50),
    applicable_interest DECIMAL(5,2)
);

-- Dimension Table: Date
CREATE TABLE datedim (
    date_id INT PRIMARY KEY,
    day INT,
    month INT,
    year INT,
    quarter INT,
    weekday VARCHAR(15)
);

-- Fact Table: Transaction
CREATE TABLE transactionfact (
    transaction_id INT PRIMARY KEY,
    customer_id INT,
    date_id INT,
    product_id INT,
    amount DECIMAL(10,2),
    transaction_type VARCHAR(50),
    balance_before DECIMAL(10,2),
    balance_after DECIMAL(10,2),
    operation_channel VARCHAR(50),
    transaction_time TIMESTAMP,
    is_fraud BOOLEAN,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (date_id) REFERENCES datedim(date_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);
