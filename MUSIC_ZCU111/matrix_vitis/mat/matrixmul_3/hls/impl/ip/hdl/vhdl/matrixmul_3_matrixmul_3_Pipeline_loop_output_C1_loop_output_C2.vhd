-- ==============================================================
-- Generated by Vitis HLS v2024.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity matrixmul_3_matrixmul_3_Pipeline_loop_output_C1_loop_output_C2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    out_C_TREADY : IN STD_LOGIC;
    output_C_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    output_C_ce0 : OUT STD_LOGIC;
    output_C_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    out_C_TDATA : OUT STD_LOGIC_VECTOR (63 downto 0);
    out_C_TVALID : OUT STD_LOGIC );
end;


architecture behav of matrixmul_3_matrixmul_3_Pipeline_loop_output_C1_loop_output_C2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv7_40 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv4_7 : STD_LOGIC_VECTOR (3 downto 0) := "0111";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln181_fu_102_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal out_C_TDATA_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0_grp1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal add_ln185_fu_175_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln185_reg_250 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_block_pp0_stage0_11001_grp1 : BOOLEAN;
    signal local_stream_last_fu_187_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal local_stream_last_reg_255 : STD_LOGIC_VECTOR (0 downto 0);
    signal local_stream_last_reg_255_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln185_1_fu_209_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal col_fu_52 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal add_ln182_fu_193_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal row_fu_56 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal select_ln181_fu_145_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal indvar_flatten20_fu_60 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    signal add_ln181_1_fu_108_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_sig_allocacmp_indvar_flatten20_load : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_block_pp0_stage0_01001_grp1 : BOOLEAN;
    signal output_C_ce0_local : STD_LOGIC;
    signal icmp_ln182_fu_131_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln181_fu_125_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal trunc_ln185_fu_153_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln142_fu_137_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_2_fu_157_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln185_fu_171_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal cmp68_fu_165_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln187_fu_181_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_fu_213_p3 : STD_LOGIC_VECTOR (32 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ready_sig : STD_LOGIC;
    signal ap_done_sig : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component matrixmul_3_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component matrixmul_3_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready_sig,
        ap_done => ap_done_sig,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter2_reg = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    col_fu_52_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001_grp1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    col_fu_52 <= ap_const_lv4_0;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    col_fu_52 <= add_ln182_fu_193_p2;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten20_fu_60_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln181_fu_102_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    indvar_flatten20_fu_60 <= add_ln181_1_fu_108_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten20_fu_60 <= ap_const_lv7_0;
                end if;
            end if; 
        end if;
    end process;

    row_fu_56_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001_grp1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    row_fu_56 <= ap_const_lv4_0;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    row_fu_56 <= select_ln181_fu_145_p3;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001_grp1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                add_ln185_reg_250 <= add_ln185_fu_175_p2;
                local_stream_last_reg_255 <= local_stream_last_fu_187_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001_grp1)) then
                local_stream_last_reg_255_pp0_iter2_reg <= local_stream_last_reg_255;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln181_1_fu_108_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten20_load) + unsigned(ap_const_lv7_1));
    add_ln181_fu_125_p2 <= std_logic_vector(unsigned(row_fu_56) + unsigned(ap_const_lv4_1));
    add_ln182_fu_193_p2 <= std_logic_vector(unsigned(select_ln142_fu_137_p3) + unsigned(ap_const_lv4_1));
    add_ln185_fu_175_p2 <= std_logic_vector(unsigned(tmp_2_fu_157_p3) + unsigned(zext_ln185_fu_171_p1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_grp1_assign_proc : process(ap_enable_reg_pp0_iter3, out_C_TREADY)
    begin
                ap_block_pp0_stage0_01001_grp1 <= ((out_C_TREADY = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter3, out_C_TREADY)
    begin
                ap_block_pp0_stage0_11001 <= ((out_C_TREADY = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_11001_grp1_assign_proc : process(ap_enable_reg_pp0_iter3, out_C_TREADY)
    begin
                ap_block_pp0_stage0_11001_grp1 <= ((out_C_TREADY = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1));
    end process;

        ap_block_pp0_stage0_grp1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter3, out_C_TREADY)
    begin
                ap_block_pp0_stage0_subdone <= ((out_C_TREADY = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1));
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln181_fu_102_p2)
    begin
        if (((icmp_ln181_fu_102_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_done <= ap_done_sig;

    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter2_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter2_reg = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3)
    begin
        if (((ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;
    ap_ready <= ap_ready_sig;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten20_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_loop_init, indvar_flatten20_fu_60, ap_block_pp0_stage0)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_indvar_flatten20_load <= ap_const_lv7_0;
        else 
            ap_sig_allocacmp_indvar_flatten20_load <= indvar_flatten20_fu_60;
        end if; 
    end process;

    cmp68_fu_165_p2 <= "1" when (select_ln181_fu_145_p3 = ap_const_lv4_7) else "0";
    icmp_ln181_fu_102_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten20_load = ap_const_lv7_40) else "0";
    icmp_ln182_fu_131_p2 <= "1" when (col_fu_52 = ap_const_lv4_8) else "0";
    icmp_ln187_fu_181_p2 <= "1" when (select_ln142_fu_137_p3 = ap_const_lv4_7) else "0";
    local_stream_last_fu_187_p2 <= (icmp_ln187_fu_181_p2 and cmp68_fu_165_p2);
    out_C_TDATA <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_213_p3),64));

    out_C_TDATA_blk_n_assign_proc : process(ap_enable_reg_pp0_iter3, out_C_TREADY, ap_block_pp0_stage0_grp1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_grp1) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            out_C_TDATA_blk_n <= out_C_TREADY;
        else 
            out_C_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    out_C_TVALID_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001_grp1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001_grp1) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            out_C_TVALID <= ap_const_logic_1;
        else 
            out_C_TVALID <= ap_const_logic_0;
        end if; 
    end process;

    output_C_address0 <= zext_ln185_1_fu_209_p1(6 - 1 downto 0);
    output_C_ce0 <= output_C_ce0_local;

    output_C_ce0_local_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001_grp1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001_grp1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            output_C_ce0_local <= ap_const_logic_1;
        else 
            output_C_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    select_ln142_fu_137_p3 <= 
        ap_const_lv4_0 when (icmp_ln182_fu_131_p2(0) = '1') else 
        col_fu_52;
    select_ln181_fu_145_p3 <= 
        add_ln181_fu_125_p2 when (icmp_ln182_fu_131_p2(0) = '1') else 
        row_fu_56;
    tmp_2_fu_157_p3 <= (trunc_ln185_fu_153_p1 & ap_const_lv3_0);
    tmp_fu_213_p3 <= (local_stream_last_reg_255_pp0_iter2_reg & output_C_q0);
    trunc_ln185_fu_153_p1 <= select_ln181_fu_145_p3(3 - 1 downto 0);
    zext_ln185_1_fu_209_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln185_reg_250),64));
    zext_ln185_fu_171_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln142_fu_137_p3),6));
end behav;
