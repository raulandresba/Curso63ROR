show databases;
use twitter;
-- los tweet que le gustan al user 1 y quienes crearon esos twits

select * from users where id = 1; -- quien es el user 1

SELECT * FROM faves;
SELECT * FROM faves where user_id=1; -- cuales son los id de los tweets favoritos

select * from tweets;
select * from tweets where id = 9 or id =10 or id= 11;  -- cuales son los tweets

select * from users where id = 3 or id= 4; -- quienes escribieron esos tweets

-- 	relaciones entre tablas 
SELECT * from faves fv, tweets tw, users us
where fv.user_id =us.id and fv.tweet_id = tw.id
order by fv.id;