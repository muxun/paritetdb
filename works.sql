DROP TABLE works;
CREATE TABLE works(
works_id integer PRIMARY KEY,
agency_name REFERENCES agency (agency_name),
device_id REFERENCES device (device_id),
works_type varchar(20),
works_what text,
works_price numeric,
works_year date,
works_agency text,
works_comment text
);