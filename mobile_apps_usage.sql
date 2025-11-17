CREATE DATABASE mobile_apps_usage;
USE mobile_apps_usage;

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    age INT,
    gender VARCHAR(10),
    location VARCHAR(100)
);

INSERT INTO users (user_id, age, gender, location) VALUES 
(1, 25, 'Female', 'Mumbai'),
(2, 32, 'Male', 'Delhi'),
(3, 45, 'Other', 'Bangalore'),
(4, 29, 'Female', 'Hyderabad'),
(5, 36, 'Male', 'Chennai'),
(6, 41, NULL, 'Kolkata'),
(7, 22, 'Male', 'Pune'),
(8, 30, 'Female', 'Ahmedabad'),
(9, 38, NULL, 'Jaipur'),
(10, 26, 'Other', 'Surat'),
(11, 47, 'Female', 'Lucknow'),
(12, 52, 'Male', 'Bhopal'),
(13, 34, 'Male', 'Thiruvananthapuram'),
(14, 27, NULL, 'Nagpur'),
(15, 40, 'Female', 'Indore'),
(16, 31, 'Other', 'Vishakhapatnam'),
(17, 28, 'Male', 'Patna'),
(18, 35, 'Female', 'Guwahati'),
(19, 50, NULL, 'Coimbatore'),
(20, 33, 'Male', 'Chandigarh');


CREATE TABLE apps (
    app_id INT PRIMARY KEY,
    app_name VARCHAR(100),
    category VARCHAR(50)
);

INSERT INTO apps (app_id, app_name, category) VALUES (1, 'WhatsApp', 'Social'), (2, 'Instagram', 'Social'),
 (3, 'YouTube', 'Entertainment'),(4, 'Google Maps', 'Navigation'),
 (5, 'Zomato', 'Food & Drink'),
 (6, 'Swiggy', 'Food & Drink'),
 (7, 'Amazon', 'Shopping'),
(8, 'Flipkart', 'Shopping'),
(9, 'Spotify', 'Music'),
(10, 'Microsoft Teams', NULL);

CREATE TABLE usage_logs (
    log_id INT PRIMARY KEY,
    user_id INT,
    app_id INT,
    usage_minutes INT,
    usage_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (app_id) REFERENCES apps(app_id)
);

INSERT INTO usage_logs (log_id, user_id, app_id, usage_minutes, usage_date) VALUES
(1, 3, 2, 45, '2024-01-05'),
(2, 7, 5, NULL, '2024-01-06'),
(3, 12, 1, 120, '2024-01-07'),
(4, 9, 8, 90, '2024-01-08'),
(5, 5, 3, 60, '2024-01-09'),
(6, 2, 10, 15, '2024-01-10'),
(7, 14, 4, 25, NULL),
(8, 6, 6, 70, '2024-01-12'),
(9, 18, 9, 80, '2024-01-13'),
(10, 1, 7, 20, '2024-01-14'),
(11, 11, 1, 110, '2024-01-15'),
(12, 10, 2, 35, '2024-01-16'),
(13, 4, 3, 95, '2024-01-17'),
(14, 16, 5, 100, '2024-01-18'),
(15, 8, 6, 55, '2024-01-19'),
(16, 19, 7, 150, '2024-01-20'),
(17, 13, 8, 45, '2024-01-21'),
(18, 17, 10, 75, '2024-01-22'),
(19, 15, 4, 60, '2024-01-23'),
(20, 20, 9, 130, '2024-01-24'),
(21, 3, 2, 90, '2024-02-01'),
(22, 7, 5, 85, '2024-02-02'),
(23, 12, 1, 100, '2024-02-03'),
(24, 9, 8, 40, '2024-02-04'),
(25, 5, 3, 35, '2024-02-05'),
(26, 2, 10, 70, '2024-02-06'),
(27, 14, 4, NULL, '2024-02-07'),
(28, 6, 6, 140, '2024-02-08'),
(29, 18, 9, 65, '2024-02-09'),
(30, 1, 7, 75, '2024-02-10'),
(31, 11, 1, 60, '2024-03-01'),
(32, 10, 2, 25, '2024-03-02'),
(33, 4, 3, 130, '2024-03-03'),
(34, 16, 5, 45, '2024-03-04'),
(35, 8, 6, 95, '2024-03-05'),
(36, 19, 7, 115, '2024-03-06'),
(37, 13, 8, 105, '2024-03-07'),
(38, 17, 10, 40, '2024-03-08'),
(39, 15, 4, 150, '2024-03-09'),
(40, 20, 9, NULL, '2024-03-10'),
(41, 1, 2, 170, '2024-03-11'),
(42, 5, 5, 45, '2024-03-12'),
(43, 9, 1, 25, '2024-03-13'),
(44, 6, 3, 90, '2024-03-14'),
(45, 18, 6, 80, '2024-03-15'),
(46, 7, 7, 35, NULL),
(47, 10, 8, 55, '2024-03-17'),
(48, 2, 9, 95, '2024-03-18'),
(49, 14, 10, 60, '2024-03-19'),
(50, 3, 4, 100, '2024-03-20'),
(51, 1, 1, 110, '2025-05-11'),
(52, 2, 2, 95, '2025-05-11'),
(53, 3, 3, 125, '2025-05-11'),
(54, 4, 4, 85, '2025-05-11'),
(55, 5, 5, 140, '2025-05-11'),
(56, 6, 6, 160, '2025-05-12'),
(57, 7, 7, 50, NULL),
(58, 8, 8, 75, '2025-05-12'),
(59, 9, 9, 100, '2025-05-12'),
(60, 10, 10, 115, '2025-05-12'),
(61, 11, 1, 130, '2025-05-13'),
(62, 12, 2, 105, '2025-05-13'),
(63, 13, 3, 60, '2025-05-13'),
(64, 14, 4, 90, '2025-05-13'),
(65, 15, 5, 120, '2025-05-13'),
(66, 16, 6, 150, '2025-05-14'),
(67, 17, 7, 55, '2025-05-14'),
(68, 18, 8, 80, '2025-05-14'),
(69, 19, 9, 100, '2025-05-14'),
(70, 20, 10, 120, '2025-05-14'),
(71, 1, 1, 145, NULL),
(72, 2, 2, 135, '2025-05-15'),
(73, 3, 3, 75, '2025-05-15'),
(74, 14, 4, 100, '2025-05-15'),
(75, 15, 5, 140, '2025-05-15'),
(76, 6, 6, 190, '2025-05-16'),
(77, 7, 7, 45, '2025-05-16'),
(78, 18, 8, 60, '2025-05-16'),
(79, 9, 9, 80, '2025-05-16'),
(80, 20, 10, 110, '2025-05-16'),
(81, 11, 1, 120, '2025-05-17'),
(82, 2, 2, 140, '2025-05-17'),
(83, 3, 3, NULL, '2025-05-17'),
(84, 14, 4, 90, '2025-05-17'),
(85, 15, 5, 115, '2025-05-17'),
(86, 6, 6, 170, '2025-05-18'),
(87, 7, 7, 50, '2025-05-18'),
(88, 18, 8, NULL, '2025-05-18'),
(89, 19, 9, 85, '2025-05-18'),
(90, 10, 10, 100, '2025-05-18'),
(91, 1, 1, 130, '2025-05-19'),
(92, 12, 2, 125, NULL),
(93, 3, 3, 55, '2025-05-19'),
(94, 4, 4, 70, '2025-05-19'),
(95, 15, 5, 95, '2025-05-19'),
(96, 6, 6, 180, '2025-05-20'),
(97, 17, 7, 60, NULL),
(98, 8, 8, 70, '2025-05-20'),
(99, 9, 9, 100, '2025-05-20'),
(100, 10, 10, 120, '2025-05-20');

