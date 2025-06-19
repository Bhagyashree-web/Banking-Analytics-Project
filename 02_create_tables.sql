-- Create customer table
CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    address VARCHAR(255)
);

-- Create account table
CREATE TABLE account (
    account_id INT PRIMARY KEY,
    customer_id INT,
    account_type VARCHAR(20),
    balance DECIMAL(12,2),
    open_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

-- Create transaction table
CREATE TABLE transaction (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    amount DECIMAL(10,2),
    transaction_type VARCHAR(20),
    transaction_date DATE,
    FOREIGN KEY (account_id) REFERENCES account(account_id)
);

-- Create loan table
CREATE TABLE loan (
    loan_id INT PRIMARY KEY,
    customer_id INT,
    loan_type VARCHAR(20),
    loan_amount DECIMAL(10,2),
    issue_date DATE,
    status VARCHAR(10),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

-- Create marketing table
CREATE TABLE marketings (
    campaign_id INT PRIMARY KEY,
    customer_id INT,
    campaign_name VARCHAR(100),
    contact_date DATE,
    response VARCHAR(10),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

SHOW TABLES;

