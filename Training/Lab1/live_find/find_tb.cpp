#include <stdio.h>
#include "find_ip.h"

void find(char val, hls::stream<axis_data> &in_vec, hls::stream<axis_data> &out_vec);

void find_sw(char val, char in_vec[dim], char out_vec [dim]) {
	for(int i = 0; i < dim; i++) {
		if(in_vec[i] == val) {
			out_vec[i] = 1;
		}

		else {
			out_vec[i] = 0;
		}
	}
}

int main() {

	char in_vec[dim];
	char out_vec_sw[dim];

	axis_data local_read, local_write;
	hls::stream<axis_data> input_vec;
	hls::stream<axis_data> output_vec_hw;

	for (int i = 0; i < dim; i++) {
		in_vec[i] = i+2;
	}

	for (int i = 0; i < dim; i++) {
		local_read.data = in_vec[i];

		if (i == dim-1) {
			local_read.last = 1;
		}

		else {
			local_read.last = 0;
		}

		input_vec.write(local_read);
	}

	//Call to hardware function
	find(4, input_vec, output_vec_hw);

	//Call to software function
	find_sw(4, in_vec, out_vec_sw);

	for(int i = 0; i<dim; i++){
		output_vec_hw.read(local_write);
		if(out_vec_sw[i] != local_write.data){
			printf("Error on index %d", i);
			return 1;
		}
	}

	printf("No errors!");

	return 0;
}
