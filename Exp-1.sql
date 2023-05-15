-- Create a new user account with no privileges
CREATE USER 'new_user'@'localhost' IDENTIFIED BY 'password@123';

-- Grant SELECT, DELETE, INSERT AND UPDATE permission on the employees table to the new user
GRANT SELECT, DELETE, INSERT, UPDATE ON hoteldb.employees TO
'new_user'@'localhost';


-- select the mysql database, which is the database that stores user account information and access privileges:
USE mysql;

-- list all the user accounts that are defined in the MySQL server:
SELECT User, Host FROM mysql.user;

-- To check the access privileges of the new_user account:
SHOW GRANTS FOR 'new_user'@'localhost';

-- REVOKE UPDATE permission on the employees table to the new user
REVOKE UPDATE ON hoteldb.employees TO 'new_user'@'localhost';