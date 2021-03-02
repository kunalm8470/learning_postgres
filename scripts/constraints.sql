create database social_media;

create table users (
	id SERIAL primary key,
	username VARCHAR(50)
);

insert into users (username) values
('monahan93'),
('pferrer'),
('si93onis'),
('99stroman');

select * from users;

create table photos (
	id SERIAL primary key,
	url varchar(300),
	user_id integer references users(id) 
);

insert into photos(url, user_id) values
('http://img1.png', 4),
('http://img2.png', 4),
('http://img3.png', 1),
('http://img4.png', 2);

insert into photos(url, user_id) values
('http://two.jpg', 1),
('http://25.jpg', 1),
('http://36.jpg', 1),
('http://754.jpg', 2),
('http://35.jpg', 3),
('http://256.jpg', 4);

select * from photos;

select * from photos where user_id = 4;

-- To get around foreign key violation constraint
insert into photos (url, user_id) values
('http://not-found.jpg', NULL);

select * from photos;