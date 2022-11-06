--------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.Std_Logic_1164.all;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
ENTITY Configurable_U4 IS
  PORT(
      DA : IN std_logic_vector(4 downto 0) :=(OTHERS => 'U');
      DB : IN std_logic_vector(4 downto 0) :=(OTHERS => 'U');
      Y : OUT std_logic_vector(4 downto 0) :=(OTHERS => '0');
      S : IN std_logic := 'U'
  );
END Configurable_U4;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
ARCHITECTURE structure OF Configurable_U4 IS
BEGIN
    PROCESS(DA, DB, S)
    BEGIN
        CASE S IS
            WHEN '0' =>
                Y <= DA;
            WHEN '1' =>
                Y <= DB;
            WHEN OTHERS =>
                Y <= (OTHERS => '0');
        END CASE;
    END PROCESS;
END structure;
--------------------------------------------------------------------------------
