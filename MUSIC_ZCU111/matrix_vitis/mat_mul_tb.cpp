#include "mat_mul.h"
#include <stdio.h>
#include <math.h>
#include <time.h>
#include <stdlib.h>
typedef int i;

void matrixmul_bm(i input_A[MATSIZE][MATSIZE], i input_B[MATSIZE][MATSIZE],
		i output_C[MATSIZE][MATSIZE]); //Benchmark function, no need for stream since we are only implementing on software

int main() {

	i input_A[MATSIZE][MATSIZE];
	i input_B[MATSIZE][MATSIZE];
	i output_C_bm[MATSIZE][MATSIZE];
	i output_C_hw[MATSIZE][MATSIZE];

	srand(1);

	int row, col;

	//Generate random input data
	loop_input_1: for(row = 0; row<MATSIZE; row++) {
		loop_input_2: for(col = 0; col<MATSIZE; col++) {
			input_A[row][col] = (rand()%100) + 1;
			input_B[row][col] = (rand()%100) + 1; //random integers from 1 to 100
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

	#ifdef solution1

		matrixmul_1(in_A, out_C);

	#endif

	#ifdef solution2

		matrixmul_2(in_A, out_C);

	#endif

	#ifdef solution3

		matrixmul_3(in_A, out_C);

	#endif

	#ifdef solution4

		matrixmul_4(in_A, out_C);

	#endif

	#ifdef solution5

		matrixmul_5(in_A, out_C);

	#endif

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

void matrixmul_bm(i input_A[MATSIZE][MATSIZE], i input_B[MATSIZE][MATSIZE],
		i output_C[MATSIZE][MATSIZE]) {
	//Matrix Multiplication
	int row, col, index;
		loop1: for(row = 0; row < MATSIZE; row++) {
			loop2: for(col = 0; col<MATSIZE; col++) {
				i res = 0;
				loop3: for(index = 0; index < MATSIZE; index++) {
					res += input_A[row][index] * input_B[index][col];
				}
				output_C[row][col] = res;
			}
		}
}
