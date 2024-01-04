CREATE TABLE quiz (
    id int auto_increment PRIMARY KEY,
    title varchar(100),
    url varchar(100),
    rating double default 3.0,
    created_at timestamp default current_timestamp,
    created_by varchar(100),
    modified timestamp default current_timestamp,
    modified_by varchar(100),
    update_version int default 0
);

CREATE TABLE question (
    id int auto_increment PRIMARY KEY,
    question varchar(250),
    url varchar(100),
    option1 varchar(100),
    option2 varchar(100),
    option3 varchar(100),
    option4 varchar(100),
    answer int default 0,
    points int default 1,
    qxq_xref_id int default 0,
	created_at timestamp default current_timestamp,
	created_by varchar(100),
	modified timestamp default current_timestamp,
	modified_by varchar(100),
	update_version int default 0
);

CREATE TABLE question_xref_quiz (
    id int auto_increment PRIMARY KEY,
    question_id int,
    quiz_id int,
	created_at timestamp default current_timestamp,
	created_by varchar(100),
	modified timestamp default current_timestamp,
	modified_by varchar(100),
	update_version int default 0,
	FOREIGN KEY (question_id) REFERENCES question(id),
	FOREIGN KEY (quiz_id) REFERENCES quiz(id)
);


