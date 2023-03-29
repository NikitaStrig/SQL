CREATE TABLE city (
city_id INT PRIMARY KEY NOT NULL,
city_name VARCHAR(50));

INSERT INTO city (city_id, city_name) VALUES (1,'SBP');
INSERT INTO city (city_id, city_name) VALUES (2,'MSK');
INSERT INTO city (city_id, city_name) VALUES (3,'ECT');
INSERT INTO city (city_id, city_name) VALUES (4,'ZTT');
INSERT INTO city (city_id, city_name) VALUES (5,'BBB');
INSERT INTO city (city_id, city_name) VALUES (6,'DDD');

------------------
ALTER TABLE employee
    ADD city_id INT;

ALTER TABLE employee
    ADD FOREIGN KEY (city_id) REFERENCES city (city_id);

update employee set city_id = 1
where id = 1;
update employee set city_id = 2
where id = 2;
update employee set city_id = 2
where id = 3;
----------------
select ee.first_name, ee.last_name, ci.city_name
from employee ee inner join city ci
                            on ee.city_id = ci.city_id;

select ci.city_name, ee.first_name, ee.last_name
from city ci left join employee ee
                       on ee.city_id = ci.city_id;

select ci.city_name, ee.first_name, ee.last_name
from city ci right join employee ee
                        on ee.city_id = ci.city_id;

select ee.first_name, ee.last_name, ci.city_name
from employee ee full join city ci
                           on ee.city_id = ci.city_id;

SELECT ee.first_name, ee.last_name, ci.city_name FROM employee ee
                                                          CROSS JOIN city ci;

select ci.city_name
from city ci left join employee ee
                       on ee.city_id = ci.city_id
where ee.first_name is null and ee.last_name is null;




