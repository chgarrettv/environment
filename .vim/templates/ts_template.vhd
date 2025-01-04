library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library osvvm;
context osvvm.OsvvmContext;

architecture test_sequencer of template is
begin

  control_process : process
  begin

    -- Use this to synchronize the other processes.

  end process control_process;

  interface_process : process
  begin

    -- Use this to drive an interface.

  end process interface_process;

  -- TODO: Make more interface processes as necessary.

end;
