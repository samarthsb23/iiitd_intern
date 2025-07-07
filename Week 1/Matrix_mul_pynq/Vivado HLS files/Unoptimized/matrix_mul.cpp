#include "matrix_mul.h"

void matrixmul_unopt_32(hls::stream<axis_data> &in_A, hls::stream<axis_data> &out_C) {
	#pragma HLS INTERFACE ap_ctrl_none port=return
	#pragma HLS INTERFACE axis register both port=in_A
	#pragma HLS INTERFACE axis register both port=out_C
	Mat_Dtype input_A[MATSIZE][MATSIZE];
	Mat_Dtype input_B[MATSIZE][MATSIZE];
	Mat_Dtype output_C[MATSIZE][MATSIZE];

	int row, col, index;
	axis_data local_stream;

	//Reading the input

	loop_input_A1: for(row = 0; row<MATSIZE; row++) {
		loop_input_A2: for(col = 0; col<MATSIZE; col++) {
			local_stream = in_A.read();
			input_A[row][col] = local_stream.data;
		}
	}

	loop_input_B1: for(row = 0; row<MATSIZE; row++) {
		loop_input_B2: for(col = 0; col<MATSIZE; col++) {
			local_stream = in_A.read(); //we are using same interface for A and B
			input_B[row][col] = local_stream.data;
		}
	}

	//Matrix Multiplication

	loop1: for(row = 0; row < MATSIZE; row++) {
		loop2: for(col = 0; col<MATSIZE; col++) {
			Mat_Dtype res = 0;
			loop3: for(index = 0; index < MATSIZE; index++) {

				res += input_A[row][index] * input_B[index][col];
			}
			output_C[row][col] = res;
		}
	}

	//Stream output data back
	loop_output_C1: for(row = 0; row < MATSIZE; row++) {
		loop_output_C2: for(col = 0; col < MATSIZE; col++){

			local_stream.data = output_C[row][col];
			//generate last and strobe signal
			if((row == MATSIZE - 1) && (col == MATSIZE-1)) {
				local_stream.last = 1;
			}

			else {
				local_stream.last = 0;
			}
			out_C.write(local_stream);
		}
	}
}
