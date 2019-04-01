CREATE OR REPLACE package body hr_dev1.test_bl_user_registration as
 
       procedure validate_strong_passwords as
    begin
        ut.expect(bl_user_registration.validate_password_strength('ABCdef123#'), 'ABCdef123# is a strong password').to_(equal(true));
        ut.expect(bl_user_registration.validate_password_strength('%abc1B2CD'), '%abc1B2CD is a strong password').to_(equal(true));
        ut.expect(bl_user_registration.validate_password_strength('%abc1B2CD'), '%abc1B2CD is a stronger password').to_(equal(true));
    end validate_strong_passwords;
 
 
    procedure validate_missing_characters as
    begin
        ut.expect(bl_user_registration.validate_password_strength('Abcdefg#'), 'Abcdefg# misses a digit character').to_(equal(false));
        ut.expect(bl_user_registration.validate_password_strength('ABCD1234$'), 'ABCD1234$ misses a lowercase character').to_(equal(false));
        ut.expect(bl_user_registration.validate_password_strength('abcd1234@'), 'abcd1234@ misses an uppercase character').to_(equal(false));
        ut.expect(bl_user_registration.validate_password_strength('ABcd1234'), 'ABcd1234 misses a special character').to_(equal(false));
    end validate_missing_characters;
 
 
    procedure validate_boundaries as
    begin
        ut.expect(bl_user_registration.validate_password_strength('Ab1%'), 'Password is the minimum valid length').to_(equal(true));
        ut.expect(bl_user_registration.validate_password_strength('A1%'), 'Password is too short').to_(equal(false));
        ut.expect(bl_user_registration.validate_password_strength('Abcdefghijk12345678@'), 'Password is the maximum valid length').to_(equal(true));
        ut.expect(bl_user_registration.validate_password_strength('Abcdefghijk123456789@'), 'Password is too long').to_(equal(false));
        ut.expect(bl_user_registration.validate_password_strength(''), 'An empty string should return false').to_(equal(false));
 
    end validate_boundaries;
 
  
  
end test_bl_user_registration;
/