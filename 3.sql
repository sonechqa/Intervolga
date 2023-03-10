-- Нарисовать ER-диаграмму БД для записи результатов соревнований бегунов марафона.
-- В БД должны храниться Спортсмены, Соревнования, Результаты (спортсмена по соревнованию), Список призеров (до 3-х на соревновании)
-- См. файл "ER-диаграмма.jpg"

-- Напишите SQL-запрос для создания таблицы спортсменов (подберите типы данных):
-- ФИО
-- e-mail
-- телефон (российские номера мобильных)
-- дата рождения
-- возраст
-- дата и время создания записи
-- номер паспорта
-- среднее место на соревнованиях
-- биография
-- видеопрезентация
-- Выберите из БД топ-5 ФИО спортсменов, больше остальных посетивших соревнований (одним SQL-запросом и без вложенных SELECT’ов

-- SQL-запрос для создания таблицы спортсменов
CREATE TABLE Sportsmen (
ID int(11) unsigned auto_increment,
Full_name varchar(256),
E-mail varchar(256),
Phone_number int(12),
Birth_date date,
Age int(11),
Date_time_record_created datetime,
Passport_number int(11),
Average_place_in_competitions int(11),
Biography varchar(256),
Video_presentation varchar(256)
);

-- SQL-запрос для заполнения таблицы спортсменов
INSERT INTO Sportsmen (Full_name, Phone_number, Birth_date, Age)
    VALUES ('Абрамов Виктор Сергеевич', '+79275142819', '1997-02-01', '24'),
            ('Балыков Андрей Николаевич', '+79376000325', '1998-03-03', '23'),
            ('Верин Сергей Александрович', '+79047350250', '1997-04-05', '24'),
            ('Гудков Павел Андреевич', '+79091240871', '1997-05-07', '24'),
            ('Дмитриев Максим Григорьевич', '+79005050130', '1999-06-09', '22'),
            ('Жилов Степан Петрович', '+79141497631', '2000-07-11', '21'),
            ('Зайцев Дмитрий Анатольевич', '+79154281604', '1998-08-13', '23'),
            ('Кузьмин Лев Романович', '+79270421517', '1995-09-15', '26'),
            ('Лебедь Игорь Валерьевич', '+79371230617', '1996-10-17', '25'),
            ('Макаров Тимофей Евгеньевич', '+79048172513', '2000-11-19', '21')

-- SQL-запрос для заполнения таблицы соревнований
INSERT INTO Competitions (Name, Organizer)
    VALUES ('First_competition', 'Company_A'),
            ('Second_competition', 'Company_B'),
            ('Third_competition', 'Company_C'),
            ('Fourth_competition', 'Company_D'),
            ('Fifth_competition', 'Company_E')

-- SQL-запрос для заполнения промежуточной таблицы Sportsmen_competitions
INSERT INTO Sportsmen_competitions (Sportsman_ID, Competition_ID)
    VALUES ('1', '1'),
            ('6', '1'),
            ('4', '1'),
            ('2', '2'),
            ('7', '2'),
            ('3', '2'),
            ('3', '3'),
            ('8', '3'),
            ('1', '3'),
            ('4', '4'),
            ('9', '4'),
            ('2', '4'),
            ('5', '5'),
            ('10', '5'),
            ('7', '5')

-- SQL-запрос для выбора 5 спортсменов, посетивших соревнований больше остальных
SELECT Sportsman_ID, COUNT(*) as cnt FROM Sportsmen_competitions GROUP BY Sportsman_ID ORDER BY cnt DESC LIMIT 5;

-- Здесь выдаются ID, а не ФИО (хотя в phpMyAdmin видны и имена)
-- Я догадываюсь, что для вывода ФИО нужно использовать INNER JOIN, но не особо умею использовать этот оператор
-- Поэтому решила оставить так, чтобы было видно, на каком уровне я сейчас нахожусь