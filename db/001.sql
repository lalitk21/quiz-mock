CREATE TABLE quiz (
    id int auto_increment,
    title varchar(100),
    url varchar(100),
    rating double default 3.0,
	created_at timestamp default current_timestamp,
	created_by varchar(100),
	modified timestamp default current_timestamp,
	modified_by varchar(100),
	update_version int default 0
);
