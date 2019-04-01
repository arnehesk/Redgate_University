CREATE TABLE hr_dev1.jobs (
  job_id VARCHAR2(10 BYTE) NOT NULL,
  job_title VARCHAR2(35 BYTE) NOT NULL,
  min_salary NUMBER(6),
  max_salary NUMBER(6),
  CONSTRAINT job_id_pk PRIMARY KEY (job_id) USING INDEX hr_dev1.job_id_pkx
);
COMMENT ON COLUMN hr_dev1.jobs.job_id IS 'Primary key of jobs table.';
COMMENT ON COLUMN hr_dev1.jobs.job_title IS 'A not null column that shows job title, e.g. AD_VP, FI_ACCOUNTANT';
COMMENT ON COLUMN hr_dev1.jobs.min_salary IS 'Minimum salary for a job.';
COMMENT ON COLUMN hr_dev1.jobs.max_salary IS 'Maximum salary for a job.';