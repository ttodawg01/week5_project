CREATE TABLE sales_person(
	reciept serial PRIMARY KEY,
	first_name varchar(50) NOT NULL,
	sales_id varchar(50) NOT NULL
);

CREATE TABLE customer(
	customer_id integer NOT NULL ,
	cars_bought serial PRIMARY KEY,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL 
);

CREATE TABLE mechanic(
	repair_id serial PRIMARY KEY
);

CREATE TABLE car(
	cars_sold serial PRIMARY KEY,
	make varchar(50) NOT NULL,
	model varchar(50) NOT NULL,
	year_ varchar(50) NOT NULL,
	serial_number integer,
	service varchar(100)
);

CREATE TABLE service_ticket(
	tickets_wrote serial PRIMARY KEY,
	sold_cars integer,
	FOREIGN key(sold_cars) REFERENCES car(cars_sold)
);

ALTER TABLE sales_person 
ADD COLUMN sold_cars integer NOT NULL;

ALTER TABLE mechanic 
ADD COLUMN num_mechanic varchar(50) NOT NULL;

ALTER TABLE car 
ADD COLUMN car_id integer ;


ALTER TABLE sales_person 
ADD FOREIGN KEY (sold_cars) REFERENCES car(cars_sold)

ALTER TABLE mechanic 
ADD FOREIGN KEY(num_mechanic) REFERENCES invoice(serial_number);

CREATE TABLE invoice(
	serial_number serial PRIMARY key
);

ALTER TABLE sales_person 
ADD FOREIGN key(sold_cars) REFERENCES car(car_id);


