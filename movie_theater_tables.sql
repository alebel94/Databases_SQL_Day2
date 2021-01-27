CREATE TABLE customers (
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	age_range INTEGER,
	billing_info VARCHAR(150)
);

CREATE TABLE theater (
	theater_id SERIAL PRIMARY KEY,
	screens INTEGER,
	ticket_booths INTEGER,
	address VARCHAR(150),
	total_income NUMERIC(10,2)
);

CREATE TABLE movie (
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(150),
	rating VARCHAR(20),
	tot_movie_income INTEGER,
	theater_id INTEGER NOT NULL,
	FOREIGN KEY(theater_id) REFERENCES theater(theater_id)
);

CREATE TABLE concessions (
	concession_id SERIAL PRIMARY KEY,
	monthly_icome NUMERIC(10,2),
	daily_employees INTEGER,
	theater_id INTEGER NOT NULL,
	FOREIGN KEY(theater_id) REFERENCES theater(theater_id)
);

CREATE TABLE concession_product (
	item_id SERIAL PRIMARY KEY,
	item_name VARCHAR(150),
	price NUMERIC(10,2),
	monthly_stock INTEGER,
	concession_id INTEGER NOT NULL,
	FOREIGN KEY(concession_id) REFERENCES concessions(concession_id)
);

CREATE TABLE tickets (
	ticket_id SERIAL PRIMARY KEY,
	screen_number INTEGER,
	seat_number INTEGER,
	customer_id INTEGER NOT NULL,
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
	FOREIGN KEY(movie_id) REFERENCES movie(movie_id)
);
