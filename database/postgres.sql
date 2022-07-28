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
	PRIMARY KEY (zpid)
);

SELECT COUNT (*) FROM zillow

SELECT * FROM zillow

CREATE TABLE starbucks (
	rowcount INT NOT NULL,
	store_name VARCHAR,
	street_address VARCHAR,
	city VARCHAR,
	postcode INT,
	longitude FLOAT,
	latitude FLOAT,
	PRIMARY KEY (rowcount)
);

SELECT COUNT(*) FROM starbucks

SELECT * FROM starbucks
