// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#define AP_INT_MAX_W 32678

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "A_V"
#define AUTOTB_TVIN_A_V  "../tv/cdatafile/c.lab_1.autotvin_A_V.dat"
// wrapc file define: "B_V"
#define AUTOTB_TVIN_B_V  "../tv/cdatafile/c.lab_1.autotvin_B_V.dat"
// wrapc file define: "C_V"
#define AUTOTB_TVIN_C_V  "../tv/cdatafile/c.lab_1.autotvin_C_V.dat"
// wrapc file define: "Y_V"
#define AUTOTB_TVOUT_Y_V  "../tv/cdatafile/c.lab_1.autotvout_Y_V.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "Y_V"
#define AUTOTB_TVOUT_PC_Y_V  "../tv/rtldatafile/rtl.lab_1.autotvout_Y_V.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			A_V_depth = 0;
			B_V_depth = 0;
			C_V_depth = 0;
			Y_V_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{A_V " << A_V_depth << "}\n";
			total_list << "{B_V " << B_V_depth << "}\n";
			total_list << "{C_V " << C_V_depth << "}\n";
			total_list << "{Y_V " << Y_V_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int A_V_depth;
		int B_V_depth;
		int C_V_depth;
		int Y_V_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void lab_1 (
ap_int<32> A,
ap_int<32> B,
ap_int<32> C,
ap_int<32> (&Y));

void AESL_WRAP_lab_1 (
ap_int<32> A,
ap_int<32> B,
ap_int<32> C,
ap_int<32> (&Y))
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "Y_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_Y_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_Y_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_Y_V, AESL_token); // data

			sc_bv<32> *Y_V_pc_buffer = new sc_bv<32>[1];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'Y_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'Y_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					Y_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_Y_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_Y_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: Y_V
				{
					// bitslice(31, 0)
					// {
						// celement: Y.V(31, 0)
						// {
							sc_lv<32>* Y_V_lv0_0_0_1 = new sc_lv<32>[1];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: Y.V(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(Y) != NULL) // check the null address if the c port is array or others
								{
									Y_V_lv0_0_0_1[hls_map_index].range(31, 0) = sc_bv<32>(Y_V_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: Y.V(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : Y
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : Y
								// output_left_conversion : Y
								// output_type_conversion : (Y_V_lv0_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
								if (&(Y) != NULL) // check the null address if the c port is array or others
								{
									Y = (Y_V_lv0_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] Y_V_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "A_V"
		char* tvin_A_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_A_V);

		// "B_V"
		char* tvin_B_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_B_V);

		// "C_V"
		char* tvin_C_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_C_V);

		// "Y_V"
		char* tvout_Y_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_Y_V);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_A_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_A_V, tvin_A_V);

		sc_bv<32> A_V_tvin_wrapc_buffer;

		// RTL Name: A_V
		{
			// bitslice(31, 0)
			{
				// celement: A.V(31, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : A
						// sub_1st_elem          : 
						// ori_name_1st_elem     : A
						// regulate_c_name       : A_V
						// input_type_conversion : (A).to_string(2).c_str()
						if (&(A) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> A_V_tmp_mem;
							A_V_tmp_mem = (A).to_string(2).c_str();
							A_V_tvin_wrapc_buffer.range(31, 0) = A_V_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_A_V, "%s\n", (A_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_A_V, tvin_A_V);
		}

		tcl_file.set_num(1, &tcl_file.A_V_depth);
		sprintf(tvin_A_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_A_V, tvin_A_V);

		// [[transaction]]
		sprintf(tvin_B_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_B_V, tvin_B_V);

		sc_bv<32> B_V_tvin_wrapc_buffer;

		// RTL Name: B_V
		{
			// bitslice(31, 0)
			{
				// celement: B.V(31, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : B
						// sub_1st_elem          : 
						// ori_name_1st_elem     : B
						// regulate_c_name       : B_V
						// input_type_conversion : (B).to_string(2).c_str()
						if (&(B) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> B_V_tmp_mem;
							B_V_tmp_mem = (B).to_string(2).c_str();
							B_V_tvin_wrapc_buffer.range(31, 0) = B_V_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_B_V, "%s\n", (B_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_B_V, tvin_B_V);
		}

		tcl_file.set_num(1, &tcl_file.B_V_depth);
		sprintf(tvin_B_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_B_V, tvin_B_V);

		// [[transaction]]
		sprintf(tvin_C_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_C_V, tvin_C_V);

		sc_bv<32> C_V_tvin_wrapc_buffer;

		// RTL Name: C_V
		{
			// bitslice(31, 0)
			{
				// celement: C.V(31, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : C
						// sub_1st_elem          : 
						// ori_name_1st_elem     : C
						// regulate_c_name       : C_V
						// input_type_conversion : (C).to_string(2).c_str()
						if (&(C) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> C_V_tmp_mem;
							C_V_tmp_mem = (C).to_string(2).c_str();
							C_V_tvin_wrapc_buffer.range(31, 0) = C_V_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_C_V, "%s\n", (C_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_C_V, tvin_C_V);
		}

		tcl_file.set_num(1, &tcl_file.C_V_depth);
		sprintf(tvin_C_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_C_V, tvin_C_V);

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		lab_1(A, B, C, Y);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_Y_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_Y_V, tvout_Y_V);

		sc_bv<32>* Y_V_tvout_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: Y_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: Y.V(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : Y
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : Y
						// regulate_c_name       : Y_V
						// input_type_conversion : (Y).to_string(2).c_str()
						if (&(Y) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> Y_V_tmp_mem;
							Y_V_tmp_mem = (Y).to_string(2).c_str();
							Y_V_tvout_wrapc_buffer[hls_map_index].range(31, 0) = Y_V_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_Y_V, "%s\n", (Y_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_Y_V, tvout_Y_V);
		}

		tcl_file.set_num(1, &tcl_file.Y_V_depth);
		sprintf(tvout_Y_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_Y_V, tvout_Y_V);

		// release memory allocation
		delete [] Y_V_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "A_V"
		delete [] tvin_A_V;
		// release memory allocation: "B_V"
		delete [] tvin_B_V;
		// release memory allocation: "C_V"
		delete [] tvin_C_V;
		// release memory allocation: "Y_V"
		delete [] tvout_Y_V;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

