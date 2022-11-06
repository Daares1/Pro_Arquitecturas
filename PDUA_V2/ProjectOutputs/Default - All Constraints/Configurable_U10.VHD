--------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.Std_Logic_1164.all;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
ENTITY Configurable_U10 IS
  PORT(
      D_B : IN std_logic_vector(15 downto 0):=(OTHERS => 'U');
      Q_B : OUT std_logic_vector(15 downto 0) := (Others=>'0');
      R : IN std_logic:='U';
      C : IN std_logic:='U'
  );
END Configurable_U10;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
ARCHITECTURE structure OF Configurable_U10 IS
BEGIN
    PROCESS(C, R)
    BEGIN
        IF ( C'Event and C = '1' ) THEN
            IF (R = '1') THEN
                Q_B <= (OTHERS => '0');
            ELSE
                Q_B <= D_B;
            END IF;
        END IF;
    END PROCESS;
END structure;
--------------------------------------------------------------------------------
