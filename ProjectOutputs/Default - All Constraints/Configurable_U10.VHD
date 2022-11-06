--------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.Std_Logic_1164.all;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
ENTITY Configurable_U10 IS
  PORT(
      DA : IN std_logic:='U';
      DB : IN std_logic:='U';
      DC : IN std_logic:='U';
      DD : IN std_logic:='U';
      DE : IN std_logic:='U';
      DF : IN std_logic:='U';
      DG : IN std_logic:='U';
      DH : IN std_logic:='U';
      Y : OUT std_logic:='0';
      S : IN std_logic_vector(2 downto 0) :=(OTHERS => 'U')
  );
END Configurable_U10;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
ARCHITECTURE structure OF Configurable_U10 IS
BEGIN
    PROCESS(DA, DB, DC, DD, DE, DF, DG, DH, S)
    BEGIN
        CASE S IS
            WHEN "000" =>
                Y <= DA;
            WHEN "001" =>
                Y <= DB;
            WHEN "010" =>
                Y <= DC;
            WHEN "011" =>
                Y <= DD;
            WHEN "100" =>
                Y <= DE;
            WHEN "101" =>
                Y <= DF;
            WHEN "110" =>
                Y <= DG;
            WHEN "111" =>
                Y <= DH;
            WHEN OTHERS =>
                Y <= '0';
        END CASE;
    END PROCESS;
END structure;
--------------------------------------------------------------------------------
