CREATE TABLE chair (id SERIAL PRIMARY KEY,  chair_name varchar NOT NULL UNIQUE, faculty varchar 
NOT NULL);
CREATE TABLE student_group (id SERIAL PRIMARY KEY, numb varchar NOT NULL UNIQUE, chair varchar 
REFERENCES chair(chair_name));
CREATE TABLE student (id SERIAL PRIMARY KEY, full_name varchar NOT NULL, passport varchar(10) NOT 
NULL, group_numb varchar REFERENCES student_group(numb));

INSERT INTO chair (chair_name, faculty) VALUES ('МКиИТ', 'ИТ');
INSERT INTO chair (chair_name, faculty) VALUES ('СиСС', 'СиСС');

INSERT INTO student_group (numb, chair) VALUES ('БВТ2204', 'МКиИТ');
INSERT INTO student_group (numb, chair) VALUES ('БВТ2201', 'МКиИТ');
INSERT INTO student_group (numb, chair) VALUES ('БИН2201', 'СиСС');
INSERT INTO student_group (numb, chair) VALUES ('БИН2202', 'СиСС');

INSERT INTO student (full_name, passport, group_numb) VALUES ('Иванов Иван Иванович', 
'4266169294', 'БВТ2204');
INSERT INTO student (full_name, passport, group_numb) VALUES ('Карпова Лилия Руслановна', 
'4529364422', 'БВТ2204');
INSERT INTO student (full_name, passport, group_numb) VALUES ('Крылова Маргарита 
Александровна', '4043776183', 'БВТ2204');
INSERT INTO student (full_name, passport, group_numb) VALUES ('Куликов Арсений Фёдорович', 
'4085766932', 'БВТ2204');
INSERT INTO student (full_name, passport, group_numb) VALUES ('Сергеев Владимир Артёмович', 
'4043776256', 'БВТ2204');
INSERT INTO student (full_name, passport, group_numb) VALUES ('Авдеева Ульяна Дмитриевна', 
'4960657245', 'БВТ2201');
INSERT INTO student (full_name, passport, group_numb) VALUES ('Васильева Вероника 
Александровна', '4199249029', 'БВТ2201');
INSERT INTO student (full_name, passport, group_numb) VALUES ('Козловский Тимофей Иванович', 
'4155805856', 'БВТ2201');
INSERT INTO student (full_name, passport, group_numb) VALUES ('Котов Георгий Викторович', 
'4025888842', 'БВТ2201');
INSERT INTO student (full_name, passport, group_numb) VALUES ('Павлов Данила Алексеевич', 
'4070636669', 'БВТ2201');
INSERT INTO student (full_name, passport, group_numb) VALUES ('Филатова Арина Артемьевна', 
'4516957432', 'БИН2201');
INSERT INTO student (full_name, passport, group_numb) VALUES ('Наумов Андрей Тимофеевич', 
'4516957109', 'БИН2201');
INSERT INTO student (full_name, passport, group_numb) VALUES ('Емельянов Максим Григорьевич', 
'4442888407', 'БИН2201');
INSERT INTO student (full_name, passport, group_numb) VALUES ('Белякова Милана Николаевна', 
'4516945785', 'БИН2201');
INSERT INTO student (full_name, passport, group_numb) VALUES ('Воробьев Александр Даниилович', 
'4952993897', 'БИН2201');
INSERT INTO student (full_name, passport, group_numb) VALUES ('Иванов Артём Максимович', 
'4185313485', 'БИН2202');
INSERT INTO student (full_name, passport, group_numb) VALUES ('Белоусов Кирилл Георгиевич', 
'4457088880', 'БИН2202');
INSERT INTO student (full_name, passport, group_numb) VALUES ('Чижов Вячеслав Максимович', 
'4457791234', 'БИН2202');
INSERT INTO student (full_name, passport, group_numb) VALUES ('Данилова Василиса Семёновна', 
'4457791619', 'БИН2202');
INSERT INTO student (full_name, passport, group_numb) VALUES ('Марков Иван Маркович', 
'4516957765', 'БИН2202');
