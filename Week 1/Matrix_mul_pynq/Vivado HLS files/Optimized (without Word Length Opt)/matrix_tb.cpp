#include "matrix.h"
#include <stdio.h>
#include <math.h>
#include <time.h>
#include <stdlib.h>

void matrixmul_bm(double input_A[MATSIZE][MATSIZE], double input_B[MATSIZE][MATSIZE],
		double output_C[MATSIZE][MATSIZE]); //Benchmark function, no need for stream since we are only implementing on software

int main() {

	double input_A[MATSIZE][MATSIZE];
	double input_B[MATSIZE][MATSIZE];
	double output_C_bm[MATSIZE][MATSIZE];
	double output_C_hw[MATSIZE][MATSIZE];
	//We are using double here to get the best possible accuracy

	int row, col;

	//Generate random input data
	loop_input_1: for(row = 0; row<MATSIZE; row++) {
		loop_input_2: for(col = 0; col<MATSIZE; col++) {
			input_A[row][col] = rand()%100;
			input_B[row][col] = rand()%100;
		}
	}

	matrixmul_bm(input_A, input_B, output_C_bm); //calling the benchmarking function

	axis_data local_stream;
	hls::stream<axis_data> in_A, out_C;

	//Generate stream input A for hardware function
	loop_input_A1: for(row = 0; row < MATSIZE; row++) {
		loop_input_A2: for(col = 0; col < MATSIZE; col++){
			local_stream.data = input_A[row][col];
			//generate last and strobe signal
			if((row == MATSIZE - 1) && (col == MATSIZE-1)) {
				local_stream.last = 1;
			}

			else {
				local_stream.last = 0;
			}
			in_A.write(local_stream);
		}
	}

	//Generate stream input B for hardware function in same stream
	loop_input_B1: for(row = 0; row < MATSIZE; row++) {
		loop_input_B2: for(col = 0; col < MATSIZE; col++){
			local_stream.data = input_B[row][col];
			//generate last and strobe signal
			if((row == MATSIZE - 1) && (col == MATSIZE-1)) {
				local_stream.last = 1;
			}

			else {
				local_stream.last = 0;
			}
			in_A.write(local_stream);
		}
	}

	matrixmul_opt_128(in_A, out_C);

	//Receive stream output C from hardware function
			loop_output_C1: for(row = 0; row < MATSIZE; row++) {
				loop_output_C2: for(col = 0; col < MATSIZE; col++){
					local_stream = out_C.read();
					output_C_hw[row][col] = local_stream.data;
				}
			}

		//Compare benchmark function output and hardware output
		loop_compare_C1: for(row = 0; row < MATSIZE; row++){
			loop_compare_C2: for(col = 0; col < MATSIZE; col++) {
				if(fabs(output_C_hw[row][col] - output_C_bm[row][col]) > 0.1) {
					printf("Error at row index %d and column index %d\n", row, col);
					printf("Hardware output %f\n", output_C_hw[row][col]);
					printf("Software output %f\n", output_C_bm[row][col]);
					return 1;
				}
			}
		}

		printf("No errors!!\n");
		return 0;
	}

	void matrixmul_bm(double input_A[MATSIZE][MATSIZE], double input_B[MATSIZE][MATSIZE],
			double output_C[MATSIZE][MATSIZE]) {
		//Matrix Multiplication
		int row, col, index;
			loop1: for(row = 0; row < MATSIZE; row++) {
				loop2: for(col = 0; col<MATSIZE; col++) {
					double res = 0;
					loop3: for(index = 0; index < MATSIZE; index++) {
						res += input_A[row][index] * input_B[index][col];
					}
					output_C[row][col] = res;
				}
			}
	}
