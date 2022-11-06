--------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.Std_Logic_1164.all;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
ENTITY Configurable_U5 IS
  PORT(
      O0 : OUT std_logic;
      O1 : OUT std_logic;
      O2 : OUT std_logic;
      O3 : OUT std_logic;
      O4 : OUT std_logic;
      O5 : OUT std_logic;
      O6 : OUT std_logic;
      O7 : OUT std_logic;
      I : IN std_logic_vector(7 downto 0)
  );
END Configurable_U5;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
ARCHITECTURE structure OF Configurable_U5 IS
BEGIN
    O0 <= I(0);
    O1 <= I(1);
    O2 <= I(2);
    O3 <= I(3);
    O4 <= I(4);
    O5 <= I(5);
    O6 <= I(6);
    O7 <= I(7);
END structure;
--------------------------------------------------------------------------------
