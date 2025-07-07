**• FPGA-Based Radar Signal Processing on Zynq SoC (Mar’25- July'25)**
Research Intern, Algorithms to Architecture (A2A) lab, IIIT Delhi (Prof. Sumit J. Darak, Dept of ECE, IIITD)

Objective: To accelerate and compare classical and deep-learning-aided doppler estimation algorithms to evaluate latency–resource trade-offs in real-time radar systems on FPGAs of Zynq-SoCs (Pynq-Z2 and ZCU111).

Approach: • Developed custom HLS IPs and integrated PYNQ drivers via Vivado block design using AXI4 interfaces.
• Implemented MUSIC and ESPRIT as Vitis HLS IPs with resource optimizations like word-length tuning.
• Benchmarked HLS design pragmas like pipeline, unroll, and array partitioning using synthesis reports.
• Compared performance of single, double-precision float and fixed data types for Doppler-separated targets.
• Integrated deep neural networks (DNNs) to boost accuracy under coherent sources and array miscalibration.
• Used Integrated Logic Analyzers to debug AXI transactions and verify dataflow correctness on hardware

Impact: • Achieved up to 4x acceleration over NumPy in FPGA-accelerated matrix multiplication on ZCU111.
• Created a 4-part YouTube tutorial series on HLS-to-PYNQ design flow and benchmarking on Vitis 2024.2.
• Attained a 30x acceleration over NumPy for reliable Doppler estimation using MUSIC and ESPRIT

DESCRIPTION-

– Designed and implemented high-performance FPGA architectures for radar signal processing using Xilinx Vivado
HLS & Verilog RTL.
– Accelerated signal processing algorithms by translating C-based models into hardware-optimized Verilog using HLS-based
DSP pipelines.
– Integrated HLS-generated modules with ARM-based embedded processing on Xilinx Zynq SoC, leveraging AXI
interfaces for efficient data transfer.
– Optimized resource utilization, power consumption and latency for real-time radar applications.
– Developed Python-based driver software to test and verify hardware performance


Note:
The internship was on-site, where I worked in the lab, guided by Aakanksha Tewari and Prof. Darak. The initial weeks, while I was in college, were remote where I underwent training to understand the Vivado workflow and how HLS works. 
