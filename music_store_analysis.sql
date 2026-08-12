1.who is the senior employee bsed on job title
select *  from employee
order by levels desc
limit 1

2.which country hs most invoice
select count (*)as c, billing_country from invoice
group by billing_country
order by c  desc

3.wht is top 3 values of invoice
select * from invoice
order by total desc
limit 3

4.write qurey tht returns one city with highest sum of invoice totls return both city nme nd invoice totls
select sum (total) as invoice_totl , billing_city
from invoice 
group by billing_city
order by invoice_totl desc
limit 1


5.write query for customer who has spent the most money
need to join 2 tbles
You can select columns from different tables in the same SELECT because the tables have already been joined.
select customer.customer_id , customer.first_name , customer.last_name ,sum (invoice.total) as total
from customer 
join invoice on customer.customer_id = invoice.customer_id
group by customer.customer_id
order by total desc
limit 1

6.write a query that returns email first name last name and genre of all rock listeners ordered alpha
j
select distinct first_name,last_name,email 
from customer
join  invoice on customer.customer_id = invoice.customer_id
join  invoice_line on invoice.invoice_id = invoice_line.invoice_id
where track_id in (
select track_id from track
join genre on track.genre_id=genre.genre_id
where genre.name like 'Rock'
)
order by email;


select  distinct customer.customer_id , customer.first_name, customer.last_name , email
from customer
join invoice  
on customer.customer_id =  invoice.customer_id
join  invoice_line 
on invoice.invoice_id = invoice_line.invoice_id
join track
on  invoice_line.track_id = track.track_id
join genre
on  track.genre_id = genre.genre_id
where genre.name = 'Rock'
ORDER BY email


7.invite artist who have written most rock music in the data set.
write a query that returns artist name and total track count of top 10 rock bands

select artist.artist_id, artist.name , count (artist.artist_id) as number_of_songs
from track
join album on album.album_id=track.album_id
join artist on artist.artist_id = album.artist_id 
join genre on genre.genre_id=track.genre_id
where genre.name like 'Rock'
group by artist.artist_id 
order by number_of_songs desc


select  artist.artist_id , artist.name , count ( artist.artist_id ) as number_of_songs
from artist 
join album on artist.artist_id = album.artist_id
join track on album.album_id = track.album_id
join genre on track.genre_id=genre.genre_id
where genre.name = 'Rock'
group by artist.artist_id , artist.name
order by number_of_songs desc
limit 10

8.return all track names that have a song length longer than the average song length . return the  name 
and millisecond for each track order by song length with longest song listed first


select name , milliseconds
from track 
where milliseconds >
(select avg (milliseconds)from  track)

9.select customer.customer_id, customer.first_name as customer_name,
artist.name as artist_name ,
sum (invoice_line.unit_price * invoice_line.quantity) AS total_spent
from customer
JOIN  invoice  ON customer.customer_id = invoice.customer_id
JOIN invoice_line on invoice.invoice_id= invoice_line.invoice_id
JOIN track on track.track_id = invoice_line.track_id
JOIN album on album.album_id =track.album_id
JOIN artist on artist.artist_id = album.artist_id 
GROUP BY 
    customer.customer_id,
    customer.first_name,artist.name
	ORDER BY total_spent DESC;



10.-- Q2: We want to find out the most popular music Genre for each country.
-- (We determine the most popular genre as the genre with the highest amount of purchases)

select invoice.billing_country as country ,
genre.name as genre,
count (invoice_line.invoice_id) as purchase_count,
ROW_NUMBER() OVER (
        PARTITION BY invoice.billing_country
        ORDER BY COUNT(invoice_line.invoice_line_id) DESC
    ) AS rank

from invoice
join  invoice_line on invoice.invoice_id = invoice_line.invoice_id 
join track on track.track_id   = invoice_line.track_id 
join genre on genre.genre_id = track.genre_id
group by genre , country

