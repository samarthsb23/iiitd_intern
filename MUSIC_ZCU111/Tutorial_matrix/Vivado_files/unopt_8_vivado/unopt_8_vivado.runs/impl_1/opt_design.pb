
=
Command: %s
53*	vivadotcl2

opt_designZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
Implementation2

xczu28drZ17-347h px� 
p
0Got license for feature '%s' and/or device '%s'
310*common2
Implementation2

xczu28drZ17-349h px� 
�
�The version limit for your license is '%s' and has expired for new software. A version limit expiration means that, although you may be able to continue to use the current version of tools or IP with this license, you will not be eligible for new releases.
719*common2	
2025.01Z17-1540h px� 
\
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_designZ4-22h px� 
@

Starting %s Task
103*constraints2
DRCZ18-103h px� 
>
Running DRC with %s threads
24*drc2
2Z23-27h px� 
C
DRC finished with %s
272*project2

0 ErrorsZ1-461h px� 
d
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 2723.105 ; gain = 0.000h px� 
U

Starting %s Task
103*constraints2
Cache Timing InformationZ18-103h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
V
%s*common2=
;Ending Cache Timing Information Task | Checksum: 1456c09e1
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 2723.105 ; gain = 0.000h px� 
O

Starting %s Task
103*constraints2
Logic OptimizationZ18-103h px� 
K

Phase %s%s
101*constraints2
1 2
InitializationZ18-101h px� 
_

Phase %s%s
101*constraints2
1.1 2"
 Core Generation And Design SetupZ18-101h px� 
d

Phase %s%s
101*constraints2
1.1.1 2%
#Generate And Synthesize Debug CoresZ18-101h px� 
Y
)Generating Script for core instance : %s 214*	chipscope2	
dbg_hubZ16-329h px� 
g
Generating IP %s for %s.
1712*coregen2
xilinx.com:ip:xsdbm:3.02

dbg_hub_CVZ19-3806h px� 
�
;Using cached IP synthesis design for IP %s, cache-ID = %s.
286*	chipscope2
xilinx.com:ip:xsdbm:3.02
4abc8534cc79c802Z16-469h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2*
(Done building netlist checker database: 2

00:00:002
00:00:00.0232

3144.8162
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0372

3144.8162
0.000Z17-268h px� 
a
%s*common2H
FPhase 1.1.1 Generate And Synthesize Debug Cores | Checksum: 1b5e0d25d
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:05 ; elapsed = 00:00:23 . Memory (MB): peak = 3144.816 ; gain = 20.039h px� 
\
%s*common2C
APhase 1.1 Core Generation And Design Setup | Checksum: 1b5e0d25d
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:05 ; elapsed = 00:00:23 . Memory (MB): peak = 3144.816 ; gain = 20.039h px� 
a

Phase %s%s
101*constraints2
1.2 2$
"Setup Constraints And Sort NetlistZ18-101h px� 
^
%s*common2E
CPhase 1.2 Setup Constraints And Sort Netlist | Checksum: 1b5e0d25d
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:05 ; elapsed = 00:00:23 . Memory (MB): peak = 3144.816 ; gain = 20.039h px� 
H
%s*common2/
-Phase 1 Initialization | Checksum: 1b5e0d25d
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:05 ; elapsed = 00:00:23 . Memory (MB): peak = 3144.816 ; gain = 20.039h px� 
d

Phase %s%s
101*constraints2
2 2)
'Timer Update And Timing Data CollectionZ18-101h px� 
K

Phase %s%s
101*constraints2
2.1 2
Timer UpdateZ18-101h px� 
H
%s*common2/
-Phase 2.1 Timer Update | Checksum: 1b5e0d25d
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:06 ; elapsed = 00:00:24 . Memory (MB): peak = 3144.816 ; gain = 20.039h px� 
U

Phase %s%s
101*constraints2
2.2 2
Timing Data CollectionZ18-101h px� 
R
%s*common29
7Phase 2.2 Timing Data Collection | Checksum: 1b5e0d25d
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:06 ; elapsed = 00:00:24 . Memory (MB): peak = 3144.816 ; gain = 20.039h px� 
a
%s*common2H
FPhase 2 Timer Update And Timing Data Collection | Checksum: 1b5e0d25d
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:06 ; elapsed = 00:00:24 . Memory (MB): peak = 3144.816 ; gain = 20.039h px� 
E

