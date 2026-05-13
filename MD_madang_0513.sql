select theater_name, location from theater;
select theater_name from theater where location = '서울';
select theater_id, screen_id, movie_title from screen where price >= 10000;
select count(movie_title) from screen;

select * from booking where show_date = '2024-01-01';
select count(address) from customer;
select theater_id, screen_id from screen where capacity =(select max(capacity) from screen) ;
select count(*) from booking where customer_id 
select theater_id, avg(price) from screen group by theater_id;
select name, address from customer where name like '김%';

select name, show_date from customer c join booking b on c.customer_id = b.customer_id;
select t.theater_name, s.movie_title, r.show_date from theater t join screen s on t.theater_id = s.theater_id join booking r on s.screen_id = r.screen_id;
select name, show_date from customer c join booking b on c.customer_id = b.customer_id
select t.theater_name, s.movie_title, c.name, b.seat_id from theater t join screen s on t.theater_id = s.theater_id join booking b on s.screen_id = b.screen_id join customer c on b.customer_id = c.customer_id
select count(screen_id) from screen s join booking b on s.theater_id = b.theater_id 