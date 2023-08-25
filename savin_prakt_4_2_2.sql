CREATE DATABASE IF NOT EXISTS postamts;
USE postamts;
ALTER DATABASE postamts CHARACTER SET = utf8;

DROP TABLE IF EXISTS postamt;
CREATE TABLE IF NOT EXISTS postamt(id INT PRIMARY KEY NOT NULL,addres VARCHAR(30) NOT NULL,
work_hours VARCHAR(20), INDEX (id));

DROP TABLE IF EXISTS workers;
CREATE TABLE IF NOT EXISTS workers(id_work INT PRIMARY KEY NOT NULL,lastname VARCHAR(20) NOT NULL,
firstname VARCHAR(20) NOT NULL, middlename VARCHAR(20),passport VARCHAR(50) NOT NULL,
address VARCHAR(20), nomer_trud VARCHAR(10) NOT NULL,INDEX (id_work),
foreign key(id_work) references postamt(id));

DROP TABLE IF EXISTS sendings;
CREATE TABLE IF NOT EXISTS sendings(id_send INT NOT NULL,weight SMALLINT NOT NULL, 
categor VARCHAR(10) NOT NULL, trek_num INT PRIMARY KEY NOT NULL, INDEX (trek_num),
foreign key(id_send) references postamt(id));

