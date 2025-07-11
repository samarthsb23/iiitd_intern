#include "music2.h"
#include <stdio.h>
#include <string>
#include <vector>
#include <fstream>
#include <vector>
#include <algorithm> //for find
#include <cmath>     // for abs
#include <iostream>
#include <limits>

using namespace std;

// Function to find two local maximas with maximum values in an array
void findLocalMaxima(DATA_2 arr[L], int pex[T]) {

    std::vector<int> maximaIndices;
    // Check each element except the first and last
    for (int i = 1; i < L - 1; ++i) {
        if (arr[i] > arr[i - 1] && arr[i] > arr[i + 1]) {
            maximaIndices.push_back(i);
            printf("%d %f %f %f\n", i, arr[i-1], arr[i], arr[i+1]);
        }
    }

    cout << "No. of peaks: "<< maximaIndices.size() << endl;
    std::sort(maximaIndices.begin(), maximaIndices.end());

//    for (int i = 0; i < T; ++i){
    for (int i = 0; i < T; ++i){ // maximaIndices.size()
        if (i < maximaIndices.size()) {
            pex[i] = maximaIndices[i];
        } else {
            pex[i] = 0;
        }
    }
}

int main() {

// Input data starts form here. comment out the packet size you want to use

    DATA_1 real_in[X] = {1.72415916e-02,  1.72045829e-02,  1.70964707e-02,  1.69194694e-02,   1.66724211e-02,  1.63570774e-02,  1.59724848e-02,  1.55179746e-02,   1.50153941e-02,  1.44446846e-02,  1.38167073e-02,  1.31441129e-02,   1.24142906e-02,  1.16484218e-02,  1.08396102e-02,  9.99512256e-03,   9.11739129e-03,  8.21064374e-03,  7.28857286e-03,  6.34830346e-03,   5.40356822e-03,  4.44252156e-03,  3.48203926e-03,  2.53081785e-03,   1.58616360e-03,  6.56657662e-04, -2.51782053e-04, -1.14502450e-03,  -2.00689644e-03, -2.83812158e-03, -3.63900983e-03, -4.39731902e-03,  -5.11631631e-03, -5.78886827e-03, -6.42034278e-03, -6.99944262e-03,  -7.53051670e-03, -8.00896647e-03, -8.43313561e-03, -8.80077726e-03,  -9.11501620e-03, -9.38258431e-03, -9.58966635e-03, -9.74959912e-03,  -9.85617103e-03, -9.91125952e-03, -9.92014714e-03, -9.88585772e-03,  -9.80052107e-03, -9.68260309e-03, -9.51621018e-03, -9.32493642e-03,  -9.09572014e-03, -8.84020221e-03, -8.56381842e-03, -8.25754692e-03,  -7.94202285e-03, -7.60674820e-03, -7.26406078e-03, -6.91508624e-03,  -6.56495724e-03, -6.21588919e-03, -5.87101782e-03, -5.53372223e-03,  -5.21166362e-03, -4.90356788e-03, -4.60806609e-03, -4.33326800e-03,  -4.08405462e-03, -3.85871253e-03, -3.64918070e-03, -3.48413992e-03,  -3.33051422e-03, -3.21413107e-03, -3.12949985e-03, -3.07223749e-03,  -3.04860097e-03, -3.05158901e-03, -3.08039325e-03, -3.14129134e-03,  -3.22971819e-03, -3.33182337e-03, -3.46858209e-03, -3.61984979e-03,  -3.79260178e-03, -3.97338060e-03, -4.17340833e-03, -4.37759313e-03,  -4.59491640e-03, -4.80833997e-03, -5.02310921e-03, -5.23752815e-03,  -5.43490387e-03, -5.62750293e-03, -5.80568472e-03, -5.95795013e-03,  -6.09885312e-03, -6.20020838e-03, -6.28658449e-03, -6.34072497e-03,  -6.36045765e-03, -6.34071667e-03, -6.28029466e-03, -6.18549966e-03,  -6.04745261e-03, -5.85902047e-03, -5.63623148e-03, -5.35709208e-03,  -5.04344687e-03, -4.67520948e-03, -4.26659806e-03, -3.80566879e-03,  -3.30501623e-03, -2.75715284e-03, -2.17500746e-03, -1.54950956e-03,  -8.92668907e-04, -1.92391760e-04,  5.30087145e-04,  1.28690694e-03,   2.06689789e-03,  2.86311050e-03,  3.68087160e-03,  4.50418975e-03,   5.34252509e-03,  6.17678200e-03,  7.01757270e-03,  7.84854754e-03,   8.66966696e-03,  9.46949821e-03,  1.02560726e-02,  1.10190673e-02,   1.17458316e-02,  1.24364099e-02,  1.30892790e-02,  1.37100373e-02,   1.42711461e-02,  1.47953427e-02,  1.52527550e-02,  1.56582110e-02,   1.59993451e-02,  1.62854330e-02,  1.64991660e-02,  1.66495616e-02,   1.67322307e-02,  1.67434030e-02,  1.66844860e-02,  1.65535304e-02,   1.63531043e-02,  1.60885687e-02,  1.57478616e-02,  1.53434476e-02,   1.48726091e-02,  1.43390522e-02,  1.37385859e-02,  1.30869608e-02,   1.23714888e-02,  1.16157816e-02,  1.08031551e-02,  9.95338559e-03,   9.06038380e-03,  8.13075506e-03,  7.17142931e-03,  6.18889078e-03,   5.18916270e-03,  4.17053733e-03,  3.14021969e-03,  2.10981233e-03,   1.07899949e-03,  5.28023325e-05, -9.67203524e-04, -1.96413101e-03,  -2.94410802e-03, -3.90172392e-03, -4.82053157e-03, -5.71419162e-03,  -6.56386935e-03, -7.37169216e-03, -8.13238977e-03, -8.85235467e-03,  -9.51782126e-03, -1.01226222e-02, -1.06742940e-02, -1.11685564e-02,  -1.16083378e-02, -1.19833878e-02, -1.22997037e-02, -1.25567922e-02,  -1.27538030e-02, -1.28822159e-02, -1.29486276e-02, -1.29691419e-02,  -1.29309873e-02, -1.28356630e-02, -1.26899428e-02, -1.24927911e-02,  -1.22397377e-02, -1.19557890e-02, -1.16305094e-02, -1.12671143e-02  };
    DATA_1 imag_in[X] = {1.93467189e-06,  1.05702873e-03,  2.11098470e-03,  3.15713861e-03,   4.18003931e-03,  5.18814142e-03,  6.16233169e-03,  7.11991462e-03,   8.03320509e-03,  8.90956395e-03,  9.73883578e-03,  1.05220932e-02,   1.12567176e-02,  1.19372478e-02,  1.25571498e-02,  1.31195357e-02,   1.36213696e-02,  1.40585198e-02,  1.44340687e-02,  1.47340879e-02,   1.49786410e-02,  1.51461158e-02,  1.52551655e-02,  1.52921691e-02,   1.52691546e-02,  1.51779839e-02,  1.50281934e-02,  1.48167055e-02,   1.45517511e-02,  1.42309708e-02,  1.38559168e-02,  1.34308228e-02,   1.29656471e-02,  1.24575193e-02,  1.19148674e-02,  1.13370012e-02,   1.07284032e-02,  1.00950821e-02,  9.44620300e-03,  8.77484633e-03,   8.10091136e-03,  7.42220688e-03,  6.73629796e-03,  6.04705672e-03,   5.37140076e-03,  4.70424017e-03,  4.04655140e-03,  3.41521134e-03,   2.80009337e-03,  2.20272921e-03,  1.64405205e-03,  1.10971676e-03,   6.02985768e-04,  1.36746174e-04, -2.95999813e-04, -6.90813428e-04,  -1.05394865e-03, -1.36901150e-03, -1.65113421e-03, -1.89049442e-03,  -2.09068549e-03, -2.26123154e-03, -2.39136036e-03, -2.48451838e-03,  -2.54411819e-03, -2.57644094e-03, -2.57218981e-03, -2.54334526e-03,  -2.48928016e-03, -2.41809775e-03, -2.32411634e-03, -2.21168896e-03,  -2.09032608e-03, -1.96054261e-03, -1.82800298e-03, -1.68775787e-03,  -1.55551995e-03, -1.41610431e-03, -1.29361425e-03, -1.18030523e-03,  -1.07673999e-03, -9.98023960e-04, -9.38869557e-04, -8.91573355e-04,  -8.73867270e-04, -8.89087349e-04, -9.25505690e-04, -9.93325122e-04,  -1.09265162e-03, -1.22522302e-03, -1.39467219e-03, -1.58933417e-03,  -1.82473316e-03, -2.08855457e-03, -2.38227238e-03, -2.71214217e-03,  -3.06460446e-03, -3.45567144e-03, -3.86261773e-03, -4.30050114e-03,  -4.75564148e-03, -5.23063374e-03, -5.71769173e-03, -6.21927090e-03,  -6.73040773e-03, -7.24533156e-03, -7.76355648e-03, -8.28038866e-03,  -8.78422375e-03, -9.27814398e-03, -9.76029713e-03, -1.02251997e-02,  -1.06640918e-02, -1.10694673e-02, -1.14551751e-02, -1.17998519e-02,  -1.21110814e-02, -1.23783116e-02, -1.25941448e-02, -1.27626550e-02,  -1.28825232e-02, -1.29545304e-02, -1.29679028e-02, -1.29288837e-02,  -1.28188330e-02, -1.26559108e-02, -1.24357579e-02, -1.21513018e-02,  -1.18052991e-02, -1.13981905e-02, -1.09292198e-02, -1.04062406e-02,  -9.82730884e-03, -9.19201431e-03, -8.50247783e-03, -7.76160753e-03,  -6.97460141e-03, -6.14659634e-03, -5.27265723e-03, -4.36100699e-03,  -3.42706093e-03, -2.45624844e-03, -1.46789093e-03, -4.57048721e-04,   5.60906891e-04,  1.58998210e-03,  2.62508025e-03,  3.65666036e-03,   4.67999394e-03,  5.69595619e-03,  6.68784044e-03,  7.65923569e-03,   8.60177126e-03,  9.51173256e-03,  1.03859453e-02,  1.12152138e-02,   1.19988858e-02,  1.27409294e-02,  1.34242446e-02,  1.40447364e-02,   1.46163487e-02,  1.51167849e-02,  1.55558714e-02,  1.59278923e-02,   1.62312041e-02,  1.64625588e-02,  1.66276946e-02,  1.67187339e-02,   1.67464511e-02,  1.66984077e-02,  1.65814340e-02,  1.63980612e-02,   1.61473026e-02,  1.58337773e-02,  1.54612857e-02,  1.50286225e-02,   1.45390694e-02,  1.39976855e-02,  1.34056790e-02,  1.27701443e-02,   1.20943026e-02,  1.13783560e-02,  1.06394166e-02,  9.86728784e-03,   9.06889017e-03,  8.26019018e-03,  7.43035801e-03,  6.59434886e-03,   5.76371801e-03,  4.92211935e-03,  4.09303012e-03,  3.27098541e-03,   2.46369786e-03,  1.67164749e-03,  9.03278365e-04,  1.65552114e-04,  -5.47217532e-04, -1.22370192e-03, -1.87114532e-03, -2.47037546e-03  };


////////////////////////////////////////////////////////////////////////////////////////////

// Golden Reference start from here for different packets and resolution

	DATA_2 gold_ref[L] = {1.17367904e-06, 1.21175191e-06, 1.23046607e-06, 1.22630273e-06,  1.19804610e-06, 1.14727370e-06, 1.07808501e-06, 9.96160023e-07,  9.07550557e-07, 8.17654042e-07, 7.30624555e-07, 6.49227292e-07,  5.74993930e-07, 5.08511962e-07, 4.49727102e-07, 3.98197038e-07,  3.53278274e-07, 3.14251134e-07, 2.80396513e-07, 2.51038672e-07,  2.25565818e-07, 2.03437065e-07, 1.84181598e-07, 1.67393746e-07,  1.52726255e-07, 1.39883070e-07, 1.28612353e-07, 1.18700083e-07,  1.09964387e-07, 1.02250614e-07, 9.54271300e-08, 8.93817338e-08,  8.40186484e-08, 7.92559855e-08, 7.50236222e-08, 7.12614230e-08,  6.79177511e-08, 6.49482232e-08, 6.23146664e-08, 5.99842443e-08,  5.79287254e-08, 5.61238695e-08, 5.45489140e-08, 5.31861436e-08,  5.20205315e-08, 5.10394406e-08, 5.02323756e-08, 4.95907807e-08,  4.91078750e-08, 4.87785217e-08, 4.85991277e-08, 4.85675703e-08,  4.86831486e-08, 4.89465574e-08, 4.93598842e-08, 4.99266258e-08,  5.06517260e-08, 5.15416339e-08, 5.26043818e-08, 5.38496843e-08,  5.52890577e-08, 5.69359599e-08, 5.88059516e-08, 6.09168765e-08,  6.32890606e-08, 6.59455268e-08, 6.89122207e-08, 7.22182409e-08,  7.58960643e-08, 7.99817512e-08, 8.45151109e-08, 8.95398020e-08,  9.51033322e-08, 1.01256914e-07, 1.08055122e-07, 1.15555286e-07,  1.23816549e-07, 1.32898514e-07, 1.42859406e-07, 1.53753689e-07,  1.65629136e-07, 1.78523375e-07, 1.92460072e-07, 2.07444987e-07,  2.23462311e-07, 2.40471821e-07, 2.58407490e-07, 2.77178217e-07,  2.96671250e-07, 3.16758620e-07, 3.37306538e-07, 3.58187213e-07,  3.79292136e-07, 4.00545550e-07, 4.21916798e-07, 4.43430437e-07,  4.65173528e-07, 4.87300057e-07, 5.10033082e-07, 5.33665654e-07,  5.58561817e-07, 5.85159160e-07, 6.13974345e-07, 6.45613047e-07,  6.80785800e-07, 7.20331471e-07, 7.65250557e-07, 8.16751371e-07,  8.76313500e-07, 9.45775046e-07, 1.02745338e-06, 1.12431424e-06,  1.24021200e-06, 1.38023717e-06, 1.55122893e-06, 1.76254829e-06,  2.02727393e-06, 2.36410509e-06, 2.80048938e-06, 3.37795963e-06,  4.16164618e-06, 5.25813157e-06, 6.85112095e-06, 9.27839893e-06,  1.32148353e-05, 2.01669394e-05, 3.40678897e-05, 6.79823610e-05,  1.88705911e-04, 1.46700788e-03, 2.90783722e-03, 2.69358661e-04,  9.83528767e-05, 5.24744585e-05, 3.36557195e-05, 2.41161015e-05,  1.86344985e-05, 1.52245058e-05, 1.29957915e-05, 1.15022876e-05,  1.05029879e-05, 9.86197992e-06, 9.50275641e-06, 9.38640729e-06,  9.50177705e-06, 9.86293646e-06, 1.05128965e-05, 1.15353179e-05,  1.30801395e-05, 1.54182531e-05, 1.90651123e-05, 2.50905527e-05,  3.60200327e-05, 5.90940967e-05, 1.23006678e-04, 4.52630908e-04,  1.00000000e+00, 4.26478454e-04, 9.93458334e-05, 4.17368230e-05,  2.23325813e-05, 1.36586772e-05, 9.09993232e-06, 6.43700498e-06,  4.76085474e-06, 3.64531371e-06, 2.87001302e-06, 2.31216826e-06,  1.89921760e-06, 1.58618425e-06, 1.34406740e-06, 1.15353565e-06,  1.00133212e-06, 8.78139789e-07, 7.77268783e-07, 6.93823952e-07,  6.24162797e-07, 5.65533943e-07, 5.15830890e-07, 4.73421069e-07,  4.37025119e-07, 4.05630302e-07, 3.78427507e-07, 3.54764826e-07,  3.34112928e-07, 3.16038950e-07, 3.00186601e-07, 2.86260871e-07,  2.74016162e-07, 2.63247007e-07, 2.53780755e-07, 2.45471767e-07,  2.38196774e-07, 2.31851149e-07, 2.26345891e-07, 2.21605167e-07,  2.17564309e-07, 2.14168164e-07, 2.11369730e-07, 2.09129029e-07  };
   /* DATA_2 gold_ref[L] = {4.28749797e-07, 4.31565133e-07, 4.36713442e-07, 4.44266478e-07,
       4.54341542e-07, 4.67105056e-07, 4.82777935e-07, 5.01643043e-07,
       5.24055135e-07, 5.50453866e-07, 5.81380622e-07, 6.17500238e-07,
       6.59628999e-07, 7.08770871e-07, 7.66164554e-07, 8.33344993e-07,
       9.12224332e-07, 1.00519932e-06, 1.11529505e-06, 1.24635927e-06,
       1.40332774e-06, 1.59259079e-06, 1.82250604e-06, 2.10412527e-06,
       2.45224002e-06, 2.88691008e-06, 3.43573746e-06, 4.13731598e-06,
       5.04657822e-06, 6.24328559e-06, 7.84588031e-06, 1.00347931e-05,
       1.30930733e-05, 1.74801835e-05, 2.39726631e-05, 3.39482061e-05,
       5.00013018e-05, 7.74006264e-05, 1.27956855e-04, 2.32006021e-04,
       4.84866820e-04, 1.30589418e-03, 6.50221278e-03, 1.00000000e+00,
       8.13627234e-03, 2.66659618e-03, 1.53710851e-03, 1.13968625e-03,
       9.86185517e-04, 9.57289643e-04, 1.02629383e-03, 1.21380887e-03,
       1.60357002e-03, 2.44503132e-03, 4.64585377e-03, 1.36633430e-02,
       1.76783467e-01, 4.02488534e-02, 7.65042828e-03, 3.22009841e-03,
       1.85242029e-03, 1.27486554e-03, 9.96055405e-04, 8.64267405e-04,
       8.28341171e-04, 8.84448034e-04, 1.08139059e-03, 1.61803930e-03,
       3.55947131e-03, 2.68279731e-02, 1.30842757e-02, 1.50155854e-03,
       4.61999097e-04, 1.98629648e-04, 1.01471461e-04, 5.76903528e-05,
       3.53109065e-05, 2.28242814e-05, 1.53905040e-05, 1.07366757e-05,
       7.70330635e-06, 5.65939005e-06, 4.24317255e-06, 3.23815853e-06,
       2.51001773e-06, 1.97278767e-06, 1.56996698e-06, 1.26353806e-06,
       1.02738463e-06, 8.43231116e-07, 6.98074408e-07, 5.82522562e-07,
       4.89698475e-07, 4.14503074e-07, 3.53111890e-07, 3.02625846e-07,
       2.60825637e-07, 2.25996747e-07, 1.96803305e-07, 1.72196138e-07,
       1.51345067e-07, 1.33588574e-07, 1.18396038e-07, 1.05339173e-07,
       9.40702480e-08, 8.43053500e-08, 7.58114430e-08, 6.83962830e-08,
       6.19005152e-08, 5.61914424e-08, 5.11580829e-08, 4.67072288e-08,
       4.27602875e-08, 3.92507367e-08, 3.61220647e-08, 3.33260958e-08,
       3.08216223e-08, 2.85732832e-08, 2.65506406e-08, 2.47274168e-08,
       2.30808608e-08, 2.15912213e-08, 2.02413065e-08, 1.90161149e-08,
       1.79025249e-08, 1.68890335e-08, 1.59655343e-08, 1.51231306e-08,
       1.43539751e-08, 1.36511342e-08, 1.30084714e-08, 1.24205478e-08,
       1.18825365e-08, 1.13901492e-08, 1.09395727e-08, 1.05274141e-08,
       1.01506537e-08, 9.80660438e-09, 9.49287572e-09, 9.20734398e-09,
       8.94812542e-09, 8.71355361e-09, 8.50215987e-09, 8.31265647e-09,
       8.14392243e-09, 7.99499155e-09, 7.86504251e-09, 7.75339091e-09,
       7.65948305e-09, 7.58289147e-09, 7.52331211e-09, 7.48056315e-09,
       7.45458553e-09, 7.44544512e-09, 7.45333691e-09, 7.47859097e-09,
       7.52168079e-09, 7.58323399e-09, 7.66404582e-09, 7.76509596e-09,
       7.88756895e-09, 8.03287920e-09, 8.20270111e-09, 8.39900559e-09,
       8.62410401e-09, 8.88070151e-09, 9.17196128e-09, 9.50158279e-09,
       9.87389678e-09, 1.02939814e-08, 1.07678043e-08, 1.13023981e-08,
       1.19060765e-08, 1.25887039e-08, 1.33620311e-08, 1.42401174e-08,
       1.52398633e-08, 1.63816870e-08, 1.76903876e-08, 1.91962533e-08,
       2.09364924e-08, 2.29570883e-08, 2.53152167e-08, 2.80824035e-08,
       3.13486578e-08, 3.52278703e-08, 3.98648223e-08, 4.54441585e-08,
       5.22015561e-08, 6.04368842e-08, 7.05279739e-08, 8.29409061e-08,
       9.82269544e-08, 1.16985216e-07, 1.39751520e-07, 1.66752211e-07,
       1.97461332e-07, 2.29993218e-07, 2.60646668e-07, 2.84296934e-07};
/////////////////////////////////////////////////////////////////////////////////////////////
*/

	int error_num = 0;
    MATRIX_IN_T xn_input[X];
    DATA_2 xk_output[L];
	axis_in_stream xn_input_strm;
    axis_out_stream xk_output_strm;

    /*MATRIX_IN_T input_3[] = {MATRIX_IN_T(2.66364200e-02, -1.16216343e-06),
                            MATRIX_IN_T(2.65675100e-02, 1.93074489e-03),
                            MATRIX_IN_T(2.63434800e-02, 3.85391632e-03),
                            MATRIX_IN_T(2.59806100e-02, 5.75344611e-03),
                            MATRIX_IN_T(2.54775900e-02, 7.61696423e-03),
                            MATRIX_IN_T(2.48307500e-02, 9.43513794e-03),
                            MATRIX_IN_T(2.40492900e-02, 1.12016197e-02),
                            MATRIX_IN_T(2.31392300e-02, 1.28986847e-02),
                            MATRIX_IN_T(2.21062300e-02, 1.45161106e-02),
                            MATRIX_IN_T(2.09530700e-02, 1.60551784e-02),
                            MATRIX_IN_T(1.96868800e-02, 1.74985037e-02),
                            MATRIX_IN_T(1.83185000e-02, 1.88405659e-02),
                            MATRIX_IN_T(1.68584900e-02, 2.00691932e-02),
                            MATRIX_IN_T(1.53110400e-02, 2.11819963e-02),
                            MATRIX_IN_T(1.36892500e-02, 2.21711619e-02),
                            MATRIX_IN_T(1.19968900e-02, 2.30328570e-02),
                            MATRIX_IN_T(1.02503600e-02, 2.37661295e-02),
                            MATRIX_IN_T(8.45610000e-03, 2.43613590e-02),
                            MATRIX_IN_T(6.63409000e-03, 2.48108337e-02),
                            MATRIX_IN_T(4.78919000e-03, 2.51215108e-02),
                            MATRIX_IN_T(2.92418000e-03, 2.52934014e-02),
                            MATRIX_IN_T(1.06298000e-03, 2.53212535e-02),
                            MATRIX_IN_T(-7.85260000e-04, 2.52088158e-02),
                            MATRIX_IN_T(-2.61420000e-03, 2.49523915e-02),
                            MATRIX_IN_T(-4.41121000e-03, 2.45663969e-02),
                            MATRIX_IN_T(-6.16643000e-03, 2.40404493e-02),
                            MATRIX_IN_T(-7.86799000e-03, 2.33859111e-02),
                            MATRIX_IN_T(-9.50621000e-03, 2.26078248e-02),
                            MATRIX_IN_T(-1.10723600e-02, 2.17102333e-02),
                            MATRIX_IN_T(-1.25574100e-02, 2.06993864e-02),
                            MATRIX_IN_T(-1.39504000e-02, 1.95852135e-02),
                            MATRIX_IN_T(-1.52506400e-02, 1.83714968e-02),
                            MATRIX_IN_T(-1.64480800e-02, 1.70700506e-02),
                            MATRIX_IN_T(-1.75316200e-02, 1.56913582e-02),
                            MATRIX_IN_T(-1.84952400e-02, 1.42378742e-02),
                            MATRIX_IN_T(-1.93454500e-02, 1.27255381e-02),
                            MATRIX_IN_T(-2.00710600e-02, 1.11591258e-02),
                            MATRIX_IN_T(-2.06705900e-02, 9.55404542e-03),
                            MATRIX_IN_T(-2.11379400e-02, 7.92259632e-03),
                            MATRIX_IN_T(-2.14741100e-02, 6.26642173e-03),
                            MATRIX_IN_T(-2.16826800e-02, 4.60072694e-03),
                            MATRIX_IN_T(-2.17552000e-02, 2.93366057e-03),
                            MATRIX_IN_T(-2.16989700e-02, 1.28402153e-03),
                            MATRIX_IN_T(-2.15152100e-02, -3.47540589e-04),
                            MATRIX_IN_T(-2.12084800e-02, -1.94252755e-03),
                            MATRIX_IN_T(-2.07794100e-02, -3.50416541e-03),
                            MATRIX_IN_T(-2.02378400e-02, -5.00772230e-03),
                            MATRIX_IN_T(-1.95784200e-02, -6.44922706e-03),
                            MATRIX_IN_T(-1.88188100e-02, -7.83249803e-03),
                            MATRIX_IN_T(-1.79536400e-02, -9.13511143e-03),
                            MATRIX_IN_T(-1.70012800e-02, -1.03509026e-02),
                            MATRIX_IN_T(-1.59634500e-02, -1.14803186e-02),
                            MATRIX_IN_T(-1.48476800e-02, -1.25153721e-02),
                            MATRIX_IN_T(-1.36667500e-02, -1.34472357e-02),
                            MATRIX_IN_T(-1.24274200e-02, -1.42766218e-02),
                            MATRIX_IN_T(-1.11380000e-02, -1.49922650e-02),
                            MATRIX_IN_T(-9.80418000e-03, -1.55990980e-02),
                            MATRIX_IN_T(-8.44100000e-03, -1.60920148e-02),
                            MATRIX_IN_T(-7.05824000e-03, -1.64681148e-02),
                            MATRIX_IN_T(-5.66443000e-03, -1.67275454e-02),
                            MATRIX_IN_T(-4.26607000e-03, -1.68728198e-02),
                            MATRIX_IN_T(-2.87678000e-03, -1.69025886e-02),
                            MATRIX_IN_T(-1.50474000e-03, -1.68198605e-02),
                            MATRIX_IN_T(-1.56220000e-04, -1.66299820e-02),
                            MATRIX_IN_T(1.15567000e-03, -1.63250540e-02),
                            MATRIX_IN_T(2.42581000e-03, -1.59252518e-02),
                            MATRIX_IN_T(3.63938000e-03, -1.54229526e-02),
                            MATRIX_IN_T(4.79916000e-03, -1.48300442e-02),
                            MATRIX_IN_T(5.89873000e-03, -1.41494032e-02),
                            MATRIX_IN_T(6.91662000e-03, -1.33899309e-02),
                            MATRIX_IN_T(7.85530000e-03, -1.25603677e-02),
                            MATRIX_IN_T(8.71605000e-03, -1.16604444e-02),
                            MATRIX_IN_T(9.48754000e-03, -1.07017234e-02),
                            MATRIX_IN_T(1.01665500e-02, -9.69177020e-03),
                            MATRIX_IN_T(1.07494500e-02, -8.64305707e-03),
                            MATRIX_IN_T(1.12392900e-02, -7.56151268e-03),
                            MATRIX_IN_T(1.16249200e-02, -6.45355678e-03),
                            MATRIX_IN_T(1.19133500e-02, -5.33200697e-03),
                            MATRIX_IN_T(1.21030400e-02, -4.19887245e-03),
                            MATRIX_IN_T(1.21851800e-02, -3.07050813e-03),
                            MATRIX_IN_T(1.21746600e-02, -1.95172447e-03),
                            MATRIX_IN_T(1.20706000e-02, -8.51659629e-04),
                            MATRIX_IN_T(1.18703500e-02, 2.24660321e-04),
                            MATRIX_IN_T(1.15776800e-02, 1.26369063e-03),
                            MATRIX_IN_T(1.11972600e-02, 2.26253703e-03),
                            MATRIX_IN_T(1.07394900e-02, 3.21379163e-03),
                            MATRIX_IN_T(1.02051200e-02, 4.10884039e-03),
                            MATRIX_IN_T(9.59528000e-03, 4.94095107e-03),
                            MATRIX_IN_T(8.92580000e-03, 5.71023911e-03),
                            MATRIX_IN_T(8.19392000e-03, 6.40879460e-03),
                            MATRIX_IN_T(7.41042000e-03, 7.02724857e-03),
                            MATRIX_IN_T(6.58393000e-03, 7.57162352e-03),
                            MATRIX_IN_T(5.72357000e-03, 8.02795555e-03),
                            MATRIX_IN_T(4.83040000e-03, 8.40308369e-03),
                            MATRIX_IN_T(3.91805000e-03, 8.69378492e-03),
                            MATRIX_IN_T(2.98818000e-03, 8.89206030e-03),
                            MATRIX_IN_T(2.05976000e-03, 9.00563447e-03),
                            MATRIX_IN_T(1.12728000e-03, 9.03071374e-03),
                            MATRIX_IN_T(2.09290000e-04, 8.96889878e-03),
                            MATRIX_IN_T(-6.94880000e-04, 8.82723736e-03),
                            MATRIX_IN_T(-1.57451000e-03, 8.60403949e-03),
                            MATRIX_IN_T(-2.41883000e-03, 8.29973047e-03),
                            MATRIX_IN_T(-3.22737000e-03, 7.91872388e-03),
                            MATRIX_IN_T(-3.99066000e-03, 7.46779240e-03),
                            MATRIX_IN_T(-4.70363000e-03, 6.95463739e-03),
                            MATRIX_IN_T(-5.36001000e-03, 6.37540196e-03),
                            MATRIX_IN_T(-5.95148000e-03, 5.74445542e-03),
                            MATRIX_IN_T(-6.48005000e-03, 5.06278378e-03),
                            MATRIX_IN_T(-6.93768000e-03, 4.33800411e-03),
                            MATRIX_IN_T(-7.32695000e-03, 3.57843938e-03),
                            MATRIX_IN_T(-7.63794000e-03, 2.78893961e-03),
                            MATRIX_IN_T(-7.87249000e-03, 1.97628143e-03),
                            MATRIX_IN_T(-8.02667000e-03, 1.14925645e-03),
                            MATRIX_IN_T(-8.10227000e-03, 3.13257249e-04),
                            MATRIX_IN_T(-8.09717000e-03, -5.23126503e-04),
                            MATRIX_IN_T(-8.01729000e-03, -1.34806671e-03),
                            MATRIX_IN_T(-7.85424000e-03, -2.16108450e-03),
                            MATRIX_IN_T(-7.61890000e-03, -2.96027730e-03),
                            MATRIX_IN_T(-7.31275000e-03, -3.72066606e-03),
                            MATRIX_IN_T(-6.93353000e-03, -4.45661331e-03),
                            MATRIX_IN_T(-6.48900000e-03, -5.14580359e-03),
                            MATRIX_IN_T(-5.97722000e-03, -5.79226903e-03),
                            MATRIX_IN_T(-5.41060000e-03, -6.39094629e-03),
                            MATRIX_IN_T(-4.79227000e-03, -6.92657991e-03),
                            MATRIX_IN_T(-4.12704000e-03, -7.40087649e-03),
                            MATRIX_IN_T(-3.41813000e-03, -7.81620715e-03),
                            MATRIX_IN_T(-2.67253000e-03, -8.16539871e-03),
                            MATRIX_IN_T(-1.90321000e-03, -8.43667834e-03),
                            MATRIX_IN_T(-1.10685000e-03, -8.63976113e-03),
                            MATRIX_IN_T(-2.99740000e-04, -8.76750365e-03),
                            MATRIX_IN_T(5.21590000e-04, -8.81873548e-03),
                            MATRIX_IN_T(1.33786000e-03, -8.79417811e-03),
                            MATRIX_IN_T(2.15880000e-03, -8.69301220e-03),
                            MATRIX_IN_T(2.95964000e-03, -8.52346528e-03),
                            MATRIX_IN_T(3.74669000e-03, -8.27514292e-03),
                            MATRIX_IN_T(4.50651000e-03, -7.95446071e-03),
                            MATRIX_IN_T(5.23536000e-03, -7.56921620e-03),
                            MATRIX_IN_T(5.92577000e-03, -7.11731922e-03),
                            MATRIX_IN_T(6.57307000e-03, -6.60412123e-03),
                            MATRIX_IN_T(7.17098000e-03, -6.03084135e-03),
                            MATRIX_IN_T(7.71792000e-03, -5.40400969e-03),
                            MATRIX_IN_T(8.20344000e-03, -4.73665061e-03),
                            MATRIX_IN_T(8.63127000e-03, -4.01888767e-03),
                            MATRIX_IN_T(8.98905000e-03, -3.27227161e-03),
                            MATRIX_IN_T(9.27682000e-03, -2.49198546e-03),
                            MATRIX_IN_T(9.49473000e-03, -1.68531462e-03),
                            MATRIX_IN_T(9.64156000e-03, -8.68272564e-04),
                            MATRIX_IN_T(9.71594000e-03, -3.34504909e-05),
                            MATRIX_IN_T(9.71241000e-03, 7.98986823e-04),
                            MATRIX_IN_T(9.63428000e-03, 1.63249978e-03),
                            MATRIX_IN_T(9.48090000e-03, 2.45062546e-03),
                            MATRIX_IN_T(9.26008000e-03, 3.26457979e-03),
                            MATRIX_IN_T(8.96399000e-03, 4.04304959e-03),
                            MATRIX_IN_T(8.59849000e-03, 4.79753560e-03),
                            MATRIX_IN_T(8.16637000e-03, 5.51816879e-03),
                            MATRIX_IN_T(7.67277000e-03, 6.19370083e-03),
                            MATRIX_IN_T(7.12227000e-03, 6.82356951e-03),
                            MATRIX_IN_T(6.51573000e-03, 7.40441049e-03),
                            MATRIX_IN_T(5.86032000e-03, 7.92726877e-03),
                            MATRIX_IN_T(5.16286000e-03, 8.39005664e-03),
                            MATRIX_IN_T(4.42763000e-03, 8.78806145e-03),
                            MATRIX_IN_T(3.65658000e-03, 9.12167156e-03),
                            MATRIX_IN_T(2.86058000e-03, 9.37725563e-03),
                            MATRIX_IN_T(2.04659000e-03, 9.57002369e-03),
                            MATRIX_IN_T(1.21724000e-03, 9.68143102e-03),
                            MATRIX_IN_T(3.81210000e-04, 9.72280402e-03),
                            MATRIX_IN_T(-4.54850000e-04, 9.68951603e-03),
                            MATRIX_IN_T(-1.28031000e-03, 9.57991444e-03),
                            MATRIX_IN_T(-2.09127000e-03, 9.39490977e-03),
                            MATRIX_IN_T(-2.88580000e-03, 9.14069474e-03),
                            MATRIX_IN_T(-3.65160000e-03, 8.81590729e-03),
                            MATRIX_IN_T(-4.38128000e-03, 8.42396488e-03),
                            MATRIX_IN_T(-5.07431000e-03, 7.97065921e-03),
                            MATRIX_IN_T(-5.72164000e-03, 7.45192782e-03),
                            MATRIX_IN_T(-6.32522000e-03, 6.87946130e-03),
                            MATRIX_IN_T(-6.86637000e-03, 6.25668897e-03),
                            MATRIX_IN_T(-7.35162000e-03, 5.58746699e-03),
                            MATRIX_IN_T(-7.77174000e-03, 4.87047830e-03),
                            MATRIX_IN_T(-8.12363000e-03, 4.12891697e-03),
                            MATRIX_IN_T(-8.40779000e-03, 3.35688723e-03),
                            MATRIX_IN_T(-8.61989000e-03, 2.56240263e-03),
                            MATRIX_IN_T(-8.75415000e-03, 1.75299837e-03),
                            MATRIX_IN_T(-8.81961000e-03, 9.32531119e-04),
                            MATRIX_IN_T(-8.80512000e-03, 1.14642214e-04),
                            MATRIX_IN_T(-8.71432000e-03, -7.03132841e-04),
                            MATRIX_IN_T(-8.54912000e-03, -1.50780008e-03),
                            MATRIX_IN_T(-8.30922000e-03, -2.29057229e-03),
                            MATRIX_IN_T(-8.00190000e-03, -3.04958728e-03),
                            MATRIX_IN_T(-7.61970000e-03, -3.77769721e-03),
                            MATRIX_IN_T(-7.17465000e-03, -4.46442452e-03),
                            MATRIX_IN_T(-6.66526000e-03, -5.10771292e-03),
                            MATRIX_IN_T(-6.09681000e-03, -5.70544049e-03),
                            MATRIX_IN_T(-5.47653000e-03, -6.23873884e-03),
                            MATRIX_IN_T(-4.80759000e-03, -6.71721193e-03),
                            MATRIX_IN_T(-4.09642000e-03, -7.12857416e-03),
                            MATRIX_IN_T(-3.34171000e-03, -7.47523457e-03),
                            MATRIX_IN_T(-2.56274000e-03, -7.75083221e-03),
                            MATRIX_IN_T(-1.75796000e-03, -7.94419469e-03),
                            MATRIX_IN_T(-9.35810000e-04, -8.06698218e-03),
                            MATRIX_IN_T(-1.02890000e-04, -8.10908618e-03)};*/

    axis_in_t local_write;
    for (int i = 0; i < X; i++) {
        xn_input[i] = MATRIX_IN_T(real_in[i], imag_in[i]);
        local_write.data = xn_input[i];
        local_write.last = (i == (X - 1)) ? 1 : 0;
        xn_input_strm.write(local_write);
    }
    

    MUSIC_top_2_opt(xn_input_strm, xk_output_strm);

    axis_out_t local_read;
    for (int i = 0; i < L; i++) {
        local_read = xk_output_strm.read();
        xk_output[i] = local_read.data;
        cout << xk_output[i] << std::endl;
    }

    printf("%d\n", gold_ref[L-42]);
    printf("%d\n", 10*hls::log10(gold_ref[L-42]));



    // This code block compare two spectrums and match peaks in them.

//////////////////////////////////////////////////////////////////////////////////////

    int peaksPS[T];
    int peaksPL[T];
    DATA_2 temp1[L];
    DATA_2 temp2[L];
    for (int i=0; i< L; i++){
    	temp1[i] = 10*hls::log10(gold_ref[L-i-1]);
    	temp2[i] = 10*hls::log10(xk_output[i]);
    }

    // Find and print local maxima
    findLocalMaxima(temp1, peaksPS);
    findLocalMaxima(temp2, peaksPL);
    cout << "Peaks in PS are at index: " << peaksPS[0] << " and " << peaksPS[1] << endl;
    cout << "Peaks in PL are at index: " << peaksPL[0] << " and " << peaksPL[1]<<endl;
    //printf("%f %f %f %f %f %f\n", temp1[42] , temp1[43], temp1[44], temp1[178], temp1[179], temp1[180]);

    float er1 = 0;
    for (int i=0; i < L; i++){
    	float er2 = gold_ref[L-i-1] - xk_output[i];
    	er1 = er1 + (er2*er2);
    }
    cout<<"RMSE"<<sqrt(er1/200)<<endl;
    return 0;
}
