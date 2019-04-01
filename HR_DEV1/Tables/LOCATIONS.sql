CREATE TABLE hr_dev1.locations (
  location_id NUMBER(4) NOT NULL,
  street_address VARCHAR2(40 BYTE),
  postal_code VARCHAR2(14 BYTE),
  city VARCHAR2(30 BYTE) NOT NULL,
  state_province VARCHAR2(25 BYTE),
  country_id CHAR(2 BYTE),
  CONSTRAINT loc_id_pk PRIMARY KEY (location_id) USING INDEX hr_dev1.loc_id_pkx
);
COMMENT ON COLUMN hr_dev1.locations.location_id IS 'Primary key of locations table';
COMMENT ON COLUMN hr_dev1.locations.street_address IS 'Street address of an office, warehouse, or production site of a company.
Contains building number and street name';
COMMENT ON COLUMN hr_dev1.locations.postal_code IS 'Post code of the location of an office, warehouse, or production site
of a company. ';
COMMENT ON COLUMN hr_dev1.locations.city IS 'A not null column that shows city where an office, warehouse, or
production site of a company is located. ';
COMMENT ON COLUMN hr_dev1.locations.state_province IS 'State or Province where an office, warehouse, or production site of a
company is located.';
COMMENT ON COLUMN hr_dev1.locations.country_id IS 'Country where an office, warehouse, or production site of a company is
located. Foreign key to country_id column of the countries table.';