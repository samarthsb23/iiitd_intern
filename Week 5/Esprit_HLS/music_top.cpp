#include "music.h"
using namespace std;

// Function 1 to read from AXI stream to array
void inputdatamover(axis_in_stream &in,
		MATRIX_IN_T out_strm[X]){

	for (int i = 0; i < X; i++){
		#pragma HLS pipeline II = 1 rewind
		axis_data_in temp=in.read();
		out_strm[i] = temp.data;
    }
}

// Function to perform Averaged autocorrelation
void AutoCorrelation(MATRIX_IN_T rec_sig[X],
		MATRIX_IN_T matrix1[N][N]) {

    #pragma HLS array_partition variable=rec_sig type=block factor=4
    int subarr = X + 1 - N;

    // Initialize the result matrix with zeros
    for (int k = 0; k < N; k++) {
        for (int l = 0; l < N; l++) {
            matrix1[k][l] = MATRIX_IN_T(0.0, 0.0);
        }
    }

    #pragma HLS array_partition variable=matrix1 type=block factor=4

    

    // Perform autocorrelation and accumulate the results 
    for (int i = 0; i < subarr; i++) {
        for (int k = 0; k < N; k++) {
            for (int l = 0; l < N; l++) {
                #pragma HLS LOOP_FLATTEN 
                MATRIX_IN_T dat1 = hls::x_conj(rec_sig[k + i]) * rec_sig[l + i];
                matrix1[k][l] += dat1;
            }
        }
    }

    // Average the accumulated results
    for (int m = 0; m < N; m++) {
        for (int n = 0; n < N; n++) {
            matrix1[m][n] /= subarr;
        }
    }
}

// void AutoCorrelation2(MATRIX_IN_T rec_sig[X],
// 		MATRIX_IN_T matrix1[N][N]) {

//     // Initialize the result matrix with zeros
//     for (int k = 0; k < N; k++) {
//         for (int l = 0; l < N; l++) {
//             matrix1[k][l] = MATRIX_IN_T(0, 0);
//         }
//     }

//     MATRIX_IN_T dat1 = MATRIX_IN_T(0,0);

//     for (int i = 0; i < subarr; i++) {
//         for (int k = 0; k < N; k++) {
//             for (int l = 0; l < N; l++) {
//                 //MATRIX_IN_T dat1 = hls::x_conj(rec_sig[k + i]) * rec_sig[l + i];
//                 MATRIX_IN_T dat1 = rec_sig[k];
//                 matrix1[k][l] = matrix1[k][l] + dat1;
//             }
//         }
//     }
// }

void complex_sqrt(MATRIX_IN_T temp,
		MATRIX_IN_T *b_sqrt){

	DATA_1 temp2 = temp.real()*temp.real() + temp.imag()*temp.imag();
	DATA_1 r = hls::sqrt(temp2);

	DATA_1 theta_h = hls::atan2(temp.imag(), temp.real())/2;
    DATA_1 mag_h = hls::sqrt(r);

	DATA_1 h_r = mag_h*hls::cos(theta_h);
	DATA_1 h_i = mag_h*hls::sin(theta_h);
	*b_sqrt = MATRIX_IN_T(h_r,h_i);
}


// Givens rotation calculation
void givensrotation(MATRIX_IN_T a,
		MATRIX_IN_T b,
		MATRIX_IN_T *cos_theta,
		MATRIX_IN_T *sin_theta){

	MATRIX_IN_T temp = a*a + b*b;
	MATRIX_IN_T hypo = MATRIX_IN_T(0.0,0.0);
	complex_sqrt(temp,&hypo);

	if (hypo == MATRIX_IN_T(0.0,0.0)){
		*cos_theta = MATRIX_IN_T(1.0,0.0);
		*sin_theta = MATRIX_IN_T(0.0,0.0);
	}
	else{
		*cos_theta = a/hypo;
		*sin_theta = -b/hypo;
	}
}

