-- Insert for customer table?
INSERT INTO customer(
	customer_id,
	Phone_number,
	email_address
	
) VALUES(
	0,'000-000-0000','mini@gmail.com'	
	);	
INSERT INTO customer (Phone_number,	email_address)
VALUES ('000-000-1111', 'Tom@gmail.com');
INSERT INTO customer (Phone_number,	email_address)
VALUES ('000-111-1111', 'emma@gmail.com');

select * from customer  

INSERT INTO show_time(showtime_ID, date, time )
VALUES('10',NOW(),CURRENT_TIME)

INSERT INTO show_time(date, time )
VALUES(NOW(),CURRENT_TIME)

INSERT INTO show_time(date, time )
VALUES(NOW(),CURRENT_TIME)

select * from show_time;

-- couldn't able to enter values in movie
INSERT INTO Movie(  movie_ID, customer_ID, showtime_ID, movie_name)
VALUES('1','1','1','Frozen')

--SQL Error [23503]: ERROR: insert or update on table "movie" violates foreign key constraint "movie_showtime_id_fkey"
 --Detail: Key (showtime_id)=(1) is not present in table "showtime".

select * from Movie;

INSERT INTO Concession(product_key,product_name,date,price)
VALUES('1','Popcorn',now(),'2.99')

INSERT INTO Concession(product_name,date,price)
VALUES('Drinks',now(),'1.99')

INSERT INTO Concession(product_name,date,price)
VALUES('Ice-Cream',now(),'3.99')

select * from Concession;
INSERT INTO Ticket(
 sequence_number,
  customer_ID,
  showtime_ID,
  movie_ID,
  product_key,
  show_date
) VALUES('0','1','1','1','1',now())

INSERT INTO Ticket(
  customer_ID,
  showtime_ID,
  movie_ID,
  product_key,
  show_date
) VALUES('2','2','2','2',now())

select * from Ticket;






