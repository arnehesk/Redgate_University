CREATE TABLE hr_dev1.business (
  incorp_date DATE,
  "NAME" VARCHAR2(255 CHAR) NOT NULL,
  state_id VARCHAR2(10 CHAR) NOT NULL,
  cust_id NUMBER(10) NOT NULL,
  PRIMARY KEY (cust_id)
);