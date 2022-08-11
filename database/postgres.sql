CREATE TABLE properties (
   zpid INT NOT NULL,
	propertyType VARCHAR,
	lotAreaValue FLOAT,
	address VARCHAR,
	city VARCHAR,
	zip VARCHAR,
	price INT,
	bedrooms INT,
	bathrooms INT,
	livingArea INT,
	lotAreaUnit VARCHAR,
	latitude FLOAT,
	longitude FLOAT
);
SELECT COUNT(*) FROM properties

SELECT * FROM properties

CREATE TABLE zillow (
	rowcount INT,
	propertyType VARCHAR,
	lotAreaValue FLOAT,
	address INT,
	price INT,
	bedrooms FLOAT,
	longitude FLOAT,
	latitude FLOAT,
	zpid FLOAT,
	bathrooms FLOAT,
	livingArea FLOAT,
	PRIMARY KEY (zpid),
	sb_id INT
);

SELECT COUNT (*) FROM zillow

SELECT * FROM zillow

CREATE TABLE starbucks (
	sb_id INT NOT NULL,
	store_name VARCHAR,
	street_address VARCHAR,
	city VARCHAR,
	postcode INT,
	longitude FLOAT,
	latitude FLOAT,
	PRIMARY KEY (sb_id)
);

SELECT COUNT(*) FROM starbucks

SELECT * FROM starbucks

Select distinct postcode from starbucks, zillow
where starbucks.postcode IN (select DISTINCT address from zillow)

SELECT postcode
FROM starbucks
RIGHT JOIN zillow
ON starbucks.postcode = zillow.address;

SELECT zillow.rowcount, zillow.propertytype, zillow.lotareavalue, zillow.address, zillow.price, zillow.bedrooms, zillow.longitude, zillow.latitude, zillow.zpid, zillow.bathrooms, zillow.livingarea, zillow.sb_id, starbucks.sb_id, starbucks.store_name
FROM zillow
LEFT JOIN starbucks
ON zillow.sb_id = starbucks.sb_id;

Select * from Zillow;
