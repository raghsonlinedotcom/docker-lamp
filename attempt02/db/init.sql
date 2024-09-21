USE DockerMySQLTest;

DROP TABLE IF EXISTS Test;

CREATE TABLE IF NOT EXISTS Test (
  Id INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(50) NOT NULL,
  IS_ACTIVE CHAR(1) DEFAULT 'Y'
);

INSERT INTO Test (Name, IS_ACTIVE) VALUES ('Raghavan', 'Y');
INSERT INTO Test (Name) VALUES ('Kannan');
INSERT INTO Test (Name, IS_ACTIVE) VALUES ('Meenakshi', 'N');

