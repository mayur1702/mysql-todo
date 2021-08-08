CREATE TABLE `apps-db`.users (
	userid INT auto_increment NOT NULL,
	username varchar(100) NOT NULL,
	email varchar(100) NOT NULL,
	password varchar(1000) NOT NULL,
	created_on DATETIME DEFAULT now() NOT NULL,
	phonenumber VARCHAR(20) NULL,
	CONSTRAINT users_PK PRIMARY KEY (userid),
	CONSTRAINT email_UN UNIQUE KEY (email),
	CONSTRAINT username_UN UNIQUE KEY (username)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;
