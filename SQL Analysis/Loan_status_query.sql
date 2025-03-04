/*CREATE TABLE loan_data (
  person_age INT,
  person_gender VARCHAR(10),
  person_education VARCHAR(50),
  person_income INT,
  person_emp_exp INT,
  person_home_ownership VARCHAR(20),
  loan_amnt INT,
  loan_intent VARCHAR(50),
  loan_int_rate FLOAT,
  loan_percent_income FLOAT,
  cb_person_cred_hist_length INT,
  credit_score INT,
  previous_loan_defaults_on_file VARCHAR(3),
  loan_status INT
);*/

/*1)
SELECT * FROM loan_data;*/

/*2) Loan Status
SELECT loan_status, COUNT (*) AS count 
FROM loan_data GROUP BY loan_status;*/

/*3) Loan Approval by Education
SELECT person_education,
       COUNT(*) AS total_loans,
       SUM(CASE WHEN loan_status = 0 THEN 1 ELSE 0 END) AS approved_loans,
       SUM(CASE WHEN loan_status = 1 THEN 1 ELSE 0 END) AS rejected_loans
FROM loan_data
GROUP BY person_education;*/

/*4) Loan approval by Income Level
SELECT
    CASE
        WHEN person_income < 25000 THEN 'Low Income (<25K)'
        WHEN person_income BETWEEN 25000 AND 75000 THEN 'Middle Income (25K-75K)'
        WHEN person_income > 75000 THEN 'High Income (>75K)'
    END AS income_category,
    COUNT(*) AS total_loans,
    SUM(CASE WHEN loan_status = 0 THEN 1 ELSE 0 END) AS approved_loans,
    SUM(CASE WHEN loan_status = 1 THEN 1 ELSE 0 END) AS rejected_loans
FROM loan_data
GROUP BY income_category;*/

/*SELECT person_home_ownership, loan_status
FROM loan_data
GROUP BY person_home_ownership;*/

/*5) Highest and Lowest credit scores
SELECT MIN(credit_score) AS min_credit, MAX(credit_score) AS max_credit
FROM loan_data;*/

/*6) Sort Credit Scores
SELECT
  CASE
    WHEN credit_score < 500 THEN 'Poor (<500)'
    WHEN credit_score BETWEEN 500 AND 700 THEN 'Average (500-700)'
    WHEN credit_score > 700 THEN 'Good (>700)'
  END AS credit_category,
  COUNT(*) AS count
FROM loan_data
GROUP BY credit_category;*/

/*7) Average loan amount per income group
SELECT
  CASE
    WHEN person_income < 25000 THEN 'Low Income (<25K)'
    WHEN person_income BETWEEN 25000 AND 75000 THEN 'Middle Income (25K-75K)'
    WHEN person_income > 75000 THEN 'High Income (>75K)'
  END AS income_category,
  AVG(loan_amnt) AS avg_loan_amount
FROM loan_data
GROUP BY income_category;*/

/*8) Loan amount per loan intent
SELECT loan_intent, AVG(loan_amnt) AS avg_loan_amount
FROM loan_data
GROUP BY loan_intent
ORDER BY avg_loan_amount DESC;*/

/*9) Highest loan amounts approved
SELECT * FROM loan_data
WHERE loan_status = 0
ORDER BY loan_amnt DESC
LIMIT 10;*/

/*10) Loan approvals by employment
SELECT person_emp_exp,
    COUNT(*) AS total_loans,
    SUM(CASE WHEN loan_status = 0 THEN 1 ELSE 0 END) AS approved_loans
FROM loan_data
GROUP BY person_emp_exp
ORDER BY person_emp_exp;*/

/*11) Loan approval by home ownership
SELECT person_home_ownership,
    COUNT(*) AS total_loans,
    SUM(CASE WHEN loan_status = 0 THEN 1 ELSE 0 END) AS approved_loans,
    SUM(CASE WHEN loan_status = 1 THEN 1 ELSE 0 END) AS rejected_loans
FROM loan_data
GROUP BY person_home_ownership;*/