Phase %s%s
101*constraints2
3 2

RetargetZ18-101h px� 
V
1Number of loadless carry chains removed were: %s
839*opt2
0Z31-1851h px� 
�
XTotal Chains To Be Transformed Were: %s AND Number of Transformed insts Created are: %s
832*opt2
02
0Z31-1834h px� 
d
9Pulled %s inverters resulting in an inversion of %s pins
779*opt2
92
70Z31-1566h px� 
V
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
1182
1337Z31-138h px� 
�
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2�
�design_1_i/system_ila_0/inst/ila_lib/inst/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram2
INDEPENDENT2
COMMON2
BRAMZ31-422h px� 
�
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2�
�design_1_i/system_ila_0/inst/ila_lib/inst/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[10].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram2
INDEPENDENT2
COMMON2
BRAMZ31-422h px� 
�
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2�
�design_1_i/system_ila_0/inst/ila_lib/inst/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[11].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram2
INDEPENDENT2
COMMON2
BRAMZ31-422h px� 
�
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2�
�design_1_i/system_ila_0/inst/ila_lib/inst/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram2
INDEPENDENT2
COMMON2
BRAMZ31-422h px� 
�
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2�
�design_1_i/system_ila_0/inst/ila_lib/inst/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram2
INDEPENDENT2
COMMON2
BRAMZ31-422h px� 
�
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2�
�design_1_i/system_ila_0/inst/ila_lib/inst/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram2
INDEPENDENT2
COMMON2
BRAMZ31-422h px� 
�
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2�
�design_1_i/system_ila_0/inst/ila_lib/inst/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[4].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram2
INDEPENDENT2
COMMON2
BRAMZ31-422h px� 
�
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2�
�design_1_i/system_ila_0/inst/ila_lib/inst/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[5].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram2
INDEPENDENT2
COMMON2
BRAMZ31-422h px� 
�
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2�
�design_1_i/system_ila_0/inst/ila_lib/inst/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[6].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram2
INDEPENDENT2
COMMON2
BRAMZ31-422h px� 
�
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2�
�design_1_i/system_ila_0/inst/ila_lib/inst/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[7].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram2
INDEPENDENT2
COMMON2
BRAMZ31-422h px� 
�
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2�
�design_1_i/system_ila_0/inst/ila_lib/inst/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram2
INDEPENDENT2
COMMON2
BRAMZ31-422h px� 
�
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2�
�design_1_i/system_ila_0/inst/ila_lib/inst/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[9].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram2
INDEPENDENT2
COMMON2
BRAMZ31-422h px� 
9
Retargeted %s cell(s).
49*opt2
0Z31-49h px� 
A
%s*common2(
&Phase 3 Retarget | Checksum: f57cd2ed
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:06 ; elapsed = 00:00:24 . Memory (MB): peak = 3144.816 ; gain = 20.039h px� 
3
Retarget | Checksum: f57cd2ed
*commonh px� 
f
.Phase %s created %s cells and removed %s cells267*opt2

Retarget2
662
504Z31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2

Retarget2
185Z31-1021h px� 
Q

Phase %s%s
101*constraints2
4 2
Constant propagationZ18-101h px� 
R
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
12
22Z31-138h px� 
N
%s*common25
3Phase 4 Constant propagation | Checksum: 12cd94f3d
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:06 ; elapsed = 00:00:25 . Memory (MB): peak = 3144.816 ; gain = 20.039h px� 
@
+Constant propagation | Checksum: 12cd94f3d
*commonh px� 
r
.Phase %s created %s cells and removed %s cells267*opt2
Constant propagation2
222
308Z31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Constant propagation2
169Z31-1021h px� 
B

Phase %s%s
101*constraints2
5 2
SweepZ18-101h px� 
b
2Building netlist checker database with flags, 0x%s23991*constraints2
8Z18-11670h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2*
(Done building netlist checker database: 2

00:00:002
00:00:00.0182

3144.8162
0.000Z17-268h px� 
b
2Building netlist checker database with flags, 0x%s23991*constraints2
8Z18-11670h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2*
(Done building netlist checker database: 2

00:00:002
00:00:00.0182

3144.8162
0.000Z17-268h px� 
>
%s*common2%
#Phase 5 Sweep | Checksum: a5dc32fd
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:08 ; elapsed = 00:00:26 . Memory (MB): peak = 3144.816 ; gain = 20.039h px� 
0
Sweep | Checksum: a5dc32fd
*commonh px� 
b
.Phase %s created %s cells and removed %s cells267*opt2
Sweep2
02
234Z31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Sweep2
1797Z31-1021h px� 
N

Phase %s%s
101*constraints2
6 2
BUFG optimizationZ18-101h px� 
u
PPhase BUFG optimization inserted %s global clock buffer(s) for CLOCK_LOW_FANOUT.553*opt2
0Z31-1077h px� 
J
%s*common21
/Phase 6 BUFG optimization | Checksum: a5dc32fd
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:08 ; elapsed = 00:00:26 . Memory (MB): peak = 3144.816 ; gain = 20.039h px� 
<
'BUFG optimization | Checksum: a5dc32fd
*commonh px� 
�
EPhase %s created %s cells of which %s are BUFGs and removed %s cells.395*opt2
BUFG optimization2
02
02
0Z31-662h px� 
X

Phase %s%s
101*constraints2
7 2
Shift Register OptimizationZ18-101h px� 
�
dSRL Remap converted %s SRLs to %s registers and converted %s registers of register chains to %s SRLs546*opt2
02
02
02
0Z31-1064h px� 
T
%s*common2;
9Phase 7 Shift Register Optimization | Checksum: a5dc32fd
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:08 ; elapsed = 00:00:26 . Memory (MB): peak = 3144.816 ; gain = 20.039h px� 
F
1Shift Register Optimization | Checksum: a5dc32fd
*commonh px� 
v
.Phase %s created %s cells and removed %s cells267*opt2
Shift Register Optimization2
02
0Z31-389h px� 
T

Phase %s%s
101*constraints2
8 2
Post Processing NetlistZ18-101h px� 
P
%s*common27
5Phase 8 Post Processing Netlist | Checksum: a5dc32fd
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:08 ; elapsed = 00:00:26 . Memory (MB): peak = 3144.816 ; gain = 20.039h px� 
B
-Post Processing Netlist | Checksum: a5dc32fd
*commonh px� 
r
.Phase %s created %s cells and removed %s cells267*opt2
Post Processing Netlist2
02
0Z31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Post Processing Netlist2
192Z31-1021h px� 
I

Phase %s%s
101*constraints2
9 2
FinalizationZ18-101h px� 
j

Phase %s%s
101*constraints2
9.1 2-
+Finalizing Design Cores and Updating ShapesZ18-101h px� 
f
%s*common2M
KPhase 9.1 Finalizing Design Cores and Updating Shapes | Checksum: a9c4e4d0
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:09 ; elapsed = 00:00:27 . Memory (MB): peak = 3144.816 ; gain = 20.039h px� 
]

Phase %s%s
101*constraints2
9.2 2 
Verifying Netlist ConnectivityZ18-101h px� 
O

Starting %s Task
103*constraints2
Connectivity CheckZ18-103h px� 
�

%s
*constraints2a
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.055 . Memory (MB): peak = 3144.816 ; gain = 0.000h px� 
Y
%s*common2@
>Phase 9.2 Verifying Netlist Connectivity | Checksum: a9c4e4d0
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:09 ; elapsed = 00:00:27 . Memory (MB): peak = 3144.816 ; gain = 20.039h px� 
E
%s*common2,
*Phase 9 Finalization | Checksum: a9c4e4d0
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:09 ; elapsed = 00:00:27 . Memory (MB): peak = 3144.816 ; gain = 20.039h px� 
/
Opt_design Change Summary
*commonh px� 
/
=========================
*commonh px� 


*commonh px� 


*commonh px� 
�
z-------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Phase                        |  #Cells created  |  #Cells Removed  |  #Constrained objects preventing optimizations  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Retarget                     |              66  |             504  |                                            185  |
|  Constant propagation         |              22  |             308  |                                            169  |
|  Sweep                        |               0  |             234  |                                           1797  |
|  BUFG optimization            |               0  |               0  |                                              0  |
|  Shift Register Optimization  |               0  |               0  |                                              0  |
|  Post Processing Netlist      |               0  |               0  |                                            192  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
O
%s*common26
4Ending Logic Optimization Task | Checksum: a9c4e4d0
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:09 ; elapsed = 00:00:27 . Memory (MB): peak = 3144.816 ; gain = 20.039h px� 
O

Starting %s Task
103*constraints2
Power OptimizationZ18-103h px� 
a
7Will skip clock gating for clocks with period < %s ns.
114*pwropt2
2.00Z34-132h px� 
=
Applying IDT optimizations ...
9*pwroptZ34-9h px� 
?
Applying ODC optimizations ...
10*pwroptZ34-10h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 


*pwropth px� 
S

Starting %s Task
103*constraints2
PowerOpt Patch EnablesZ18-103h px� 
�
�WRITE_MODE attribute of %s BRAM(s) out of a total of %s has been updated to save power.
    Run report_power_opt to get a complete listing of the BRAMs updated.
129*pwropt2
02
51Z34-162h px� 
R
+Structural ODC has moved %s WE to EN ports
155*pwropt2
4Z34-201h px� 
u
CNumber of BRAM Ports augmented: %s newly gated: %s Total Ports: %s
65*pwropt2
142
42
102Z34-65h px� 
S
%s*common2:
8Ending PowerOpt Patch Enables Task | Checksum: 5263f00b
h px� 
�

%s
*constraints2a
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.336 . Memory (MB): peak = 3498.008 ; gain = 0.000h px� 
O
%s*common26
4Ending Power Optimization Task | Checksum: 5263f00b
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:17 ; elapsed = 00:00:10 . Memory (MB): peak = 3498.008 ; gain = 353.191h px� 
J

Starting %s Task
103*constraints2
Final CleanupZ18-103h px� 
J
%s*common21
/Ending Final Cleanup Task | Checksum: 5263f00b
h px� 
�

%s
*constraints2a
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.003 . Memory (MB): peak = 3498.008 ; gain = 0.000h px� 
P

Starting %s Task
103*constraints2
Netlist ObfuscationZ18-103h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0192

3498.0082
0.000Z17-268h px� 
P
%s*common27
5Ending Netlist Obfuscation Task | Checksum: 50545d7c
h px� 
�

%s
*constraints2a
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.022 . Memory (MB): peak = 3498.008 ; gain = 0.000h px� 
H
Releasing license: %s
83*common2
ImplementationZ17-83h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
722
52
02
0Z4-41h px� 
J
%s completed successfully
29*	vivadotcl2

opt_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
opt_design: 2

00:00:332

00:00:562

3498.0082	
774.902Z17-268h px� 
�
Executing command : %s
56330*	planAhead2w
ureport_drc -file design_1_wrapper_drc_opted.rpt -pb design_1_wrapper_drc_opted.pb -rpx design_1_wrapper_drc_opted.rpxZ12-24828h px� 
�
Command: %s
53*	vivadotcl2w
ureport_drc -file design_1_wrapper_drc_opted.rpt -pb design_1_wrapper_drc_opted.pb -rpx design_1_wrapper_drc_opted.rpxZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
>
Running DRC with %s threads
24*drc2
2Z23-27h px� 
�
#The results of DRC are in file %s.
586*	vivadotcl2�
�C:/Users/Samarth/Desktop/IIIT_Intern/Tutorial_matrix/Vivado_files/unopt_8_vivado/unopt_8_vivado.runs/impl_1/design_1_wrapper_drc_opted.rpt�C:/Users/Samarth/Desktop/IIIT_Intern/Tutorial_matrix/Vivado_files/unopt_8_vivado/unopt_8_vivado.runs/impl_1/design_1_wrapper_drc_opted.rpt8Z2-168h px� 
J
%s completed successfully
29*	vivadotcl2

report_drcZ4-42h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0632

3498.0082
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2�
�C:/Users/Samarth/Desktop/IIIT_Intern/Tutorial_matrix/Vivado_files/unopt_8_vivado/unopt_8_vivado.runs/impl_1/design_1_wrapper_opt.dcpZ17-1381h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
write_checkpoint: 2

00:00:072

00:00:062

3498.0082
0.000Z17-268h px� 


End Record