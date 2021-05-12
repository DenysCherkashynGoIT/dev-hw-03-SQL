INSERT INTO skills(programming_lang, grade, id) VALUES
('JAVA', 'junior', '01_jun'),
('JAVA', 'middle', '01_mid'),
('JAVA', 'senior', '01_sen'),
('C#', 'junior', '02_jun'),
('C#', 'middle', '02_mid'),
('C#', 'senior', '02_sen'),
('C++', 'junior', '03_jun'),
('C++', 'middle', '03_mid'),
('C++', 'senior', '03_sen'),
('JavaScript', 'junior', '04_jun'),
('JavaScript', 'middle', '04_mid'),
('JavaScript', 'senior', '04_sen'),
('Pyton', 'junior', '05_jun'),
('Pyton', 'middle', '05_mid'),
('Pyton', 'senior', '05_sen');

INSERT INTO companies (name, website, city) VALUES
('Warner Brosers', 'www.warnerbros.com', 'Berbank'),
('Metro-Goldwyn-Mayer', 'www.mgm-holdings.com', 'Los-Angeles'),
('20th Century Fox', 'www.20thcenturystudios.com', 'Los-Angeles'),
('Paramount Pictures', 'www.parapictures.com', 'Los-Angeles'),
('Universal Pictures', 'www.universal-prod.com', 'Universal-city'),
('Columbia Pictures', 'www.columbia-pic.com', 'Los-Angeles'),
('New Line Cinema', 'www.curves.com', 'Berbank'),
('OdessaFilm', 'www.odessa-movie.com', 'Odessa'),
('STB production', 'www.stb-tv.com', 'Kyiv');

INSERT INTO developers(first_name, last_name, age, gender, company_id) VALUES
('John', 'Travolta', 65, 'male', 1),
('Quentine', 'Tarantino', 55, 'male', 5),
('Mel', 'Gibson', 70, 'male', 1),
('Halle', 'Berry', 55, 'female', 2),
('Bruce', 'Willis', 68, 'male', 3),
('Will', 'Smith', 50, 'male', 4),
('Salma', 'Hayek', 55, 'female', 4),
('Scarlett', 'Johanssonn', 37, 'female', 3),
('Johnny', 'Depp', 52, 'male', 3),
('Megan', 'Fox', 35, 'female', 1),
('Sylvester', 'Stallone', 72, 'male', 6),
('Keanu', 'Reeves', 51, 'male', 8),
('Mila', 'Kunis', 32, 'female', 9),
('Al', 'Pacino', 78, 'male', 9),
('Morgan', 'Freeman', 68, 'male', 5),
('Emma', 'Watson', 28, 'female', 8),
('Brad', 'Pitt', 55, 'male', 7),
('Matt', 'Damon', 42, 'male', 7),
('Don', 'Cheadle', 53, 'male', 3);

INSERT INTO customers (first_name, last_name, phone, email) VALUES
('Ryan', 'Kavanaugh', '+380501232254', 'rk@gmail.com'),
('Steven', 'Spielberg', '+380674557665', 'steven@gmail.com'),
('Peter', 'Jackson', '+3806855469887', 'petya@gmail.com'),
('Robert', 'Zemeckis', '+380441112233', 'zema@gmail.com'),
('Ron', 'Howard', '+380667962445', 'ron@gmail.com'),
('Chris', 'Columbus', '+380677854658', 'columb@gmail.com');

INSERT INTO projects (name, description, term, customer_id) VALUES
('Back to the future 1', 'Professor in Delorian going to the past in 1954',  '1989-11-04', 4),
('The Grinch', 'Film withJim Carrey',  '1995-04-07', 5),
('Back to the future 2', 'Professor in Delorian going to the future in 2015',  '1991-04-01', 4),
('Harry Potter', 'Magic boy from England',  '2001-08-05', 6),
('Moneyball', '',  '2010-09-05', 1),
('Jurassic Park', 'Dinosaurs come back',  '2010-10-21', 2),
('American Sniper', 'American soldier in Iraq', '2018-10-15',2),
('Lord of the rings', 'Frodo in trap', '2013-03-08',3);

INSERT INTO developers_skills (developer_id, skills_id) VALUES
(1, '01_jun'), (1, '05_mid'), (1, '03_jun'),
(2, '03_jun'),
(3, '04_mid'), (3, '03_mid'),
(4, '01_jun'), (4, '05_mid'), (4, '03_jun'),
(5, '01_sen'),
(6, '02_jun'), (6, '04_jun'), (6, '05_mid'),
(7, '01_jun'), (7, '05_mid'), (7, '03_jun'),
(8, '01_jun'), (8, '03_jun'), (8, '03_sen'),
(9, '01_jun'),
(10, '01_jun'),
(11, '02_mid'),
(12, '03_jun'),
(13, '04_sen'), (13, '03_mid'),
(14, '02_sen'),
(15, '03_jun'),
(16, '03_mid'), (16, '02_sen'),
(17, '04_mid'), 
(18, '01_jun'), (18, '02_mid'), (18, '03_jun'),
(19, '05_jun'), (19, '04_mid');

INSERT INTO usage (project_id, developer_id) VALUES
(1, 8), (1, 9), (1, 11), (1, 15), (1, 19),
(2, 19), (2, 10), (2, 7), (2, 1), 
(3, 7), (3, 5), (3, 4), (3, 6),
(4, 2), (4, 5), (4, 6), (4, 7), (4, 8), (4, 11), (4, 13),
(5, 1), (5, 9), (5, 17),
(6, 14),
(7, 6), (7, 7), (7, 8), (7, 19), (7, 9), (7, 10), (7, 15),
(8, 10), (8, 19);

