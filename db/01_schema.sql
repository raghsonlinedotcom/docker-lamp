-- Schema
CREATE DATABASE DockerMySQLTest;
--
USE DockerMySQLTest;
--
CREATE TABLE Test
(
	Id INT PRIMARY KEY AUTO_INCREMENT,
	Name VARCHAR(50) NOT NULL,
	IS_ACTIVE CHAR(1) DEFAULT 'Y',
);

