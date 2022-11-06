--------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.Std_Logic_1164.all;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
ENTITY Configurable_U2 IS
  PORT(
      C : IN std_logic := 'U';
      DA : IN std_logic_vector(4 downto 0) :=(OTHERS => 'U');
      DB : IN std_logic_vector(4 downto 0) :=(OTHERS => 'U');
      Y : OUT std_logic_vector(4 downto 0) :=(OTHERS => '0');
      S : IN std_logic := 'U'
  );
END Configurable_U2;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
ARCHITECTURE structure OF Configurable_U2 IS
BEGIN
    PROCESS(C, DA, DB, S)
    BEGIN
        IF C'Event and C = '1' THEN
            CASE S IS
                WHEN '0' =>
                    Y <= DA;
                WHEN '1' =>
                    Y <= DB;
                WHEN OTHERS =>
                    Y <= (OTHERS => '0');
            END CASE;
        END IF;
    END PROCESS;
END structure;
--------------------------------------------------------------------------------
