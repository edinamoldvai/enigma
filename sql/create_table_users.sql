    CREATE TABLE Users (
      user_id INT NOT NULL AUTO_INCREMENT,
      email VARCHAR(80) NOT NULL,
      display_name VARCHAR(50) NOT NULL,
      password CHAR(41) NOT NULL,
      PRIMARY KEY (user_id),
      UNIQUE INDEX (email)
    ) ENGINE=INNODB;