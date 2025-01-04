library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- TODO: Add libraries.

entity template is
  generic (
    -- TODO: Add generics.
  );
  port (
    clk  : in  std_ulogic;
    rstn : in  std_ulogic
  );
end;

architecture rtl of template is

  type reg_t is record
    -- TODO: Update this record.
    temp  : std_ulogic;
    temp2 : std_ulogic_vector(31 downto 0);
  end record;
  constant C_REG_RESET : reg_t := (
    -- TODO: Update these reset values.
    temp  => '0',
    temp2 => (others => '0')
  );
  signal r, c : reg_t;

  -- TODO: Add signals.

begin
  
  combinational : process (r) -- Add ports here.
    variable v : reg_t;
  begin
    v := r;

    -- TODO: Add combinational logic.
    -- Combinational Logic:

    c <= v;
  end process;

  -- TODO: Add properties.
  -- Properties:
  -- psl default clock is rising_edge(clk);

  -- Synchronous Processes:
  process (clk)
  begin
    if rising_edge(clk) then
      if rstn = '0' then
        r <= C_REG_RESET;
      else
        r <= c;
      end if;
    end if;
  end process;
end;
