use sakila;
show tables;
select * from actor;
select * from film;
select * from film_actor; 

select first_name, last_name from actor;
select * from actor where first_name='John';
select * from actor where last_name='neeson';
select * from actor where actor_id % 10 =0 ;
select film_id,description from film where film_id=100;
select title,rating from film where rating='R';
select title,rating from film where rating!='R';
select title, length from film order by length limit 10;
select title, length from film where length = (
select max(length)
from film
);
select title, special_features from film where special_features like '%deleted scenes%';
select last_name from actor group by last_name having count(last_name)=1;
select last_name from actor group by last_name having count(last_name)>1 order by count(last_name) desc;

select *
from actor actor
join film_actor film_actor 
on film_actor.actor_id=actor.actor_id
group by actor.actor_id
order by count(actor.actor_id) desc limit 1;

select avg(length) from film;

select * from film_category;
select * from category;
select * from film;

select category.name,avg(film.length)
from category category
join film_category film_category
on film_category.category_id=category.category_id
join film film
on film.film_id=film_category.film_id
group by category.name;

select * from film where description like '%robot%';
select count(*) from film where release_year =2010;

select film.title, category.name
from category category
join film_category film_category
on film_category.category_id=category.category_id
join film film
on film.film_id=film_category.film_id
where name ='horror';

select * from film;
select * from film_actor;
select * from film_category;
select * from category;
select * from actor;

select * from staff where staff_id=2;

select *
from film_actor
join actor
on actor.actor_id=film_actor.actor_id
join film
on film_actor.film_id=film.film_id
where first_name='Fred' and last_name='Costner';

select distinct country from country;

select name from language order by name desc;

select * from actor where last_name like '%son';

select category, count(category) from film_list group by category limit 1;
