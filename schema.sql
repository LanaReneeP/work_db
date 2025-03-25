

DROP DATABASE IF EXISTS myworkDB;
CREATE DATABASE myworkDB;
USE myworkDB;

-- dept_dept-bo-tee-bo-bo-bo-tee table
CREATE TABLE dept_dept(
    dept_id SMALLINT UNSIGNED AUTO_INCREMENT NOT NULL,
    dept_name VARCHAR(30),
    CONSTRAINT pk_dept PRIMARY KEY (dept_id)
);

-- employee table
CREATE TABLE employee(
    employee_id SMALLINT UNSIGNED AUTO_INCREMENT NOT NULL,
    fName VARCHAR(40),
    lName VARCHAR(40),
    title VARCHAR(60),
    emp_num SMALLINT, 
    dept_id SMALLINT UNSIGNED, 
    emp_tier SMALLINT,
    salary FLOAT, 
    date_hired DATE, 
    emp_status SMALLINT,
    CONSTRAINT pk_employee PRIMARY KEY (employee_id),
    CONSTRAINT fk_dept FOREIGN KEY (dept_id) REFERENCES dept_dept(dept_id) 
);

-- contract_table
CREATE TABLE contract_table(
    contract_id SMALLINT UNSIGNED AUTO_INCREMENT NOT NULL,
    employee_id SMALLINT UNSIGNED NOT NULL,
    client_name VARCHAR(40), 
    amount_contract SMALLINT,
    contract_date DATE,
    completion_date DATE,
    CONSTRAINT pk_contract PRIMARY KEY (contract_id),
    CONSTRAINT fk_contract_employee FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);

-- transaction table
CREATE TABLE transaction(
    transaction_id SMALLINT UNSIGNED AUTO_INCREMENT NOT NULL,
    employee_id SMALLINT UNSIGNED,
    products_sold SMALLINT,
    amount_transaction SMALLINT,
    transaction_date DATETIME, 
    CONSTRAINT pk_transaction PRIMARY KEY (transaction_id),
    CONSTRAINT fk_transaction_employee FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);

-- work table
CREATE TABLE work(
    work_id SMALLINT UNSIGNED AUTO_INCREMENT NOT NULL,
    title VARCHAR(40),
    employee_id SMALLINT UNSIGNED NOT NULL,
    contract_id SMALLINT UNSIGNED NOT NULL,
    transaction_id SMALLINT UNSIGNED NOT NULL,
    dept_id SMALLINT UNSIGNED NOT NULL,
    yr_released YEAR,
    data_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT pk_work PRIMARY KEY (work_id),
    CONSTRAINT fk_employee FOREIGN KEY (employee_id) REFERENCES employee (employee_id),
    CONSTRAINT fk_contract FOREIGN KEY (contract_id) REFERENCES contract_table (contract_id),
    CONSTRAINT fk_transaction FOREIGN KEY (transaction_id) REFERENCES transaction (transaction_id),
    CONSTRAINT fk_dept_dept FOREIGN KEY (dept_id) REFERENCES dept_dept (dept_id)
);

-- im struggling with this---- jesus christmas

-- data_created and last_update to employee, contract_table, transaction, and dept_dept-bo-tee-bo-bo-bo-tee tables
ALTER TABLE employee
ADD data_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
ADD last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE contract_table
ADD data_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
ADD last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE transaction
ADD data_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
ADD last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE dept_dept
ADD data_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
ADD last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;





--   ／\、
--  （ﾟ､ ｡ ７
--  ⠀ |、ﾞ ~ヽ
--    じしf_, )ノ