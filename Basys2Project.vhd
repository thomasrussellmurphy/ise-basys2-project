library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Basys2Project is
  port (
  	-- Clock inputs
    mclk     : in    std_logic;
    uclk     : in    std_logic;
    -- User physical inputs
    btn      : in    std_logic_vector (3 downto 0);
    sw       : in    std_logic_vector (7 downto 0);
    -- User LED/Display outputs
    led      : out   std_logic_vector (7 downto 0);
    seg      : out   std_logic_vector (6 downto 0);
    an       : out   std_logic_vector (3 downto 0);
    dp       : out   std_logic;
    -- VGA Interface
    OutBlue  : out   std_logic_vector (2 downto 1);
    OutGreen : out   std_logic_vector (2 downto 0);
    OutRed   : out   std_logic_vector (2 downto 0);
    HSYNC    : out   std_logic;
    VSYNC    : out   std_logic
    -- TODO: add the rest of the standard Basys2 signals to the port map
    -- PS2
    -- Expansion headers (6-pin, 4 data connections each)
  );

end Basys2Project;

architecture Structural of Basys2Project is
begin
  -- TODO: set outputs to known state as appropriate
end Structural;
