USE eviteLaPrison;

CREATE TABLE users(
userId INT NOT NULL auto_increment PRIMARY KEY,
firstName VARCHAR(40),
lastName VARCHAR(40),
dob VARCHAR(40),
email VARCHAR(40),
pwd VARCHAR(40),
statut VARCHAR(40)
);

CREATE TABLE cdc(
cdcId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nom VARCHAR(40),
description VARCHAR(1000)
);

CREATE TABLE licence(
licenceId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nom VARCHAR(40),
description VARCHAR(1000)
);