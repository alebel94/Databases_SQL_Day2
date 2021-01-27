INSERT INTO customers (
	customer_id,
	first_name,
	last_name,
	age_range,
	billing_info 
) VALUES (
		1,
		'Alejandro',
		'Beltran',
		18,
		'4242-4242-4242-4242 623 05/24'
);

INSERT INTO theater (
	theater_id,
	screens,
	ticket_booths,
	address,
	total_income
) VALUES (
		1,
		18,
		3,
		'154 Main Dr Silver Spring, MD 20910',
		45798
);

INSERT INTO movie (
	movie_id,
	movie_name,
	rating,
	tot_movie_income,
	theater_id
) VALUES (
		1,
		'Godzilla vs Kong',
		'PG13',
		6789,
		1
);

INSERT INTO concessions (
	concession_id,
	monthly_icome,
	daily_employees,
	theater_id
) VALUES (
		1,
		2550.67,
		9,
		1
);

INSERT INTO concession_product (
	item_id,
	item_name,
	price,
	monthly_stock,
	concession_id
) VALUES (
		1,
		'kitkat king size',
		4.99,
		67,
		1
);

INSERT INTO  tickets (
	ticket_id,
	screen_number,
	seat_number,
	customer_id,
	movie_id
) VALUES (
		1,
		3,
		48,
		1,
		1
);



