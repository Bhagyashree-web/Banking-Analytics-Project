-- 04_basic_queries.sql
USE banking_analytics;

-- 1. Show all customers
SELECT * FROM customer;

-- 2. Show all accounts with balance above 20000
SELECT * FROM account WHERE balance > 20000;

-- 3. List all deposit transactions
SELECT * FROM transaction WHERE transaction_type = 'Deposit';

-- 4. List active loans
SELECT * FROM loan WHERE status = 'Active';

-- 5. Show all customers who responded to marketing positively
SELECT c.name, m.campaign_name, m.response
FROM customer c
JOIN marketing m ON c.customer_id = m.customer_id
WHERE m.response = 'Yes';

SELECT c.name, m.campaign_name, m.response
FROM customer c
JOIN marketing m ON c.customer_id = m.customer_id
WHERE m.response = 'No';

SELECT COUNT(*) AS positive_responses
FROM marketing
WHERE response = 'Yes';

SELECT campaign_name, COUNT(*) AS total_yes
FROM marketing
WHERE response = 'Yes'
GROUP BY campaign_name;

SELECT c.name, m.campaign_name, l.loan_type, l.status
FROM customer c
JOIN marketing m ON c.customer_id = m.customer_id
JOIN loan l ON c.customer_id = l.customer_id
WHERE m.response = 'Yes' AND l.status = 'Active';
