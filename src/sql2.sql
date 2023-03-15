INSERT INTO employee (first_name, last_name, gender, age) VALUES ('Sergey', 'Ivanov', 'Male', 50);
INSERT INTO employee (first_name, last_name, gender, age) VALUES ('Ivan', 'Ivanov', 'Male', 45);


SELECT first_name AS "Имя", last_name AS "Фамилия" FROM employee;

select * from employee
where age < 30 or age > 50;

select * from employee
where age > 30 and age < 50;

select * from employee
where age BETWEEN 30 AND 50;

SELECT first_name AS "Имя", last_name AS "Фамилия"  FROM employee
ORDER BY last_name DESC;

select first_name from employee
where  LENGTH(first_name) > 4;

id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
  1 | Ivan       | Ivanov    | Male   |  20
  2 | Sergey     | Ivanov    | Male   |  30
  3 | Mary       | Ivanovna  | Female |  30
  4 | Sergey     | Ivanov    | Male   |  50
  5 | Ivan       | Ivanov    | Male   |  45

select first_name, sum(age) as "Суммарный возвраст" from employee
GROUP BY first_name;

select first_name, min(age) from employee
GROUP BY first_name;

select first_name, max(age) as "Возраст" from employee
GROUP BY first_name
HAVING count(first_name) >1;
