CREATE USER IF NOT EXISTS 'fassetbot'@'%' IDENTIFIED BY 'my1beta2password3';
GRANT ALL PRIVILEGES ON *.* TO 'fassetbot'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON fasset_bots.* TO 'fassetbot'@'%' WITH GRANT OPTION;