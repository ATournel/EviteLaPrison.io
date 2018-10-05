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