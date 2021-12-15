ALTER TABLE movie
ADD column movie_name VARCHAR(100);

select * from Concession;


ALTER TABLE customer
DROP COLUMN movie_name;
select * from customer;

ALTER TABLE Concession
DROP COLUMN total_cost;
ALTER TABLE Concession
ADD column price NUMERIC(10,2);






