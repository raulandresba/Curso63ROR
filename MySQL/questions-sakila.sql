use sakila;

-- 1. ¿Qué consulta ejecutarías para obtener todos los clientes dentro de city_id = 312? 
-- Su consulta debe devolver el nombre, apellido, correo electrónico y dirección del cliente.

select*from customer;
select*from address;
select*from city;

select ad.address_id, cu.first_name,cu.last_name,cu.email, ad.address from customer cu
inner join address ad on cu.address_id = ad.address_id
where ad.city_id=312;

-- 2. ¿Qué consulta harías para obtener todas las películas de comedia? 
-- Su consulta debe devolver el título de la película, la descripción, el año de estreno, la calificación, las características especiales y el género (categoría).

select*from film;
select*from category;
select*from film_category;

select title, description, release_year, rating, special_features, category.name 
from film
inner join film_category on film_category.film_id = film.film_id
inner join category on category.category_id = film_category.category_id 
where category.category_id=5;

-- 3. ¿Qué consulta harías para obtener todas las películas unidas por actor_id = 5? 
-- Su consulta debe devolver la identificación del actor, el nombre del actor, el título de la película, la descripción y el año de lanzamiento.


select*from film_actor;
select*from actor;
select*from film;

select ac.actor_id, first_name,last_name, fi.title,fi.description,fi.release_year
from actor ac
inner join film_actor fa on fa.actor_id=ac.actor_id
inner join film fi on fi.film_id = fa.film_id
where ac.actor_id=5;

-- 4. ¿Qué consulta ejecutaría para obtener todos los clientes en store_id = 1 y dentro de estas ciudades (1, 42, 312 y 459)? 
-- Su consulta debe devolver el nombre, apellido, correo electrónico y dirección del cliente.


select cu.first_name, cu.last_name, cu.email, ad.address
from customer cu
inner join address ad on ad.address_id = cu.address_id
inner join city ci on ci.city_id= ad.city_id
where cu.store_id=1
and ad.city_id in (1,42,312,459);

-- 5. ¿Qué consulta realizarías para obtener todas las películas con una "calificación = G" y "característica especial = detrás de escena", unidas por actor_id = 15? 
-- Su consulta debe devolver el título de la película, la descripción, el año de lanzamiento, la calificación y la función especial. 
-- Sugerencia: puede usar la función LIKE para obtener la parte 'detrás de escena'.

select fi.title, fi.description, fi.release_year, fi.rating, fi.special_features from film fi
inner join film_actor fa on fa.film_id=fi.film_id
inner join actor ac on ac.actor_id = fa.actor_id
where fi.rating="G"
and fi.special_features like "%Beh%"
and ac.actor_id=15;

-- 6. ¿Qué consulta harías para obtener todos los actores que se unieron en el film_id = 369? 
-- Su consulta debe devolver film_id, title, actor_id y actor_name.

select*from film;
select*from actor;

select fi.film_id, fi.title, ac.actor_id, ac.first_name, ac.last_name
from film fi
inner join film_actor fa on fa.film_id = fi.film_id
inner join actor ac on ac.actor_id = fa.actor_id
where fa.film_id=369;

-- 7. ¿Qué consulta harías para obtener todas las películas dramáticas con una tarifa de alquiler de 2.99? 
-- Su consulta debe devolver el título de la película, la descripción, el año de estreno, la calificación, las características especiales y el género (categoría).


select*from category;
select*from film;

select film.film_id,title, description, release_year, rating, special_features, category.name 
from film
inner join film_category on film_category.film_id = film.film_id
inner join category on category.category_id = film_category.category_id
where film.rental_rate=2.99 and category.category_id=7;

-- 8. ¿Qué consulta harías para obtener todas las películas de acción a las que se une SANDRA KILMER? 
-- Su consulta debe devolver el título de la película, la descripción, el año de estreno, la calificación, las características especiales, el género (categoría) y el nombre  y apellido del actor.

select*from film_actor;
select*from category;
select*from actor;

select ac.first_name, ac.last_name,film.film_id,title, description, release_year, rating, special_features, cat.name
from film
inner join film_category fc on fc.film_id = film.film_id
inner join category cat on cat.category_id = fc.category_id
inner join film_actor fa on fa.film_id = film.film_id
inner join actor ac on ac.actor_id = fa.actor_id
where fc.category_id =1 and fa.actor_id=23;

