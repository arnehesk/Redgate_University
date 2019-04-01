CREATE TABLE hr_dev1.countries (
  country_id CHAR(2 BYTE) NOT NULL,
  country_name VARCHAR2(38 BYTE),
  region_id NUMBER,
  CONSTRAINT country_c_id_pk PRIMARY KEY (country_id) USING INDEX hr_dev1.country_c_id_pkx,
  CONSTRAINT countr_reg_fk FOREIGN KEY (region_id) REFERENCES hr_dev1.regions (region_id)
);
COMMENT ON COLUMN hr_dev1.countries.country_id IS 'Primary key of countries table.';
COMMENT ON COLUMN hr_dev1.countries.country_name IS 'Country name';
COMMENT ON COLUMN hr_dev1.countries.region_id IS 'Region ID for the country. Foreign key to region_id column in the departments table.';