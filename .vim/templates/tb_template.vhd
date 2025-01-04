library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library vunit_lib;
context vunit_lib.vunit_context;

library test_lib;
use test_lib.test_pkg.all;

-- TODO: Add libraries here.

entity dut_tb is
  generic (
    runner_cfg : string
  );
end entity;

architecture tb of dut_tb is

  constant FREQUENCY : real := 100000000.0;
  constant PERIOD : time := 1 sec / FREQUENCY;

  -- Clock:
  signal clk : std_ulogic := '0';
  procedure tick is
  begin
    wait for PERIOD;
  end procedure tick;


  -- DUT Inputs:
  type reg_t is record
    -- TODO: Add state variables here.
    temp : std_ulogic_vector(63 downto 0);
    rstn : std_ulogic;
  end record;
  constant C_REG_RESET : reg_t := (
    -- TODO: Add reset values here.
    temp => (others => '0'),
    rstn => '0'
  );
  signal r : reg_t;


  -- Reset:
  signal rstn : std_ulogic := '0';
  procedure reset(
                   signal rstn : inout std_ulogic;
                   signal reg : inout reg_t;
                   constant C_RESET_TIME : in time
                 ) is
  begin
    rstn <= '0';
    reg <= C_REG_RESET;
    wait for C_RESET_TIME;
    rstn <= '1';
  end procedure reset;


  -- DUT Outputs:
  -- TODO: Add more DUT signals here.
  signal y : std_ulogic_vector(63 downto 0);

begin

  clk <= not clk after PERIOD / 2;

  testbench : process
    variable expected_result : integer;
  begin
    test_runner_setup(runner, runner_cfg);
    reset(rstn, r, 100 ns);
    -- Begin testing.


    -- TODO: Update the test name.
		if run("test_name") then
      -- Setup:
      reset(rstn, r, 100 ns);
      -- TODO: Update this expected result.
      expected_result := 0;
      
      r.temp <= (others => '0');
      wait for PERIOD;

      -- TODO: Update this assertion.
      assert y = expected_result
        report lf & lf & lf & "Test failed!" &
               " r.temp = " & integer'image(to_integer(unsigned(r.temp))) &
               " y = " & integer'image(to_integer(unsigned(y))) &
               " when y should = " & expected_result &
               lf & lf;

		end if;


    -- End testing.
    test_runner_cleanup(runner);
  end process;

  -- TODO: Update this instantiation.
	dut : entity work.dut_name
		generic map (
			temp_generic => 64
		)
		port map (
			temp => r.temp,
			y => y,

			clk => clk,
			rstn => rstn
		);
end architecture;
