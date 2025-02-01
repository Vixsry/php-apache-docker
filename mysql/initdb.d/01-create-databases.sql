-- Create main database
CREATE DATABASE IF NOT EXISTS `your_database` 
CHARACTER SET utf8mb4 
COLLATE utf8mb4_unicode_ci;

-- Create user and grant privileges
CREATE USER IF NOT EXISTS 'your_user'@'%' 
IDENTIFIED BY 'your_password';

GRANT ALL PRIVILEGES ON `your_database`.* TO 'your_user'@'%';

-- Security best practices
DELETE FROM mysql.user WHERE User='';
DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
DROP DATABASE IF EXISTS test;
DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%';

FLUSH PRIVILEGES;