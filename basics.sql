create table cities (
	name VARCHAR(50),
	country VARCHAR(50),
	population INTEGER,
	area INTEGER
);

insert into cities (name, country, population, area) values ('Tokyo', 'Japan', 38505000, 8223);

insert into cities (name, country, population, area) values 
('Delhi', 'India', 28125000, 2240),
('Shanghai', 'China', 22125000, 4015),
('Sao Paulo', 'Brazil', 20935000, 3043);


--Apply division operator
select name, population / area as "Population Density" 
from cities;

create table phones (
	name VARCHAR(50),
	manufacturer VARCHAR(50),
	price INTEGER,
	units_sold INTEGER
);

insert into phones (name, manufacturer, price, units_sold) values
('N1280', 'Nokia', 199, 1925),
('iPhone4', 'Apple', 399, 9436),
('Galaxy 5', 'Samsung', 299, 2359),
('S5620 Monte', 'Samsung', 250, 2385),
('N8', 'Nokia', 150, 7543);

insert into phones (name, manufacturer, price, units_sold) values
('Driod', 'Motorola', 150, 8395),
('Wave S8500', 'Samsung', 175, 9259);

SELECT name, price * units_sold AS revenue
FROM phones;

-- select name || ', ' || country as location from cities;
select CONCAT(UPPER(name), ', ', UPPER(country)) as location from cities;