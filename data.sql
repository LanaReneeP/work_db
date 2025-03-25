
-- I tried with this and I know it's wrong but i can't get it for the life of me so I put the data in the best I could...sorry



INSERT INTO employee(fName, lName, title, emp_num, dept_id, emp_tier, salary, date_hired, emp_status)
VALUES 
    ('SATCH', 'PAGE', 'OWNER', 6032001, 1, 3, 105000.00, '2017-10-23', 1),
    ('DEBONIE', 'WEEMS', 'OFFICE MANAGER', 6032002, 1, 2, 85000.00, '2017-10-23', 1),
    ('JORDAN', 'WALLACE', 'CUSTOMER SERVICE REP', 6032003, 3, 1, 45000.00 '2021-07-10', 1),
    ('JANAE', 'TEACHY', 'MARKETING REP', 6032004, 2, 1, 64000.00, '2023-07-19', 1),
    ('ETHAN', 'DANIELS', 'SALES MANAGER', 6032005, 3, 2, 80000.00, '2018-06-24', 1),
    ('FABIAN', 'HILL', 'MARKETING MANAGER', 6032006, 2, 2, 80000.00, '2019-07-11', 1),
    ('KATELYN', 'NGUYEN', 'CUSTOMER SERVICE REP', 6032007, 3, 1, 50000.00, '2020-06-24', 1),
    ('VERIES', 'SEALS', 'MARKETING REP', 6032008, 2, 1, 64000.00, '2022-08-10', 1),
    ('RISHARD', 'BELL', 'CUSTOMER SERVICE REP', 6032009, 3, 1, 50000.00, '2017-11-01', 1),
    ('ZANDRYA', 'GABRIS', 'BOOKKEEPER', 6032010, 1, 1, 37500.00, '2018-09-05', 1)
;



INSERT INTO contract_table(contract_id, employee_id, client_name, amount_contract, contract_date, completion_data)
VALUES 
    ('1', '4', 'JANJALA DURR', 4500.00, 2025-03-17, 2025-09-17),
    ('2', '8', 'WILL BRIDGES', 10000.00, 2025-03-17, 2026-03-17),
    ('3', '8', 'CLINT JACKSON', 7500.00, 2025-03-18, 2025-09-18),
    ('4', '4', 'RENEE PALMETER', 4500.00, 2025-03-18, 2025-09-18),
    ('5', '4', 'MARY SHIELDS', 12000.00, 2025-03-19, 2026-03-19),
    ('6', '8', 'JUSTIN ARNOLD', 5500.00, 2025-03-19, 2025-09-19),
    ('7', '4', 'FAVOR SMITH',7500.00, 2025-03-20, 2025-09-20),
    ('8', '8', 'EZEKIEL CARY', 3500.00, 2025-03-20, 2025-09-20)
;

-- i have no idea if this is right and i feel its not but i am trusting the process... send help

INSERT INTO dept_dept(dept_id, dept_name)
VALUES
    (1, 'ADMINISTRATION'), 
    (2, 'MARKETING'), 
    (3, 'SALES')
;

INSERT INTO transaction(transaction_id, employee_id, products_sold, amount_transaction, transaction_date)
VALUES 
    (1, 3, 4, 117.45, '2025-03-17'), 
    (2, 3, 2, 56.35, '2025-03-17'), 
    (3, 7, 1, 48.45, '2025-03-17'), 
    (4, 9, 7, 318.85, '2025-03-17'),
    (5, 9, 3, 118.78, '2025-03-17'),
    (6, 7, 2, 27.67, '2025-03-17'),
    (7, 9, 1, 67.44, '2025-03-17'),
    (8, 3, 4, 176.98, '2025-03-17'),
    (9, 3, 5, 367.9, '2025-03-17'), 
    (10, 7, 3, 112.28, '2025-03-18'),
    (11, 7, 1, 39.82, '2025-03-18'),
    (12, 7, 6, 212.56, '2025-03-18'),
    (13, 3, 3, 98.18, '2025-03-18'), 
    (14, 9, 1, 67.44, '2025-03-18'),
    (15, 3, 1, 48.45, '2025-03-18'),
    (16, 7, 8, 429.98, '2025-03-18'),
    (17, 3, 3, 125.87, '2025-03-18'),
    (18, 9, 4, 162.45, '2025-03-19'),
    (19, 9, 2, 27.67, '2025-03-19'),
    (20, 7, 6, 219.67, '2025-03-19'),
    (21, 3, 2, 88.34, '2025-03-19'),
    (22, 7, 5, 312.34, '2025-03-19'),
    (23, 3, 1, 39.82, '2025-03-19'), 
    (24, 9, 1, 63.98, '2025-03-19'),
    (25, 3, 5, 275.45, '2025-03-20'),
    (26, 3, 2, 55.24, '2025-03-20'), 
    (27, 9, 3, 79.63, '2025-03-20'),
    (28, 7, 2, 55.24, '2025-03-20'),
    (29, 7, 2, 27.67, '2025-03-20'),
    (30, 7, 2, 79.65, '2025-03-20'),
    (31, 9, 1, 67.44, '2025-03-20'),
    (32, 7, 5, 312.34, '2025-03-20'),
    (33, 3, 5, 384.87, '2025-03-21'),
    (34, 9, 3, 227.32, '2025-03-21'),
    (35, 7, 1, 39.82, '2025-03-21'),
    (36, 7, 6, 144.12, '2025-03-21')
;

-- help i have dyslexia...this was painful to do...

