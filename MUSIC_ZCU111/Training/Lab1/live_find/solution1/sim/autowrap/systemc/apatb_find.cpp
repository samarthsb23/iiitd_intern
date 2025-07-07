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
    typedef struct axis_data {
        ap_uint<32> data;
        ap_uint<1> last;
       } axis_data;



// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "val_r"
#define AUTOTB_TVIN_val_r  "../tv/cdatafile/c.find.autotvin_val_r.dat"
// wrapc file define: "in_vec_V_data_V"
#define AUTOTB_TVIN_in_vec_V_data_V  "../tv/cdatafile/c.find.autotvin_in_vec_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_vec_V_data_V  "../tv/stream_size/stream_size_in_in_vec_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_vec_V_data_V  "../tv/stream_size/stream_ingress_status_in_vec_V_data_V.dat"
// wrapc file define: "in_vec_V_last_V"
#define AUTOTB_TVIN_in_vec_V_last_V  "../tv/cdatafile/c.find.autotvin_in_vec_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_vec_V_last_V  "../tv/stream_size/stream_size_in_in_vec_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_vec_V_last_V  "../tv/stream_size/stream_ingress_status_in_vec_V_last_V.dat"
// wrapc file define: "out_vec_V_data_V"
#define AUTOTB_TVOUT_out_vec_V_data_V  "../tv/cdatafile/c.find.autotvout_out_vec_V_data_V.dat"
#define AUTOTB_TVIN_out_vec_V_data_V  "../tv/cdatafile/c.find.autotvin_out_vec_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_vec_V_data_V  "../tv/stream_size/stream_size_out_out_vec_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_vec_V_data_V  "../tv/stream_size/stream_egress_status_out_vec_V_data_V.dat"
// wrapc file define: "out_vec_V_last_V"
#define AUTOTB_TVOUT_out_vec_V_last_V  "../tv/cdatafile/c.find.autotvout_out_vec_V_last_V.dat"
#define AUTOTB_TVIN_out_vec_V_last_V  "../tv/cdatafile/c.find.autotvin_out_vec_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_vec_V_last_V  "../tv/stream_size/stream_size_out_out_vec_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_vec_V_last_V  "../tv/stream_size/stream_egress_status_out_vec_V_last_V.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "out_vec_V_data_V"
#define AUTOTB_TVOUT_PC_out_vec_V_data_V  "../tv/rtldatafile/rtl.find.autotvout_out_vec_V_data_V.dat"
// tvout file define: "out_vec_V_last_V"
#define AUTOTB_TVOUT_PC_out_vec_V_last_V  "../tv/rtldatafile/rtl.find.autotvout_out_vec_V_last_V.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			val_r_depth = 0;
			in_vec_V_data_V_depth = 0;
			in_vec_V_last_V_depth = 0;
			out_vec_V_data_V_depth = 0;
			out_vec_V_last_V_depth = 0;
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
			total_list << "{val_r " << val_r_depth << "}\n";
			total_list << "{in_vec_V_data_V " << in_vec_V_data_V_depth << "}\n";
			total_list << "{in_vec_V_last_V " << in_vec_V_last_V_depth << "}\n";
			total_list << "{out_vec_V_data_V " << out_vec_V_data_V_depth << "}\n";
			total_list << "{out_vec_V_last_V " << out_vec_V_last_V_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int val_r_depth;
		int in_vec_V_data_V_depth;
		int in_vec_V_last_V_depth;
		int out_vec_V_data_V_depth;
		int out_vec_V_last_V_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void find (
char val,
hls::stream<axis_data > (&in_vec),
hls::stream<axis_data > (&out_vec));

