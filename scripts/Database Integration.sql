CREATE DATABASE insurance_db;
USE insurance_db;
CREATE TABLE insurance_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    age INT,
    sex VARCHAR(10),
    bmi FLOAT,
    children INT,
    smoker VARCHAR(3),
    region VARCHAR(50),
    charges FLOAT
);
SELECT smoker, AVG(charges) AS avg_charges
FROM insurance_data
GROUP BY smoker;
SELECT region, COUNT(*) AS count
FROM insurance_data
GROUP BY region
ORDER BY count DESC;
SELECT age, sex, bmi, charges
FROM insurance_data
ORDER BY bmi DESC
LIMIT 5;
SELECT * FROM insurance_data
WHERE smoker = 'yes' AND charges > 50000;


