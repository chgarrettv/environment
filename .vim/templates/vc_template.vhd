library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library osvvm;
context osvvm.OsvvmContext;
use osvvm.ScoreboardPkg_slv.all;

entity template is
  generic (
    -- TODO: Add generics.
    TEMP : integer
  )
  port (
    -- TODO: Add the Transaction Interface here.
    -- TODO: Add the DUT Interface here.
    clk   : in std_ulogic;
    rstn  : in std_ulogic
  );
end entity;

architecture verification_component of template is
begin

  transaction_handler : process
  begin

    -- TODO: Add functionality here.

  end process transaction_handler;

end;
