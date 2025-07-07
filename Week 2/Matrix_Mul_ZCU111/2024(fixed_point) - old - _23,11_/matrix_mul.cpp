#include "matrix_mul.h"

void matrixmul_3(axis_data &in_A, axis_data &out_C) {
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE axis register both port=in_A
#pragma HLS INTERFACE axis register both port=out_C

	Mat_DtypeOp input_A[MATSIZE][MATSIZE];
#pragma HLS ARRAY_PARTITION variable=input_A complete dim=2
	Mat_DtypeOp input_B[MATSIZE][MATSIZE];
#pragma HLS ARRAY_PARTITION variable=input_B complete dim=1
	Mat_DtypeOp output_C[MATSIZE][MATSIZE];

	int row, col, index;
	axis_float_t local_stream;

	// Read input A
	loop_input_A1: for(row = 0; row < MATSIZE; row++) {
		loop_input_A2: for(col = 0; col < MATSIZE; col++) {
            #pragma HLS LOOP_FLATTEN
            #pragma HLS PIPELINE
			local_stream = in_A.read();
			input_A[row][col] = (Mat_DtypeOp)(local_stream.data);
		}
	}

	// Read input B
	loop_input_B1: for(row = 0; row < MATSIZE; row++) {
		loop_input_B2: for(col = 0; col < MATSIZE; col++) {
            #pragma HLS LOOP_FLATTEN
            #pragma HLS PIPELINE
			local_stream = in_A.read(); // still reading from same input stream
			input_B[row][col] = (Mat_DtypeOp)(local_stream.data);
		}
	}

	// Matrix multiplication
	loop1: for(row = 0; row < MATSIZE; row++) {
		loop2: for(col = 0; col < MATSIZE; col++) {
        #pragma HLS PIPELINE
			Mat_DtypeOp res = 0;
			loop3: for(index = 0; index < MATSIZE; index++) {
				res += input_A[row][index] * input_B[index][col];
			}
			output_C[row][col] = res;
		}
	}

	// Stream output C
	loop_output_C1: for(row = 0; row < MATSIZE; row++) {
		loop_output_C2: for(col = 0; col < MATSIZE; col++) {
            #pragma HLS PIPELINE
			axis_float_t out_element;
			out_element.data = (Mat_Dtype)output_C[row][col];

			// Set last flag
			out_element.last = ((row == MATSIZE - 1) && (col == MATSIZE - 1)) ? 1 : 0;
            out_element.keep = -1;

			out_C.write(out_element);
		}
	}
}
