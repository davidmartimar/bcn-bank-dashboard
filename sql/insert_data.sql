LOAD DATA LOCAL INFILE 'customer.csv'
INTO TABLE customer
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
-- Repite with the rest of .csvs