void givensrotation2(MATRIX_IN_T a,
		MATRIX_IN_T b,
		MATRIX_IN_T *cos_theta,
		MATRIX_IN_T *sin_theta){

	MATRIX_IN_T temp = a*a + b*b;
	DATA_1 temp2 = temp.real()*temp.real() + temp.imag()*temp.imag();
	DATA_1 r = hls::sqrt(temp2);

	DATA_1 x = temp.real();
	DATA_1 cosx = hls::sqrt((r+x)) * 0.7071067811865475; //1/root2
	DATA_1 sinx = hls::sqrt((r-x)) * 0.7071067811865475;
	MATRIX_IN_T hypo = MATRIX_IN_T(cosx,sinx);
	*cos_theta = a/hypo;
	*sin_theta = -b/hypo;
}

void MalM(MATRIX_IN_T A[N],
		MATRIX_IN_T B[N],
		MATRIX_IN_T cos_theta,
		MATRIX_IN_T sin_theta,
		MATRIX_IN_T C[N],
		MATRIX_IN_T D[N]){

    

	for (int i = 0; i < N; ++i){
        //#pragma HLS UNROLL off
        
		C[i] = A[i]*cos_theta + B[i]*(-sin_theta);
		D[i] = A[i]*sin_theta + B[i]*cos_theta; // Apply Givens rotation to 2 matrix rows (A, B) -> get rotated rows (C, D).
	}
}

// void EVD2(MATRIX_IN_T A[N][N],
// 		MATRIX_IN_T S[N][K]) {

//     for (int i = 0; i < N; ++i) {
//         for (int j = 0; j < K; ++j) {
//         	S[i][j] = MATRIX_IN_T(0.0, 0.0);
//         }
//     }

//     for (int i = 0; i < N; ++i) {
//         for (int j = 0; j < K; ++j) {
//         	S[i][j] = A[i][j];
//         }
//     }

// }

//  Function 5 to perform QRF using Given's Rotation
void EVD(MATRIX_IN_T A[N][N],
		MATRIX_IN_T S[N][K]) {

	MATRIX_IN_T R[N][N];
	MATRIX_IN_T Q[N][N];

    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
        	R[i][j] = A[i][j];
        	Q[i][j] = (i == j) ? MATRIX_IN_T(1.0, 0.0) : MATRIX_IN_T(0.0, 0.0);
        }
    }
    for (int i = 0; i < N - 1; ++i) {
        for (int j = i + 1; j < N; ++j) {
        	MATRIX_IN_T cos_theta = MATRIX_IN_T(0.0, 0.0);
        	MATRIX_IN_T sin_theta = MATRIX_IN_T(0.0, 0.0);
            givensrotation(R[i][i], R[j][i],&cos_theta,&sin_theta);
            MATRIX_IN_T temp1i[N];
            MATRIX_IN_T temp1j[N];
            MATRIX_IN_T temp2i[N];
            MATRIX_IN_T temp2j[N];
            MalM(R[i],R[j],cos_theta,sin_theta,temp1i,temp1j);
            MalM(Q[i],Q[j],cos_theta,sin_theta,temp2i,temp2j);
            for (int k = 0; k < N; ++k){
            	R[i][k] = temp1i[k];
				Q[i][k] = temp2i[k];
            	R[j][k] = temp1j[k];
				Q[j][k] = temp2j[k];
            }
        }
    }
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < K; ++j) {
        	S[i][j] = hls::x_conj(Q[j][i]);
        }
    }
}
// void omega_est(MATRIX_IN_T S[N][K],
// 		DATA_1 est_omg[K]) {
// 	MATRIX_IN_T phi_mat[K][K] = {MATRIX_IN_T(0.0, 0.0)};
//     int iter1 = 0;
    
//     est_omg[0] =2;
//     est_omg[1] = 3;


// }

// void omega_est(MATRIX_IN_T S[N][K],
// 		DATA_1 est_omg[K]) {

//     est_omg[0] = S[0][0].real();
//     est_omg[1] = S[0][1].imag();            


// }

