--------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.Std_Logic_1164.all;
USE IEEE.Std_Logic_Unsigned.all;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
ENTITY Configurable_U1 IS
  PORT(
      A    : IN std_logic_vector(4 downto 0) :=(OTHERS => 'U');
      B    : IN std_logic_vector(4 downto 0) :=(OTHERS => 'U');
      S    : OUT std_logic_vector(4 downto 0) :=(OTHERS => '0')
  );
END Configurable_U1;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
ARCHITECTURE structure OF Configurable_U1 IS
--------------------------------------------------------------------------------
SIGNAL SA : std_logic_vector(5 downto 0);
SIGNAL SB : std_logic_vector(5 downto 0);
--------------------------------------------------------------------------------
BEGIN
    SA(4 downto 0) <= A;
    SA(5) <= '0';
    SB(4 downto 0) <= B;
    SB(5) <= '0';
    PROCESS(SA, SB)
    VARIABLE SS : std_logic_vector(5 downto 0);
    BEGIN
        SS := SA + SB;
        S(4 downto 0) <= SS(4 downto 0);
    END PROCESS;
END structure;
--------------------------------------------------------------------------------
