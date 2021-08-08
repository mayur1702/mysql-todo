CREATE TABLE `apps-db`.tasks (
	taskid INT auto_increment NOT NULL,
	task_name varchar(100) NOT NULL,
	task_description varchar(500) NULL,
	task_status enum('active','completed','deleted','created') DEFAULT 'created' NOT NULL,
	userid INT NOT NULL,
	created_on DATETIME DEFAULT now() NOT NULL,
	updated_on DATETIME DEFAULT now() NOT NULL,
	CONSTRAINT tasks_PK PRIMARY KEY (taskid),
	CONSTRAINT tasks_FK FOREIGN KEY (userid) REFERENCES allrounder.users(userid)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;
