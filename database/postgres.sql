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