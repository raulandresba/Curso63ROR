use world;

select * from cities;
select * from countries;
select * from languages;

-- 1 ¿Qué consulta harías para obtener todos los países que hablan esloveno? 
-- Tu consulta debe devolver el nombre del país, el idioma y el porcentaje de idioma. 
-- Tu consulta debe organizar el resultado por porcentaje de idioma en orden descendente

select language, percentage, country_id from languages where language LIKE '%sloven%' order by percentage desc;

select name from countries where id in (200,107,96,16);

select  cn.name, lgg.language, lgg.percentage from languages lgg
INNER JOIN countries cn ON lgg.country_id = cn.id
where lgg.language LIKE '%sloven%' 
order by lgg.percentage desc
;

select  name,language, percentage from languages
INNER JOIN countries ON languages.country_id = countries.id
where countries.id in (200,107,96,16)
order by percentage desc
;select * from cities;
select * from countries;
select * from languages; 

select lg.language, lg.percentage from languages lg
where lg.language LIKE '%lovene%'
ORDER BY lg.percentage desc;

SELECT cou.name from countries cou
where cou.id in (16,96, 107,200);

-- 2. ¿Qué consulta ejecutarías para mostrar el número total de ciudades para cada país?
-- Su consulta debe devolver el nombre del país y el número total de ciudades.
-- Tu consulta debe organizar el resultado por el número de ciudades en orden descendente. (3)

select * from cities ci, countries co
where ci.country_id = co.id;

select co.name, count(co.name) total 
from cities ci
inner join countries co on ci.country_id =co.id
group by co.name
order by total desc;

-- 3. ¿Qué consulta harías para obtener todas las ciudades de México con una población de más de 500,000? 
-- Tu consulta debe organizar el resultado por población en orden descendente. (1)

select*from cities ci
where ci.country_id =136 and ci.population>500000
order by ci.population desc;

-- 4. ¿Qué consulta ejecutarías para obtener todos los idiomas en cada país con un porcentaje superior al 89%? 
-- Tu consulta debe organizar el resultado por porcentaje en orden descendente. (1)

select co.name, la.language, la.percentage from languages la
inner join countries co on co.id=la.country_id
where la.percentage >89
order by la.percentage desc;

-- 5. ¿Qué consulta haría para obtener todos los países con un área de superficie inferior a 501 y una población superior a 100,000? (2)

select co.name, co.surface_area, co.population from countries co
where co.surface_area <501 and co.population >100000;

-- 6. ¿Qué consulta harías para obtener países con solo Monarquía Constitucional con un capital superior a 200 y una esperanza de vida superior a 75 años? (1)

select name, government_form, capital,life_expectancy from countries 
where government_form ="Constitutional Monarchy"
and capital >200
and life_expectancy >75;

-- 7. ¿Qué consulta harías para obtener todas las ciudades de Argentina dentro del distrito de Buenos Aires y tener una población superior a 500,000? 
-- La consulta debe devolver el nombre del país, el nombre de la ciudad, el distrito y la población. (2)

select co.name, ci.name, ci.district, ci.population from cities ci
inner join countries co on co.id = ci.country_id
where ci.district ="Buenos Aires"
and ci.population>500000;

-- 8. ¿Qué consulta harías para resumir el número de países en cada región? 
-- La consulta debe mostrar el nombre de la región y el número de países. 
-- Además, la consulta debe organizar el resultado por el número de países en orden descendente. (2)

select region, count(region) suma from countries
group by region
order by suma desc;