CREATE TABLE hr_dev1.regions (
  region_id NUMBER NOT NULL,
  region_name VARCHAR2(25 BYTE),
  CONSTRAINT reg_id_pk PRIMARY KEY (region_id) USING INDEX hr_dev1.reg_id_pkx
);