void AESL_WRAP_find (
char val,
hls::stream<axis_data > (&in_vec),
hls::stream<axis_data > (&out_vec))
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

		// pop stream input: "in_vec"
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_in_vec_V_data_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_in_vec_V_data_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_in_vec_V_data_V, AESL_token); // pop_size
			int aesl_tmp_1 = atoi(AESL_token.c_str());
			for (int i = 0; i < aesl_tmp_1; i++)
			{
				in_vec.read();
			}
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_in_vec_V_data_V, AESL_token); // [[/transaction]]
		}

		// define output stream variables: "out_vec"
		std::vector<axis_data > aesl_tmp_3;
		int aesl_tmp_4;
		int aesl_tmp_5 = 0;

		// read output stream size: "out_vec"
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_out_vec_V_data_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_out_vec_V_data_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_out_vec_V_data_V, AESL_token); // pop_size
			aesl_tmp_4 = atoi(AESL_token.c_str());
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_out_vec_V_data_V, AESL_token); // [[/transaction]]
		}

		// output port post check: "out_vec_V_data_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_out_vec_V_data_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_out_vec_V_data_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_out_vec_V_data_V, AESL_token); // data

			std::vector<sc_bv<32> > out_vec_V_data_V_pc_buffer;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_vec_V_data_V', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_vec_V_data_V', possible cause: There are uninitialized variables in the C design." << endl;
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
					out_vec_V_data_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_out_vec_V_data_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_out_vec_V_data_V))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_4)
			{
				aesl_tmp_4 = i;
			}

			if (aesl_tmp_4 > 0 && aesl_tmp_3.size() < aesl_tmp_4)
			{
				int aesl_tmp_3_size = aesl_tmp_3.size();

				for (int tmp_aesl_tmp_3 = 0; tmp_aesl_tmp_3 < aesl_tmp_4 - aesl_tmp_3_size; tmp_aesl_tmp_3++)
				{
					axis_data tmp;
					aesl_tmp_3.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: out_vec_V_data_V
				{
					// bitslice(31, 0)
					// {
						// celement: out_vec.V.data.V(31, 0)
						// {
							sc_lv<32>* out_vec_V_data_V_lv0_0_0_1_lv1_0_0_1 = new sc_lv<32>[aesl_tmp_4 - aesl_tmp_5];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: out_vec.V.data.V(31, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									if (&(aesl_tmp_3[0].data) != NULL) // check the null address if the c port is array or others
									{
										out_vec_V_data_V_lv0_0_0_1_lv1_0_0_1[hls_map_index].range(31, 0) = sc_bv<32>(out_vec_V_data_V_pc_buffer[hls_map_index].range(31, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: out_vec.V.data.V(31, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : aesl_tmp_3[i_0].data
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : aesl_tmp_3[0].data
									// output_left_conversion : aesl_tmp_3[i_0].data
									// output_type_conversion : (out_vec_V_data_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(aesl_tmp_3[0].data) != NULL) // check the null address if the c port is array or others
									{
										aesl_tmp_3[i_0].data = (out_vec_V_data_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}
		}

		// output port post check: "out_vec_V_last_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_out_vec_V_last_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_out_vec_V_last_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_out_vec_V_last_V, AESL_token); // data

			std::vector<sc_bv<1> > out_vec_V_last_V_pc_buffer;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_vec_V_last_V', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_vec_V_last_V', possible cause: There are uninitialized variables in the C design." << endl;
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
					out_vec_V_last_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_out_vec_V_last_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_out_vec_V_last_V))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_4)
			{
				aesl_tmp_4 = i;
			}

			if (aesl_tmp_4 > 0 && aesl_tmp_3.size() < aesl_tmp_4)
			{
				int aesl_tmp_3_size = aesl_tmp_3.size();

				for (int tmp_aesl_tmp_3 = 0; tmp_aesl_tmp_3 < aesl_tmp_4 - aesl_tmp_3_size; tmp_aesl_tmp_3++)
				{
					axis_data tmp;
					aesl_tmp_3.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: out_vec_V_last_V
				{
					// bitslice(0, 0)
					// {
						// celement: out_vec.V.last.V(0, 0)
						// {
							sc_lv<1>* out_vec_V_last_V_lv0_0_0_1_lv1_0_0_1 = new sc_lv<1>[aesl_tmp_4 - aesl_tmp_5];
						// }
					// }

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: out_vec.V.last.V(0, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									if (&(aesl_tmp_3[0].last) != NULL) // check the null address if the c port is array or others
									{
										out_vec_V_last_V_lv0_0_0_1_lv1_0_0_1[hls_map_index].range(0, 0) = sc_bv<1>(out_vec_V_last_V_pc_buffer[hls_map_index].range(0, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: out_vec.V.last.V(0, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : aesl_tmp_3[i_0].last
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : aesl_tmp_3[0].last
									// output_left_conversion : aesl_tmp_3[i_0].last
									// output_type_conversion : (out_vec_V_last_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(aesl_tmp_3[0].last) != NULL) // check the null address if the c port is array or others
									{
										aesl_tmp_3[i_0].last = (out_vec_V_last_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}
		}

		// push back output stream: "out_vec"
		for (int i = 0; i < aesl_tmp_4; i++)
		{
			out_vec.write(aesl_tmp_3[i]);
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "val_r"
		char* tvin_val_r = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_val_r);

		// "in_vec_V_data_V"
		char* tvin_in_vec_V_data_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_in_vec_V_data_V);
		char* wrapc_stream_size_in_in_vec_V_data_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_vec_V_data_V);
		char* wrapc_stream_ingress_status_in_vec_V_data_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_vec_V_data_V);

		// "in_vec_V_last_V"
		char* tvin_in_vec_V_last_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_in_vec_V_last_V);
		char* wrapc_stream_size_in_in_vec_V_last_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_vec_V_last_V);
		char* wrapc_stream_ingress_status_in_vec_V_last_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_vec_V_last_V);

		// "out_vec_V_data_V"
		char* tvin_out_vec_V_data_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_out_vec_V_data_V);
		char* tvout_out_vec_V_data_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_out_vec_V_data_V);
		char* wrapc_stream_size_out_out_vec_V_data_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_vec_V_data_V);
		char* wrapc_stream_egress_status_out_vec_V_data_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_vec_V_data_V);

		// "out_vec_V_last_V"
		char* tvin_out_vec_V_last_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_out_vec_V_last_V);
		char* tvout_out_vec_V_last_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_out_vec_V_last_V);
		char* wrapc_stream_size_out_out_vec_V_last_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_vec_V_last_V);
		char* wrapc_stream_egress_status_out_vec_V_last_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_vec_V_last_V);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// dump stream tvin: "in_vec"
		std::vector<axis_data > aesl_tmp_0;
		int aesl_tmp_1 = 0;
		while (!in_vec.empty())
		{
			aesl_tmp_0.push_back(in_vec.read());
			aesl_tmp_1++;
		}

		// dump stream tvin: "out_vec"
		std::vector<axis_data > aesl_tmp_3;
		int aesl_tmp_4 = 0;
		while (!out_vec.empty())
		{
			aesl_tmp_3.push_back(out_vec.read());
			aesl_tmp_4++;
		}

		// [[transaction]]
		sprintf(tvin_val_r, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_val_r, tvin_val_r);

		sc_bv<8> val_r_tvin_wrapc_buffer;

		// RTL Name: val_r
		{
			// bitslice(7, 0)
			{
				// celement: val(7, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : val
						// sub_1st_elem          : 
						// ori_name_1st_elem     : val
						// regulate_c_name       : val
						// input_type_conversion : val
						if (&(val) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> val_tmp_mem;
							val_tmp_mem = val;
							val_r_tvin_wrapc_buffer.range(7, 0) = val_tmp_mem.range(7, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_val_r, "%s\n", (val_r_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_val_r, tvin_val_r);
		}

		tcl_file.set_num(1, &tcl_file.val_r_depth);
		sprintf(tvin_val_r, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_val_r, tvin_val_r);

		// push back input stream: "in_vec"
		for (int i = 0; i < aesl_tmp_1; i++)
		{
			in_vec.write(aesl_tmp_0[i]);
		}

		// push back input stream: "out_vec"
		for (int i = 0; i < aesl_tmp_4; i++)
		{
			out_vec.write(aesl_tmp_3[i]);
		}

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		find(val, in_vec, out_vec);

		CodeState = DUMP_OUTPUTS;
		// record input size to tv3: "in_vec"
		int aesl_tmp_2 = in_vec.size();

		// pop output stream: "out_vec"
		int aesl_tmp_5 = aesl_tmp_4;
		aesl_tmp_4 = 0;
     aesl_tmp_3.clear();
		while (!out_vec.empty())
		{
			aesl_tmp_3.push_back(out_vec.read());
			aesl_tmp_4++;
		}

		// [[transaction]]
		sprintf(tvin_in_vec_V_data_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_in_vec_V_data_V, tvin_in_vec_V_data_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_vec_V_data_V, tvin_in_vec_V_data_V);

		sc_bv<32>* in_vec_V_data_V_tvin_wrapc_buffer = new sc_bv<32>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: in_vec_V_data_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: in_vec.V.data.V(31, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].data
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].data
							// regulate_c_name       : in_vec_V_data_V
							// input_type_conversion : (aesl_tmp_0[i_0].data).to_string(2).c_str()
							if (&(aesl_tmp_0[0].data) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> in_vec_V_data_V_tmp_mem;
								in_vec_V_data_V_tmp_mem = (aesl_tmp_0[i_0].data).to_string(2).c_str();
								in_vec_V_data_V_tvin_wrapc_buffer[hls_map_index].range(31, 0) = in_vec_V_data_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvin_in_vec_V_data_V, "%s\n", (in_vec_V_data_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_in_vec_V_data_V, tvin_in_vec_V_data_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_in_vec_V_data_V = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_vec_V_data_V, stream_ingress_size_in_vec_V_data_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_vec_V_data_V, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_in_vec_V_data_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_vec_V_data_V, stream_ingress_size_in_vec_V_data_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_vec_V_data_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_in_vec_V_data_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_vec_V_data_V, stream_ingress_size_in_vec_V_data_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_vec_V_data_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.in_vec_V_data_V_depth);
		sprintf(tvin_in_vec_V_data_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_in_vec_V_data_V, tvin_in_vec_V_data_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_vec_V_data_V, tvin_in_vec_V_data_V);

		// release memory allocation
		delete [] in_vec_V_data_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_in_vec_V_data_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_vec_V_data_V, wrapc_stream_size_in_in_vec_V_data_V);
		sprintf(wrapc_stream_size_in_in_vec_V_data_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_vec_V_data_V, wrapc_stream_size_in_in_vec_V_data_V);
		sprintf(wrapc_stream_size_in_in_vec_V_data_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_vec_V_data_V, wrapc_stream_size_in_in_vec_V_data_V);

		// [[transaction]]
		sprintf(tvin_in_vec_V_last_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_in_vec_V_last_V, tvin_in_vec_V_last_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_vec_V_last_V, tvin_in_vec_V_last_V);

		sc_bv<1>* in_vec_V_last_V_tvin_wrapc_buffer = new sc_bv<1>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: in_vec_V_last_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: in_vec.V.last.V(0, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].last
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].last
							// regulate_c_name       : in_vec_V_last_V
							// input_type_conversion : (aesl_tmp_0[i_0].last).to_string(2).c_str()
							if (&(aesl_tmp_0[0].last) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<1> in_vec_V_last_V_tmp_mem;
								in_vec_V_last_V_tmp_mem = (aesl_tmp_0[i_0].last).to_string(2).c_str();
								in_vec_V_last_V_tvin_wrapc_buffer[hls_map_index].range(0, 0) = in_vec_V_last_V_tmp_mem.range(0, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvin_in_vec_V_last_V, "%s\n", (in_vec_V_last_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_in_vec_V_last_V, tvin_in_vec_V_last_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_in_vec_V_last_V = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_vec_V_last_V, stream_ingress_size_in_vec_V_last_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_vec_V_last_V, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_in_vec_V_last_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_vec_V_last_V, stream_ingress_size_in_vec_V_last_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_vec_V_last_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_in_vec_V_last_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_vec_V_last_V, stream_ingress_size_in_vec_V_last_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_vec_V_last_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.in_vec_V_last_V_depth);
		sprintf(tvin_in_vec_V_last_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_in_vec_V_last_V, tvin_in_vec_V_last_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_vec_V_last_V, tvin_in_vec_V_last_V);

		// release memory allocation
		delete [] in_vec_V_last_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_in_vec_V_last_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_vec_V_last_V, wrapc_stream_size_in_in_vec_V_last_V);
		sprintf(wrapc_stream_size_in_in_vec_V_last_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_vec_V_last_V, wrapc_stream_size_in_in_vec_V_last_V);
		sprintf(wrapc_stream_size_in_in_vec_V_last_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_vec_V_last_V, wrapc_stream_size_in_in_vec_V_last_V);

		// [[transaction]]
		sprintf(tvout_out_vec_V_data_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_out_vec_V_data_V, tvout_out_vec_V_data_V);

		sc_bv<32>* out_vec_V_data_V_tvout_wrapc_buffer = new sc_bv<32>[aesl_tmp_4 - aesl_tmp_5];

		// RTL Name: out_vec_V_data_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: out_vec.V.data.V(31, 0)
				{
					// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
					for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_3[i_0].data
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_3[0].data
							// regulate_c_name       : out_vec_V_data_V
							// input_type_conversion : (aesl_tmp_3[i_0].data).to_string(2).c_str()
							if (&(aesl_tmp_3[0].data) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> out_vec_V_data_V_tmp_mem;
								out_vec_V_data_V_tmp_mem = (aesl_tmp_3[i_0].data).to_string(2).c_str();
								out_vec_V_data_V_tvout_wrapc_buffer[hls_map_index].range(31, 0) = out_vec_V_data_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_4 - aesl_tmp_5; i++)
		{
			sprintf(tvout_out_vec_V_data_V, "%s\n", (out_vec_V_data_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_out_vec_V_data_V, tvout_out_vec_V_data_V);
		}

		tcl_file.set_num(aesl_tmp_4 - aesl_tmp_5, &tcl_file.out_vec_V_data_V_depth);
		sprintf(tvout_out_vec_V_data_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_out_vec_V_data_V, tvout_out_vec_V_data_V);

		// release memory allocation
		delete [] out_vec_V_data_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_out_vec_V_data_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_vec_V_data_V, wrapc_stream_size_out_out_vec_V_data_V);
		sprintf(wrapc_stream_size_out_out_vec_V_data_V, "%d\n", aesl_tmp_4 - aesl_tmp_5);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_vec_V_data_V, wrapc_stream_size_out_out_vec_V_data_V);
		sprintf(wrapc_stream_size_out_out_vec_V_data_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_vec_V_data_V, wrapc_stream_size_out_out_vec_V_data_V);

		// [[transaction]]
		sprintf(tvout_out_vec_V_last_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_out_vec_V_last_V, tvout_out_vec_V_last_V);

		sc_bv<1>* out_vec_V_last_V_tvout_wrapc_buffer = new sc_bv<1>[aesl_tmp_4 - aesl_tmp_5];

		// RTL Name: out_vec_V_last_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: out_vec.V.last.V(0, 0)
				{
					// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
					for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_3[i_0].last
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_3[0].last
							// regulate_c_name       : out_vec_V_last_V
							// input_type_conversion : (aesl_tmp_3[i_0].last).to_string(2).c_str()
							if (&(aesl_tmp_3[0].last) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<1> out_vec_V_last_V_tmp_mem;
								out_vec_V_last_V_tmp_mem = (aesl_tmp_3[i_0].last).to_string(2).c_str();
								out_vec_V_last_V_tvout_wrapc_buffer[hls_map_index].range(0, 0) = out_vec_V_last_V_tmp_mem.range(0, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_4 - aesl_tmp_5; i++)
		{
			sprintf(tvout_out_vec_V_last_V, "%s\n", (out_vec_V_last_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_out_vec_V_last_V, tvout_out_vec_V_last_V);
		}

		tcl_file.set_num(aesl_tmp_4 - aesl_tmp_5, &tcl_file.out_vec_V_last_V_depth);
		sprintf(tvout_out_vec_V_last_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_out_vec_V_last_V, tvout_out_vec_V_last_V);

		// release memory allocation
		delete [] out_vec_V_last_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_out_vec_V_last_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_vec_V_last_V, wrapc_stream_size_out_out_vec_V_last_V);
		sprintf(wrapc_stream_size_out_out_vec_V_last_V, "%d\n", aesl_tmp_4 - aesl_tmp_5);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_vec_V_last_V, wrapc_stream_size_out_out_vec_V_last_V);
		sprintf(wrapc_stream_size_out_out_vec_V_last_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_vec_V_last_V, wrapc_stream_size_out_out_vec_V_last_V);

		// push back output stream: "out_vec"
		for (int i = 0; i < aesl_tmp_4; i++)
		{
			out_vec.write(aesl_tmp_3[i]);
		}

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "val_r"
		delete [] tvin_val_r;
		// release memory allocation: "in_vec_V_data_V"
		delete [] tvin_in_vec_V_data_V;
		delete [] wrapc_stream_size_in_in_vec_V_data_V;
		// release memory allocation: "in_vec_V_last_V"
		delete [] tvin_in_vec_V_last_V;
		delete [] wrapc_stream_size_in_in_vec_V_last_V;
		// release memory allocation: "out_vec_V_data_V"
		delete [] tvout_out_vec_V_data_V;
		delete [] tvin_out_vec_V_data_V;
		delete [] wrapc_stream_size_out_out_vec_V_data_V;
		// release memory allocation: "out_vec_V_last_V"
		delete [] tvout_out_vec_V_last_V;
		delete [] tvin_out_vec_V_last_V;
		delete [] wrapc_stream_size_out_out_vec_V_last_V;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

