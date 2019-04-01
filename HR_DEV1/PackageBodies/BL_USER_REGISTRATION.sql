CREATE OR REPLACE package body hr_dev1.bl_user_registration as
 
   -- A valid password needs an uppercase and lowercase character, a digit and to be between 4 and 20 characters long
 
   -- Example tests from https://apexplained.wordpress.com/2013/07/14/introducing-unit-tests-in-plsql-with-utplsql/
 
  function validate_password_strength(in_password in varchar2)
  return boolean is
  begin
    if not regexp_like(in_password, '[[:digit:]]') then
      return false;
    end if;
   
    if not regexp_like(in_password, '[[:lower:]]') then
      return false;
    end if;
   
    if not regexp_like(in_password, '[[:upper:]]') then
      return false;
    end if;
   
    if not regexp_like(in_password, '[@#$%]') then
      return false;
    end if;
 
    if length(in_password) is null or length(in_password)
    not between 4 and 20 then
      return false;
    end if;
 
   
    return true;
  end validate_password_strength;
   
end bl_user_registration;
/