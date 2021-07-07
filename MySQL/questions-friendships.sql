use amigos;

SELECT users.first_name, users.last_name, user2.first_name as friend_first_name, user2.last_name as friend_last_name
FROM users
LEFT JOIN friendships fs ON fs.user_id = users.id
LEFT JOIN users as user2 ON user2.id= fs.friend_id;

-- 1 Devuelva a todos los usuarios que son amigos de Kermit, asegúrese de que sus nombres se muestren en los resultados.
select*from friendships;

select users.first_name, users.last_name, amigos.first_name as nombre_amigo,amigos.last_name as apellido_amigo
from users
LEFT JOIN friendships fs ON fs.user_id = users.id
LEFT JOIN users as amigos ON amigos.id= fs.friend_id
where friend_id=4 or fs.user_id=4;

-- 2 Devuelve el recuento de todas las amistades.

select users.first_name, users.last_name, amigos.first_name as nombre_amigo,amigos.last_name as apellido_amigo
from users
LEFT JOIN friendships fs ON fs.user_id = users.id
LEFT JOIN users as amigos ON amigos.id= fs.friend_id
where friend_id >0;

-- 3 Descubre quién tiene más amigos y devuelve el recuento de sus amigos.
select*from friendships;

select users.first_name, count(fs.user_id) suma
from users
LEFT JOIN friendships fs ON fs.user_id = users.id
LEFT JOIN users as amigos ON amigos.id= fs.friend_id
group by users.first_name
order by suma desc;

-- 4 Crea un nuevo usuario y hazlos amigos de Eli Byers 2, Kermit The Frog 4 y Marky Mark 5.
select*from users; 
insert into users (id,first_name,last_name)
values (6,'Raul','Barria'); 

select*from friendships;
insert into friendships (user_id,friend_id)
values (6,2),(6,4),(6,5);

-- 5 Devuelve a los amigos de Eli en orden alfabético.

select users.first_name,  amigos.first_name as nombre_amigo
from users
LEFT JOIN friendships fs ON fs.user_id = users.id
LEFT JOIN users as amigos ON amigos.id= fs.friend_id
where fs.user_id=2 
order by amigos.first_name;

-- 6 Eliminar a Marky Mark de los amigos de Eli.
select*from friendships;
delete from friendships where user_id=2 and friend_id=5;

-- 7 Devuelve todas las amistades, mostrando solo el nombre y apellido de ambos amigos

select users.first_name, users.last_name, amigos.first_name as nombre_amigo,amigos.last_name as apellido_amigo
from users
LEFT JOIN friendships fs ON fs.user_id = users.id
LEFT JOIN users as amigos ON amigos.id= fs.friend_id
where friend_id >0;
