drop database if exists vocab_db;
create database vocab_db;
use vocab_db;
create table languages(
	id int primary key auto_increment,
    language_name varchar(255)
);
create table topics(
	id int primary key auto_increment,
    topic_name varchar(255)not null,
    language_id int,
    foreign key(language_id)references languages (id)
);

create table words(
	id int primary key auto_increment,
    name varchar(255),
    hardness_ranking enum("easy","normal","hard")
);

create table word_topics(
	id int primary key auto_increment,
    word_id int,
    topic_id int,
    foreign key (topic_id) references topics(id),
    foreign key (word_id) references words(id)
);