drop table customer;
create table city
(
id int,
city_name varchar(12),
lat float,
long_ float,
country_id int
);

insert into city values(1,'Berlin',52.520008,13.404954,1);
insert into city values(2,'Belgrade',44.787197,20.457273,2);
insert into city values(3,'Zagred',45.815399,15.966568,3);
insert into city values(4,'New York',40.730610,-73.935242,4);
insert into city values(5,'Los Angeles',34.052235,-118.243683,4);
insert into city values(6,'War Saw',52.237049,21.017532,5);

select * from city;

create table customer
(
id int,
customer_name varchar(25),
city_id int,
 customer_address varchar(25),
 next_call_date date,
 ts_inserted datetime
);

insert into customer values(1,'Jewelry Store',4,'Long Street 120','2020-01-21','2020-01-09 14:01:20');
insert into customer values(2,'Bakery',1,'Kurfurstendamm 25','2020-02-21','2020-01-09 17:52:15');
insert into customer values(3,'Cafe',1,'Tauentzienstrabe 44','2020-01-21','2020-01-10 08:02:49');
insert into customer values(4,'Restaurant',3,'Ulica Lipa 15','2020-01-21','2020-01-10 09:20:21');

select * from customer;

create table country
(
id int,
country_name varchar(25),
country_name_eng varchar(25),
country_code varchar(10)
);

insert into country values(1,'Deutschland','Germany','DEU');
insert into country values(2,'Srbja','Serbia','SRB');
insert into country values(3,'Hrvatska','Croatia','HRV');
insert into country values(4,'United States of America','United States of America','USA');
insert into country values(5,'Polska','Poland','POL');
insert into country values(6,'Esparia','Spain','ESP');
insert into country values(7,'Rossiya','Russia','RUS');

select * from country;

SELECT country.country_name_eng, city.city_name, customer.customer_name
FROM country
LEFT JOIN city ON city.country_id = country.id
LEFT JOIN customer ON customer.city_id = city.id;

SELECT country.country_name_eng, city.city_name, customer.customer_name
FROM country
INNER JOIN city ON city.country_id = country.id
LEFT JOIN customer ON customer.city_id = city.id;