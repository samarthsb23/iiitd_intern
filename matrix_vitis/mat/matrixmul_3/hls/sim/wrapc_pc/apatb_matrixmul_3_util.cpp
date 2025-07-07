#include <iostream>
#include "hls_stream.h"
#include "hls_directio.h"

using namespace std;

struct __cosim_T_8__ {char data[8];};
extern "C" void fpga_fifo_push_8(__cosim_T_8__* val, hls::stream<__cosim_T_8__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_8(__cosim_T_8__* val, hls::stream<__cosim_T_8__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_8(hls::stream<__cosim_T_8__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_8(hls::stream<__cosim_T_8__>* fifo) {
  return fifo->exist();
}
extern "C" bool fpga_direct_valid_8(hls::directio<__cosim_T_8__, 0>* direct) {
  return direct->valid();
}
extern "C" void fpga_direct_load_8(__cosim_T_8__* val, hls::directio<__cosim_T_8__, 0>* direct) {
  *val = direct->read();
}
extern "C" void fpga_direct_store_8(__cosim_T_8__* val, hls::directio<__cosim_T_8__, 0>* direct) {
  direct->write(*val);
}
