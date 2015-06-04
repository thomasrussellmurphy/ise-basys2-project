library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Basys2Project is
  port (
    mclk     : in    std_logic; 
    uclk     : in    std_logic; 
    btn      : in    std_logic_vector (3 downto 0); 
    sw       : in    std_logic_vector (7 downto 0); 
    led      : out   std_logic_vector (7 downto 0); 
    seg      : out   std_logic_vector (6 downto 0); 
    an       : out   std_logic_vector (3 downto 0); 
    dp       : out   std_logic; 
    OutBlue  : out   std_logic_vector (2 downto 1); 
    OutGreen : out   std_logic_vector (2 downto 0); 
    OutRed   : out   std_logic_vector (2 downto 0); 
    HS       : out   std_logic; 
    VS       : out   std_logic
    -- TODO: add the rest of the standard Basys2 signals to the port map
  );

end Basys2Project;

architecture Structural of Basys2Project is
begin
  -- TODO: set outputs to known state as appropriate
end Structural;