select distinct location from users;
#users and location having 'a' in their location
SELECT user_id, location FROM users 
WHERE location like '%a%';

#users having total app usage time greater than 300
SELECT user_id, SUM(usage_minutes) as total_usage
FROM usage_logs
GROUP BY user_id
HAVING total_usage > 300;

#window func - assigning rank to users as per total_usage of app
SELECT user_id, app_id, usage_minutes,
       RANK() OVER (PARTITION BY user_id ORDER BY usage_minutes DESC) as usage_rank
FROM usage_logs;

#Users who spent total app usage time above average
SELECT user_id, SUM(usage_minutes) AS total_usage
FROM usage_logs
GROUP BY user_id
HAVING SUM(usage_minutes) > (
    SELECT AVG(total_usage)
    FROM (
        SELECT user_id, SUM(usage_minutes) AS total_usage
        FROM usage_logs
        GROUP BY user_id
    ) AS user_totals
)
ORDER BY total_usage DESC;

#Joins - Top 3 most used apps
SELECT a.app_name, SUM(l.usage_minutes) AS total_usage
FROM usage_logs l
JOIN apps a ON l.app_id = a.app_id
GROUP BY a.app_name
ORDER BY total_usage DESC
LIMIT 3;

#Gender and app usage
SELECT u.gender, ROUND(AVG(l.usage_minutes), 2) AS avg_usage
FROM usage_logs l
JOIN users u ON l.user_id = u.user_id
WHERE u.gender IS NOT NULL
GROUP BY u.gender;

#Most active location
SELECT u.location, SUM(l.usage_minutes) AS total_usage
FROM usage_logs l
JOIN users u ON l.user_id = u.user_id
GROUP BY u.location
ORDER BY total_usage DESC
LIMIT 1;

#App usage - category wise
SELECT a.category, COUNT(DISTINCT l.user_id) AS unique_users, SUM(l.usage_minutes) AS total_minutes
FROM usage_logs l
JOIN apps a ON l.app_id = a.app_id
GROUP BY a.category;

#Data Validation & Constraints
ALTER TABLE usage_logs
ADD CONSTRAINT check_usage_minutes CHECK (usage_minutes >= 0);

#Data Cleaning - NULL
SELECT * FROM usage_logs WHERE usage_minutes IS NULL;
SET SQL_SAFE_UPDATES = 0;
UPDATE usage_logs SET usage_minutes = 0 WHERE usage_minutes IS NULL;
SET SQL_SAFE_UPDATES = 1;
SELECT * FROM usage_logs WHERE usage_minutes = 0;

#Transaction Handling - COMMIT
START TRANSACTION;
INSERT INTO usage_logs (log_id, user_id, app_id, usage_minutes, usage_date)
VALUES (101, 1, 2, 50, '2025-05-21');
COMMIT;
SELECT * FROM usage_logs WHERE log_id>100;

#Transaction Handling - ROLLBACK
START TRANSACTION;
INSERT INTO usage_logs (log_id, user_id, app_id, usage_minutes, usage_date)
VALUES (102, 7, 9, 150, '2025-05-21');
SELECT * FROM usage_logs WHERE log_id>100;
ROLLBACK;
SELECT * FROM usage_logs WHERE log_id>100;

#INDEXING
#Creating index on user_id in usage_logs table
CREATE INDEX idx_user_id ON usage_logs(user_id);

DROP INDEX idx_user_id ON usage_logs;

#Query to calculate total usage time for each user
SELECT user_id, SUM(usage_minutes) AS total_usage
FROM usage_logs
WHERE user_id = 5
GROUP BY user_id;

SELECT user_id, SUM(usage_minutes) AS total_usage
FROM usage_logs
WHERE user_id = 5
GROUP BY user_id;
