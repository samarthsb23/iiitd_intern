
#  Radar Signal Processing on Zynq SoCs for Doppler Estimation

A research internship project at IIIT Delhi focused on accelerating classical and deep-learning-based Doppler estimation techniques on Zynq FPGA platforms (PYNQ-Z2 and ZCU111) using Vivado HLS, PYNQ, and PyTorch.

---

## Objective

To explore latency–resource trade-offs in real-time radar pipelines by implementing algorithms like MUSIC, ESPRIT, and SubspaceNet using both hardware-accelerated (HLS, Verilog) and software-based (Python, PyTorch) approaches.

---

##  Repo Layout

```bash
.
├── SubspaceNet/             # DNN-based DoA estimation
│   ├── src/                 # PyTorch model & utils
│   ├── data/                # Snapshot inputs, test signals
│   └── main.py              # Entry point for DNN inference
│
├── MUSIC_ZCU111/           # All MUSIC experiments and data for ZCU111 board
│   ├── Matrix_Mul_Tut_100_111/
│   ├── Matrix_2024_2805/
│   ├── pynq_impl/          # Synthesized bitstreams and implementation
│   └── Training/           # Matrix-related designs & slides
│
├── pynq_drivers/           # Jupyter + Python drivers to test IPs on board
│   ├── matrix.bit/.hwh     # HLS bitstream for matrix mult
│   ├── FFT_reconf_2_DMA.ipynb
│   ├── opt_driver.ipynb    # Optimized PYNQ pipeline
│   └── driver_unopt.ipynb  # Baseline unoptimized test
│
├── Week 1/..Week 8/        # Weekly logs, tests, and PPTs
│   └── Contains individual experiments, design snapshots, and weekly reports
│
├── training/               # Older training tasks, FFT, matrix experiments
└── README.md               # You’re here!!
```
---

## Tools and Platofrms

1. Xilinx Vivado & Vitis HLS 2024.2

2. ZCU111 & PYNQ-Z2 boards (Zynq SoCs)

3. PyTorch (SubspaceNet inference)

4. PYNQ Framework (AXI4, DMA, Overlay handling)

5. Xilinx ILA for debugging AXI interfaces

---

## Core Contribitions

✅ Developed optimized HLS IPs for:

    Matrix multiplication

    MUSIC and ESPRIT Doppler estimation

    Reconfigurable FFT

    SVD, PINV, and QRF kernels

✅ Implemented SubspaceNet (deep learning–based DoA estimation) and adapted it for Doppler Estimation  
✅ Implemented custom SVD using Golub-Kahan bidiagonalization for complex floats  
✅ Benchmarked float vs double vs fixed-point across Zynq devices  
✅ Created PYNQ drivers in Python and Jupyter for on-board testing  
✅ Integrated AXI-Stream IPs into Vivado block design flow  
✅ Debugged designs using ILA and resource reports  
✅ Documented weekly progress with detailed PPTs  

---

## Running the code 

```bash
cd SubspaceNet
python3 main.py --input data/sample_snapshot.npy

```

### Deploy IP on Pynq-based boards

1. Copy .bit and .hwh to /home/xilinx/ on PYNQ board  

2. Run Jupyter notebooks in pynq_drivers/ to test functionality

---

## Benchmarks 

| Component       | Platform | Speedup (vs NumPy) | Notes                                 |
| --------------- | -------- | ------------------ | ------------------------------------- |
| Matrix Multiply | ZCU111   | 4x                 | Float32 vs NumPy baseline             |
| MUSIC IP        | ZCU111   | 25x                | Doppler estimation w/ resource tuning |
| ESPRIT IP       | ZCU111   | 30x                | Doppler estimation w/ resource tuning |
| SubspaceNet DNN | PYNQ-Z2  | 20x                | Inference-only, trained offline       |

---

## Internship Info

Title: Research Intern, Algorithms to Architecture (A2A) Lab, IIIT Delhi   
Mentor: Prof. Sumit J. Darak (Dept. of ECE)   
Duration: March 2025 – Ongoing   
Mode: Hybrid (Remote during IITK semester, On-site in May-July)   

## Contact 

Samarth Sharma Bhardwaj   
B.Tech Electrical Engineering, IIT Kanpur   
📧 samarthsb23@iitk.ac.in   
🔗 GitHub (/samarthsb23)   

---
This repo is messy because real hardware research isn’t clean and perfect. If you’re looking for organized results, check SubspaceNet/, pynq_drivers/, and MUSIC_ZCU111/.


---

## Resume Extract

**• Radar Signal Processing on Zynq SoCs for Doppler Estimation (Mar’25- ONGOING)**
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


Note:
The internship was on-site, where I worked in the Algorithms to Architecture (A2A) lab, guided by Aakanksha Tewari and Prof. Darak. The initial weeks, while I was in college, were remote where I underwent training to understand the Vivado workflow and how HLS works. 
