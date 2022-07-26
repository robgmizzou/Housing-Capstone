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

CREATE TABLE starbucks (
   brand VARCHAR,
	store_number INT NOT NULL,
	store_name VARCHAR,
	ownership_type VARCHAR,
	street_address VARCHAR,
	city VARCHAR,
	zipcode INT,
	latitude FLOAT,
	longitude FLOAT
);
SELECT COUNT(*) FROM starbucks

zillow
-
propertyType varchar
lotAreaValue float
address int pk fk - starbucks.postcode
price int
bedrooms int
longitude float
latitude float
zpid int
bathrooms int
livingArea int

starbucks
-
store_name varchar
street_address 
store_number int
city varchar
postcode int pk
latitude float
longitude float