void omega_est(MATRIX_IN_T S[N][K],
		DATA_1 est_omg[K]) {
	MATRIX_IN_T phi_mat[K][K] = {MATRIX_IN_T(0.0, 0.0)};
    int iter1 = 0;

    for (int i = 0; i < N - 1; i++) {
        if (i + 1 < N && i + K < N) {
        	MATRIX_IN_T subA1[K][K];
        	MATRIX_IN_T subB1[K][K];

            for (int j = 0; j < K; ++j) {
                for (int m = 0; m < K; ++m) {
                    subA1[j][m] = S[i + j][m];
                    subB1[j][m] = S[i + j + 1][m];
                }
            }

            MATRIX_IN_T det_A = subA1[0][0] * subA1[1][1] - subA1[0][1] * subA1[1][0];
            if (det_A != MATRIX_IN_T(0.0, 0.0)) {
            	MATRIX_IN_T temp_phi[K][K];

                // Calculate Phi directly
                temp_phi[0][0] = (subA1[1][1] * subB1[0][0] - subA1[0][1] * subB1[1][0]) / det_A;
                temp_phi[0][1] = (subA1[1][1] * subB1[0][1] - subA1[0][1] * subB1[1][1]) / det_A;
                temp_phi[1][0] = (-subA1[1][0] * subB1[0][0] + subA1[0][0] * subB1[1][0]) / det_A;
                temp_phi[1][1] = (subA1[0][0] * subB1[1][1] - subA1[1][0] * subB1[0][1]) / det_A;

                // Accumulate phi_mat
                for (int j = 0; j < K; ++j) {
                    for (int m = 0; m < K; ++m) {
                        phi_mat[j][m] += temp_phi[j][m];
                    }
                }
                ++iter1;
            }
        }
    }

    // Average the accumulated phi_mat
    for (int i = 0; i < K; ++i) {
        for (int j = 0; j < K; ++j) {
            phi_mat[i][j] /= iter1;
        }
    }

    // Calculate eigenvalues directly
    MATRIX_IN_T trace = phi_mat[0][0] + phi_mat[1][1];
    MATRIX_IN_T determinant = phi_mat[0][0] * phi_mat[1][1] - phi_mat[0][1] * phi_mat[1][0];
    MATRIX_IN_T discriminant = trace * trace - MATRIX_IN_T(4.0,0.0) * determinant;

    MATRIX_IN_T sqrt_disc = MATRIX_IN_T(0.0, 0.0);
    complex_sqrt(discriminant, &sqrt_disc);

    MATRIX_IN_T eigenvalues_0 = (trace + sqrt_disc) / 2.0;
    MATRIX_IN_T eigenvalues_1 = (trace - sqrt_disc) / 2.0;


    // Calculate omega estimates
    est_omg[0] = hls::atan2(eigenvalues_0.imag(), eigenvalues_0.real()) / 0.005;
    est_omg[1] = hls::atan2(eigenvalues_1.imag(), eigenvalues_1.real()) / 0.005;


}

void outputmover(DATA_1 omega_est[K],
		axis_out_stream &out){

	axis_data_out local_write;
	for (int i = 0 ; i < K ; i++){
		#pragma HLS PIPELINE
		 	local_write.data = omega_est[i];
		 	local_write.last = ((i==(K-1))?1:0);
            local_write.keep = -1;
		 	out.write(local_write);
	}
}

// Function 9 the main function
void ESPRIT_top(axis_in_stream &in,
		axis_out_stream &out)
{
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE axis port=out
#pragma HLS INTERFACE axis port=in
//#pragma HLS dataflow

    //cout << "START TOP" << endl;
    MATRIX_IN_T inMAT[X];
    inputdatamover(in, inMAT);
    //cout << "INPUT DONE" << endl;

    MATRIX_IN_T matrix1[N][N];
    AutoCorrelation(inMAT, matrix1);
    //cout << "AUTOCORR DONE" << endl;


    MATRIX_IN_T S[N][K];
    EVD(matrix1, S);
    cout << "EVD DONE" << endl;


    DATA_1 est_omg[K];    
    omega_est(S, est_omg);
    //cout << "OMEGA EST DONE" << endl;

    //DATA_1 est_omg[K] = {4.3,2.2};

    outputmover(est_omg, out);
    //cout << "OUTPUT DONE" << endl;

}
