--------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.Std_Logic_1164.all;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
ENTITY Configurable_U6 IS
  PORT(
      I : IN std_logic;
      O : OUT std_logic
  );
END Configurable_U6;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
ARCHITECTURE structure OF Configurable_U6 IS
BEGIN
    O <= NOT(I);
END structure;
--------------------------------------------------------------------------------
