#include "matrix.h"

typedef double data_2;

void matrixmul_bm(data_2 input_A[MATSIZE][MATSIZE], data_2 input_B[MATSIZE][MATSIZE],
		data_2 output_C[MATSIZE][MATSIZE]); // Software reference (no HLS stream)

int main() {
	data_2 input_A[MATSIZE][MATSIZE];
	data_2 input_B[MATSIZE][MATSIZE];
	data_2 output_C_bm[MATSIZE][MATSIZE];
	data_2 output_C_hw[MATSIZE][MATSIZE];

	srand(1);
	int row, col;

	double total_rmse = 0.0;

	for (int iter = 0; iter < 10; iter++) {

		// Generate random inputs
		for (row = 0; row < MATSIZE; row++) {
			for (col = 0; col < MATSIZE; col++) {
				input_A[row][col] = 1.0 + ((float)rand() / (RAND_MAX));
				input_B[row][col] = 1.0 + ((float)rand() / (RAND_MAX));
			}
		}

		matrixmul_bm(input_A, input_B, output_C_bm); // Software reference

		// --- Stream Setup ---
		typedef hls::axis<Mat_Dtype, 0, 0, 0> axis_float_t;
		typedef hls::stream<axis_float_t> axis_data;

		axis_data in_A, out_C;
		axis_float_t local_stream;

		// Stream input A
		for (row = 0; row < MATSIZE; row++) {
			for (col = 0; col < MATSIZE; col++) {
				local_stream.data = (float)input_A[row][col];
				local_stream.last = 0;
				in_A.write(local_stream);
			}
		}

		// Stream input B (into same stream)
		for (row = 0; row < MATSIZE; row++) {
			for (col = 0; col < MATSIZE; col++) {
				local_stream.data = (float)input_B[row][col];
				local_stream.last = (row == MATSIZE - 1 && col == MATSIZE - 1) ? 1 : 0;
				in_A.write(local_stream);
			}
		}

		// Call hardware function
		matrixmul_8_opt(in_A, out_C);

		// Receive hardware output
		for (row = 0; row < MATSIZE; row++) {
			for (col = 0; col < MATSIZE; col++) {
				local_stream = out_C.read();
				output_C_hw[row][col] = local_stream.data;
			}
		}

		// Compare with software output
		double mse = 0.0;
		for (row = 0; row < MATSIZE; row++) {
			for (col = 0; col < MATSIZE; col++) {
				double err = output_C_hw[row][col] - output_C_bm[row][col];
				mse += err * err;
				if (fabs(err) > 0.0002) {
					printf("Error at [%d][%d]: HW = %f, SW = %f, diff of %f\n",
						   row, col, output_C_hw[row][col], output_C_bm[row][col], err);
					return 1;
				}
			}
		}
		mse /= (MATSIZE * MATSIZE);
		double rmse = sqrt(mse);
		total_rmse += rmse;
	}
    //RMSE
    printf("No errors!! Average RMSE over 10 runs: %f\n", total_rmse / 10.0);

	return 0;
}


// Software benchmark implementation
void matrixmul_bm(data_2 input_A[MATSIZE][MATSIZE], data_2 input_B[MATSIZE][MATSIZE],
		data_2 output_C[MATSIZE][MATSIZE]) {
	int row, col, index;
	for (row = 0; row < MATSIZE; row++) {
		for (col = 0; col < MATSIZE; col++) {
			data_2 res = 0;
			for (index = 0; index < MATSIZE; index++) {
				res += input_A[row][index] * input_B[index][col];
			}
			output_C[row][col] = res;
		}
	}
}