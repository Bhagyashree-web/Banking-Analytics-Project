-- Insert data into customer
INSERT INTO customer (customer_id, name, email, phone, address)
VALUES 
(1, 'Alice Sharma', 'alice@gmail.com', '9876543210', 'Mumbai'),
(2, 'Rahul Mehta', 'rahul@gmail.com', '9988776655', 'Delhi'),
(3, 'Priya Singh', 'priya@gmail.com', '9123456789', 'Pune');

-- Insert data into account
INSERT INTO account (account_id, customer_id, account_type, balance, open_date)
VALUES 
(101, 1, 'Savings', 15000.50, '2021-04-15'),
(102, 2, 'Current', 50000.00, '2020-11-05'),
(103, 3, 'Savings', 30000.75, '2022-01-10');

-- Insert data into transaction
INSERT INTO transaction (transaction_id, account_id, amount, transaction_type, transaction_date)
VALUES 
(1001, 101, 500.00, 'Deposit', '2023-01-20'),
(1002, 102, 1200.00, 'Withdrawal', '2023-03-14'),
(1003, 103, 2000.00, 'Deposit', '2023-05-12');

-- Insert data into loan
INSERT INTO loan (loan_id, customer_id, loan_type, loan_amount, issue_date, status)
VALUES 
(201, 1, 'Home', 500000.00, '2022-07-01', 'Active'),
(202, 2, 'Car', 300000.00, '2021-12-01', 'Closed'),
(203, 3, 'Personal', 150000.00, '2023-02-15', 'Active');

-- Insert data into marketing
INSERT INTO marketing (campaign_id, customer_id, campaign_name, contact_date, response)
VALUES 
(304, 1, 'Summer Loan Offer', '2023-06-10', 'Yes'),
(305, 2, 'New FD Plan', '2023-06-15', 'No'),
(306, 3, 'Credit Card Bonus', '2023-06-17', 'Yes'); 

SELECT * FROM customer;
SELECT * FROM account;
SELECT * FROM transaction;
SELECT * FROM loan;
SELECT * FROM marketing;


