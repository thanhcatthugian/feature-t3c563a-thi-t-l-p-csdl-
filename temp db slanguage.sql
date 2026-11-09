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

INSERT INTO languages (language_name) VALUES 
('English');
INSERT INTO topics (topic_name, language_id) VALUES 
('Technology', 1),
('Travel', 1),
('Food & Drinks', 1),
('Health', 1),
('Environment', 1);
INSERT INTO words (name, hardness_ranking) VALUES 
('Computer', 'easy'),
('Algorithm', 'normal'),
('Artificial Intelligence', 'hard'),
('Software', 'easy'),
('Cybersecurity', 'hard'),
('Passport', 'easy'),
('Itinerary', 'normal'),
('Luggage', 'easy'),
('Expedition', 'hard'),
('Accommodation', 'normal'),
('Bread', 'easy'),
('Recipe', 'easy'),
('Cuisine', 'normal'),
('Gastronomy', 'hard'),
('Beverage', 'normal'),
('Doctor', 'easy'),
('Symptoms', 'normal'),
('Prescription', 'normal'),
('Epidemic', 'hard'),
('Immunity', 'normal'),
('Forest', 'easy'),
('Pollution', 'normal'),
('Biodiversity', 'hard'),
('Recycle', 'easy'),
('Deforestation', 'hard');
INSERT INTO word_topics (word_id, topic_id) VALUES 
(1, 1), (2, 1), (3, 1), (4, 1), (5, 1),
(6, 2), (7, 2), (8, 2), (9, 2), (10, 2),
(11, 3), (12, 3), (13, 3), (14, 3), (15, 3),
(16, 4), (17, 4), (18, 4), (19, 4), (20, 4),
(21, 5), (22, 5), (23, 5), (24, 5), (25, 5);

