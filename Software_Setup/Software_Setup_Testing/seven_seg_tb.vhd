library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_ARITH.all;

entity tb_seven_seg is
end tb_seven_seg;
architecture Behavioral of tb_seven_seg is
    signal clk_tb : STD_LOGIC := '0';
    signal num_tb : STD_LOGIC_VECTOR(3 downto 0) := "0000";
    signal seg_out_tb : STD_LOGIC_VECTOR(6 downto 0);
    -- Clock period
    constant clk_period : TIME := 10 ns;
    -- Instantiate the Unit Under Test (UUT)
    component seven_seg
        port (
            clk : in STD_LOGIC;
            num : in STD_LOGIC_VECTOR(3 downto 0);
            seg_out : out STD_LOGIC_VECTOR(6 downto 0));
    end component;
begin
    -- Connect UUT to testbench signals
    uut : seven_seg port map(
        clk => clk_tb,
        num => num_tb,
        seg_out => seg_out_tb
    );
    -- Clock Process
    process
    begin
        while now < 500 ns loop -- Run simulation for 500 ns
            clk_tb <= '0';
            wait for clk_period/2;
            clk_tb <= '1';
            wait for clk_period/2;
        end loop;
        wait;
    end process;
    -- Stimulus Process
    process
    begin
        report "Starting 7-Segment Testbench Simulation";

        for i in 0 to 9 loop
            num_tb <= conv_std_logic_vector(i, 4); -- Set input number
            wait for 50 ns; -- Wait for 50 ns before changing input
        end loop;
        report "Testbench completed successfully";
        wait;
    end process;
end Behavioral;