library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library vunit_lib;
context vunit_lib.vunit_context;

library osvvm;
context osvvm.OsvvmContext;

entity template is
  generic (
    CLK_PERIOD    : time := 10 ns;
    RESET_CYCLES  : positive := 1;
    TPD           : time := 2 ns
  );
end entity;

architecture test_harness of template is
  signal clk  : std_ulogic;
  signal rstn : std_ulogic;

  -- TODO: Declare components here.
begin

  osvvm.TbUtilPkg.CreateClock(clk, CLK_PERIOD);

  ossvm.TbUtilPkg.CreateReset(
    reset => rstn,
    resetactive => '0',
    clk => clk,
    period => RESET_CYCLES * CLK_PERIOD,
    tpd => tpd
  );

  -- TODO: Instantiate the DUT.

  -- TODO: Instantiate the Verification Components.

  -- TODO: Instantiate the Test Sequencer.


end;
