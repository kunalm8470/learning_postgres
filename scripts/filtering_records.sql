select name, area from cities
where area > 4000;

select name, area from cities 
where area != 8223;

select name, area from cities 
where area between 2000 and 4000;

select name, area from cities
where not area in (3043, 8223) and name = 'Delhi';

select name, price from phones
where units_sold > 5000;

select name, manufacturer from phones
where manufacturer in ('Apple', 'Samsung');

-- Computed expression in where clause
select name, population / area as population_density
from cities
where population / area > 6000;

select name, price * units_sold as total_revenue
from phones
where price * units_sold > 1000000;

update cities
set population = 39505000
where name = 'Tokyo';

delete from cities
where name = 'Tokyo';

update phones
set units_sold = 8543
where name = 'N8';
