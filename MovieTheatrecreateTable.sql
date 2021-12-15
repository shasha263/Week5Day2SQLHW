--Customer Table Creation

create table customer(
  customer_ID SERIAL primary key,
  Phone_number VARCHAR(15),
  email_address VARCHAR(100) 
);
select * from customer;

--show_time Table Creation

create table show_time(
  showtime_ID SERIAL primary key,
  date DATE default CURRENT_DATE,
  time TIME
);
select * from show_time;

--Movie Table Creation

create table Movie(
  movie_ID SERIAL primary key,
  customer_ID INTEGER not null,
  FOREIGN KEY (customer_ID) REFERENCES customer(customer_ID),
  showtime_ID INTEGER not null,
  FOREIGN KEY (showtime_ID) REFERENCES show_time(showtime_ID) 
);

select * from Movie;

--Concession Table Creation

create table Concession(
  product_key SERIAL4 primary key,
  product_name VARCHAR(100),
  total_cost NUMERIC(10,2),
  date DATE
);
select * from Concession;

--Ticket Table Creation

create table Ticket(
  sequence_number SERIAL primary key,
  customer_ID INTEGER not null,
  FOREIGN KEY (customer_ID) REFERENCES customer(customer_ID),
  showtime_ID INTEGER not null,
  FOREIGN KEY (showtime_ID) REFERENCES show_time(showtime_ID), 
  movie_ID INTEGER not null,
  FOREIGN KEY (movie_ID) REFERENCES Movie(movie_ID),
  product_key INTEGER not null,
  FOREIGN KEY (product_key) REFERENCES Concession(product_key),
  show_date DATE
 );

select * from Ticket;
