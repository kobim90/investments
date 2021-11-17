CREATE DATABASE investments_DB;

CREATE TABLE `clients` (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(20) NOT NULL,
  email varchar(40) NOT NULL,
  PRIMARY KEY (id)
  );

  Create table `investment_pool` (
	id int NOT NULL AUTO_INCREMENT,
    name varchar(30) NOT NULL,
    primary key (id)
  );
  

CREATE TABLE `stores` (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(100) NOT NULL,
  investment_pool_id int NOT NULL,
  PRIMARY KEY (id),
  constraint FK_investment_pool_id_stores foreign key (investment_pool_id) references investment_pool (id)
  );
  
  
  Create table `client_pool` (
	client_id int NOT NULL,
    investment_pool_id int NOT NULL,
    amount_invested int NOT NULL,
	PRIMARY KEY (client_id, investment_pool_id),
  CONSTRAINT FK_client_id_client_pool FOREIGN KEY (client_id) REFERENCES clients (id),
  CONSTRAINT FK_investment_pool_id_client_pool FOREIGN KEY (investment_pool_id) REFERENCES investment_pool (id)
  );clients