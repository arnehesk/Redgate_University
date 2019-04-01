CREATE OR REPLACE package hr_dev1.test_betwnstr as
  
  -- %suite(Between string function)
  
  -- %test(Returns substring from start position to end position)
  procedure basic_usage;
  
  -- %test(Returns substring when start position is zero)
  procedure zero_start_position;
  
  -- %test(More between function)
  procedure ut_betwn;
  
end;
/