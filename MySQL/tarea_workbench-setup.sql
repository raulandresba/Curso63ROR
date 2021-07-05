use twitter;
select*from users;
insert into users (id,first_name,last_name,handle,birthday, created_at,updated_at)
values ('6','raul','barria','raulandres','1991-09-07','2021-07-05 00:00:01', '2021-07-05 00:00:01');
update users set handle='raulbarria' where id='6';
delete from users where id='6';