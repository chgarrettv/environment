library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- TODO: Add any necessary libraries.

package new_pkg is

  -- TODO: Add constants.
	constant test : integer := 0;

  -- TODO: Add signals.
	signal testing : std_ulogic_vector(3 downto 0);

  -- TODO: Add records.
	type state_t is (
		idle,
		running,
		done
	);

end package;

package body new_pkg is

  -- TODO: Add functions.
	function func(constant c : in std_ulogic;
	   						signal   s : in std_ulogic
							 ) return std_ulogic is
		variable test_var : integer := 4;
	begin

		return s;

	end func;

  -- TODO: Add procedures.
	procedure proc(constant c : in integer;
	   						 signal   s : inout std_ulogic;
								 variable y : out integer
								) is
		variable run_var : integer := 4;
	begin

		if s = '1' then
			y := c;
		end if;

	end proc;

end new_pkg;
