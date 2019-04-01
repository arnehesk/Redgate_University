CREATE OR REPLACE TRIGGER hr_dev1.UPDATE_JOB_HISTORY
    AFTER UPDATE OF JOB_ID, DEPARTMENT_ID ON hr_dev1.EMPLOYEES
    FOR EACH ROW
BEGIN
  add_job_history(:old.employee_id, :old.hire_date, sysdate,
                  :old.job_id, :old.department_id);
END;
/