
B
Command: %s
53*	vivadotcl2
phys_opt_designZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
Implementation2

xc7a100tZ17-347h px� 
p
0Got license for feature '%s' and/or device '%s'
310*common2
Implementation2

xc7a100tZ17-349h px� 
R

Starting %s Task
103*constraints2
Initial Update TimingZ18-103h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.35 ; elapsed = 00:00:00.15 . Memory (MB): peak = 2960.695 ; gain = 0.000 ; free physical = 9964 ; free virtual = 15580h px� 
�
^PhysOpt_Tcl_Interface Runtime Before Starting Physical Synthesis Task | CPU: %ss |  WALL: %ss
566*	vivadotcl2
0.382
0.18Z4-1435h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2960.6952
0.0002
99642
15580Z17-722h px� 
O

Starting %s Task
103*constraints2
Physical SynthesisZ18-103h px� 
^

Phase %s%s
101*constraints2
1 2#
!Physical Synthesis InitializationZ18-101h px� 
n
EMultithreading enabled for phys_opt_design using a maximum of %s CPUs380*physynth2
8Z32-721h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-4.3712	
-89.296Z32-619h px� 
Z
%s*common2A
?Phase 1 Physical Synthesis Initialization | Checksum: f6565be1
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.52 ; elapsed = 00:00:00.27 . Memory (MB): peak = 2960.695 ; gain = 0.000 ; free physical = 9963 ; free virtual = 15579h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-4.3712	
-89.296Z32-619h px� 
V

Phase %s%s
101*constraints2
2 2
DSP Register OptimizationZ18-101h px� 
j
FNo candidate cells for DSP register optimization found in the design.
274*physynthZ32-456h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22
02
net or cell2
02
cell2
02
cell2
02
cellZ32-775h px� 
R
%s*common29
7Phase 2 DSP Register Optimization | Checksum: f6565be1
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.53 ; elapsed = 00:00:00.29 . Memory (MB): peak = 2960.695 ; gain = 0.000 ; free physical = 9963 ; free virtual = 15579h px� 
W

Phase %s%s
101*constraints2
3 2
Critical Path OptimizationZ18-101h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-4.3712	
-89.296Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0455_[2]	_0455_[2]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 Memory.0.0.genblk1.genblk1.CAS_A Memory.0.0.genblk1.genblk1.CAS_A8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0342_[1]	_0342_[1]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2.
u_cpu.u_ALU8.temp_HCu_cpu.u_ALU8.temp_HC8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0346_[4]	_0346_[4]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0343_[3]	_0343_[3]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth24
u_cpu.u_ALU8.temp_BI[0]u_cpu.u_ALU8.temp_BI[0]8Z32-702h px� 
|
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
_0156__0156_8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0155_[1]	_0155_[1]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2
	_0155_[1]	_0155_[1]2
_0940__comp	_0940__comp8Z32-710h px� 
{
;Processed net %s. Optimization improves timing on the net.
394*physynth2
	_0453_[0]	_0453_[0]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-4.3142	
-88.765Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0155_[0]	_0155_[0]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2
	_0155_[0]	_0155_[0]2
_0942__comp	_0942__comp8Z32-710h px� 
{
;Processed net %s. Optimization improves timing on the net.
394*physynth2
	_0453_[0]	_0453_[0]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-4.1812	
-87.328Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 Memory.0.2.genblk1.genblk1.CAS_A Memory.0.2.genblk1.genblk1.CAS_A8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0344_[1]	_0344_[1]8Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
142
pinsZ32-608h px� 
u
;Processed net %s. Optimization improves timing on the net.
394*physynth2
_0236__0236_8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-4.0962	
-86.682Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth24
u_cpu.u_ALU8.temp_BI[1]u_cpu.u_ALU8.temp_BI[1]8Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
122
pinsZ32-608h px� 
u
;Processed net %s. Optimization improves timing on the net.
394*physynth2
_0158__0158_8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-4.0802	
-86.519Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0155_[4]	_0155_[4]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2
	_0155_[4]	_0155_[4]2
_0937__comp	_0937__comp8Z32-710h px� 
{
;Processed net %s. Optimization improves timing on the net.
394*physynth2
	_0480_[4]	_0480_[4]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-4.0782	
-86.447Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0155_[6]	_0155_[6]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2
	_0155_[6]	_0155_[6]2
_0929__comp	_0929__comp8Z32-710h px� 
{
;Processed net %s. Optimization improves timing on the net.
394*physynth2
	_0453_[0]	_0453_[0]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-4.0722	
-86.393Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0389_[3]	_0389_[3]8Z32-702h px� 
|
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
_0047__0047_8Z32-702h px� 
^
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
82
pinsZ32-608h px� 
u
;Processed net %s. Optimization improves timing on the net.
394*physynth2
_0050__0050_8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-4.0702	
-83.052Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth24
u_cpu.u_ALU8.temp_BI[2]u_cpu.u_ALU8.temp_BI[2]8Z32-702h px� 
|
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
_0160__0160_8Z32-702h px� 
|
(Processed net %s.  Re-placed instance %s337*physynth2
	_0159_[0]	_0159_[0]2
_0965_	_0965_8Z32-663h px� 
{
;Processed net %s. Optimization improves timing on the net.
394*physynth2
	_0159_[0]	_0159_[0]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-4.0672	
-83.034Z32-619h px� 
|
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
_0236__0236_8Z32-702h px� 
j
'Processed net %s. Replicated %s times.
81*physynth2
	_0157_[2]	_0157_[2]2
18Z32-81h px� 
{
;Processed net %s. Optimization improves timing on the net.
394*physynth2
	_0157_[2]	_0157_[2]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-4.0652	
-83.020Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 Memory.0.3.genblk1.genblk1.CAS_A Memory.0.3.genblk1.genblk1.CAS_A8Z32-702h px� 
|
(Processed net %s.  Re-placed instance %s337*physynth2
	_0159_[2]	_0159_[2]2
_0961_	_0961_8Z32-663h px� 
{
;Processed net %s. Optimization improves timing on the net.
394*physynth2
	_0159_[2]	_0159_[2]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-4.0632	
-83.008Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 Memory.0.1.genblk1.genblk1.CAS_A Memory.0.1.genblk1.genblk1.CAS_A8Z32-702h px� 
|
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
_0235__0235_8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0157_[1]	_0157_[1]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2
	_0157_[1]	_0157_[1]2
_0955__comp	_0955__comp8Z32-710h px� 
{
;Processed net %s. Optimization improves timing on the net.
394*physynth2
	_0437_[0]	_0437_[0]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-4.0542	
-82.940Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0155_[2]	_0155_[2]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2
	_0155_[2]	_0155_[2]2
_0944__comp	_0944__comp8Z32-710h px� 
{
;Processed net %s. Optimization improves timing on the net.
394*physynth2
	_0452_[4]	_0452_[4]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-4.0462	
-82.535Z32-619h px� 
j
'Processed net %s. Replicated %s times.
81*physynth2
	_0159_[2]	_0159_[2]2
18Z32-81h px� 
{
;Processed net %s. Optimization improves timing on the net.
394*physynth2
	_0159_[2]	_0159_[2]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-4.0432	
-82.517Z32-619h px� 
�
-Processed net %s. Net driver %s was replaced
317*physynth2"
_0157_[2]_repN_0157_[2]_repN2"
_0952__replica	_0952__replica8Z32-601h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2"
_0157_[2]_repN_0157_[2]_repN8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-4.0372	
-82.469Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2"
_0157_[2]_repN_0157_[2]_repN8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2"
_0157_[2]_repN_0157_[2]_repN2,
_0952__replica_comp	_0952__replica_comp8Z32-710h px� 
{
;Processed net %s. Optimization improves timing on the net.
394*physynth2
	_0435_[4]	_0435_[4]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-4.0102	
-82.244Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0344_[2]	_0344_[2]8Z32-702h px� 
|
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
_0237__0237_8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0159_[1]	_0159_[1]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2
	_0159_[1]	_0159_[1]2
_0964__comp	_0964__comp8Z32-710h px� 
{
;Processed net %s. Optimization improves timing on the net.
394*physynth2
	_0443_[2]	_0443_[2]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-4.0002	
-82.206Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0157_[0]	_0157_[0]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2
	_0157_[0]	_0157_[0]2
_0956__comp	_0956__comp8Z32-710h px� 
{
;Processed net %s. Optimization improves timing on the net.
394*physynth2
	_0437_[0]	_0437_[0]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-3.9522	
-81.780Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0159_[0]	_0159_[0]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2
	_0159_[0]	_0159_[0]2
_0965__comp	_0965__comp8Z32-710h px� 
{
;Processed net %s. Optimization improves timing on the net.
394*physynth2
	_0443_[2]	_0443_[2]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-3.9202	
-81.599Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0157_[6]	_0157_[6]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2
	_0157_[6]	_0157_[6]2
_0950__comp	_0950__comp8Z32-710h px� 
{
;Processed net %s. Optimization improves timing on the net.
394*physynth2
	_0437_[0]	_0437_[0]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-3.8972	
-81.396Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0159_[2]	_0159_[2]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2
	_0159_[2]	_0159_[2]2
_0961__comp	_0961__comp8Z32-710h px� 
{
;Processed net %s. Optimization improves timing on the net.
394*physynth2
	_0442_[4]	_0442_[4]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-3.8882	
-81.344Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0099_[3]	_0099_[3]8Z32-702h px� 
|
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
_0039__0039_8Z32-702h px� 
^
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
82
pinsZ32-608h px� 
u
;Processed net %s. Optimization improves timing on the net.
394*physynth2
_0042__0042_8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-3.8742	
-80.173Z32-619h px� 
|
(Processed net %s.  Re-placed instance %s337*physynth2
	_0157_[2]	_0157_[2]2
_0952_	_0952_8Z32-663h px� 
{
;Processed net %s. Optimization improves timing on the net.
394*physynth2
	_0157_[2]	_0157_[2]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-3.8282	
-79.897Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 Memory.0.4.genblk1.genblk1.CAS_A Memory.0.4.genblk1.genblk1.CAS_A8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0344_[3]	_0344_[3]8Z32-702h px� 
|
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
_0240__0240_8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0161_[2]	_0161_[2]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2
	_0161_[2]	_0161_[2]2
_0970__comp	_0970__comp8Z32-710h px� 
{
;Processed net %s. Optimization improves timing on the net.
394*physynth2
	_0445_[4]	_0445_[4]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-3.8192	
-79.843Z32-619h px� 
|
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
_0239__0239_8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0161_[0]	_0161_[0]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2
	_0161_[0]	_0161_[0]2
_0974__comp	_0974__comp8Z32-710h px� 
{
;Processed net %s. Optimization improves timing on the net.
394*physynth2
	_0444_[0]	_0444_[0]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-3.8102	
-79.790Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0157_[2]	_0157_[2]8Z32-702h px� 
|
(Processed net %s.  Re-placed instance %s337*physynth2
	_0435_[4]	_0435_[4]2
_0954_	_0954_8Z32-663h px� 
{
;Processed net %s. Optimization improves timing on the net.
394*physynth2
	_0435_[4]	_0435_[4]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-3.8022	
-79.742Z32-619h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2
	_0157_[2]	_0157_[2]2
_0952__comp	_0952__comp8Z32-710h px� 
{
;Processed net %s. Optimization improves timing on the net.
394*physynth2
	_0435_[4]	_0435_[4]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-3.7972	
-79.712Z32-619h px� 
|
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
_0050__0050_8Z32-702h px� 
|
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
_0305__0305_8Z32-702h px� 
~
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
DI_M[0]DI_M[0]8Z32-702h px� 
|
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
_0348__0348_8Z32-702h px� 
|
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
_0349__0349_8Z32-702h px� 
~
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
clk_dutclk_dut8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0455_[2]	_0455_[2]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0342_[1]	_0342_[1]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2.
u_cpu.u_ALU8.temp_HCu_cpu.u_ALU8.temp_HC8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0346_[4]	_0346_[4]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth24
u_cpu.u_ALU8.temp_BI[0]u_cpu.u_ALU8.temp_BI[0]8Z32-702h px� 
|
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
_0156__0156_8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0155_[1]	_0155_[1]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0389_[3]	_0389_[3]8Z32-702h px� 
|
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
_0047__0047_8Z32-702h px� 
|
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
_0050__0050_8Z32-702h px� 
|
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
_0305__0305_8Z32-702h px� 
~
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
DI_M[0]DI_M[0]8Z32-702h px� 
|
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
_0348__0348_8Z32-702h px� 
|
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
_0349__0349_8Z32-702h px� 
~
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
clk_dutclk_dut8Z32-702h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-3.7972	
-79.712Z32-619h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2
00:00:00.012
00:00:00.012

2960.6952
0.0002
99532
15570Z17-722h px� 
S
%s*common2:
8Phase 3 Critical Path Optimization | Checksum: f6565be1
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:26 ; elapsed = 00:00:09 . Memory (MB): peak = 2960.695 ; gain = 0.000 ; free physical = 9953 ; free virtual = 15570h px� 
W

Phase %s%s
101*constraints2
4 2
Critical Path OptimizationZ18-101h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-3.7972	
-79.712Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0455_[2]	_0455_[2]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 Memory.0.0.genblk1.genblk1.CAS_A Memory.0.0.genblk1.genblk1.CAS_A8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0342_[1]	_0342_[1]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2.
u_cpu.u_ALU8.temp_HCu_cpu.u_ALU8.temp_HC8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0346_[4]	_0346_[4]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0343_[3]	_0343_[3]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth24
u_cpu.u_ALU8.temp_BI[0]u_cpu.u_ALU8.temp_BI[0]8Z32-702h px� 
|
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
_0156__0156_8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0155_[1]	_0155_[1]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0389_[3]	_0389_[3]8Z32-702h px� 
|
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
_0047__0047_8Z32-702h px� 
|
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
_0050__0050_8Z32-702h px� 
|
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
_0305__0305_8Z32-702h px� 
~
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
DI_M[0]DI_M[0]8Z32-702h px� 
|
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
_0348__0348_8Z32-702h px� 
|
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
_0349__0349_8Z32-702h px� 
~
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
clk_dutclk_dut8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0455_[2]	_0455_[2]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0342_[1]	_0342_[1]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2.
u_cpu.u_ALU8.temp_HCu_cpu.u_ALU8.temp_HC8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0346_[4]	_0346_[4]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth24
u_cpu.u_ALU8.temp_BI[0]u_cpu.u_ALU8.temp_BI[0]8Z32-702h px� 
|
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
_0156__0156_8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0155_[1]	_0155_[1]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
	_0389_[3]	_0389_[3]8Z32-702h px� 
|
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
_0047__0047_8Z32-702h px� 
|
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
_0050__0050_8Z32-702h px� 
|
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
_0305__0305_8Z32-702h px� 
~
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
DI_M[0]DI_M[0]8Z32-702h px� 
|
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
_0348__0348_8Z32-702h px� 
|
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
_0349__0349_8Z32-702h px� 
~
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
clk_dutclk_dut8Z32-702h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-3.7972	
-79.712Z32-619h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002
00:00:00.012

2960.6952
0.0002
99542
15571Z17-722h px� 
S
%s*common2:
8Phase 4 Critical Path Optimization | Checksum: f6565be1
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:29 ; elapsed = 00:00:10 . Memory (MB): peak = 2960.695 ; gain = 0.000 ; free physical = 9954 ; free virtual = 15571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2960.6952
0.0002
99542
15571Z17-722h px� 
w
>Post Physical Optimization Timing Summary | WNS=%s | TNS=%s |
318*physynth2
-3.7972	
-79.712Z32-603h px� 
B
-
Summary of Physical Synthesis Optimizations
*commonh px� 
B
-============================================
*commonh px� 


*commonh px� 


*commonh px� 
�
�-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Optimization   |  WNS Gain (ns)  |  TNS Gain (ns)  |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  DSP Register   |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Critical Path  |          0.574  |          9.584  |            2  |              0  |                    26  |           0  |           2  |  00:00:09  |
|  Total          |          0.574  |          9.584  |            2  |              0  |                    26  |           0  |           3  |  00:00:09  |
-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2960.6952
0.0002
99542
15571Z17-722h px� 
O
%s*common26
4Ending Physical Synthesis Task | Checksum: ae1a7a41
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:29 ; elapsed = 00:00:10 . Memory (MB): peak = 2960.695 ; gain = 0.000 ; free physical = 9954 ; free virtual = 15571h px� 
H
Releasing license: %s
83*common2
ImplementationZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
2672
592
1002
0Z4-41h px� 
O
%s completed successfully
29*	vivadotcl2
phys_opt_designZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
phys_opt_design: 2

00:00:292

00:00:102

2960.6952
0.0002
99542
15571Z17-722h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2

00:00:002

00:00:002

2960.6952
0.0002
99502
15567Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote PlaceDB: 2
00:00:00.262
00:00:00.082

2960.6952
0.0002
99482
15566Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote PulsedLatchDB: 2

00:00:002

00:00:002

2960.6952
0.0002
99482
15566Z17-722h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote RouteStorage: 2
00:00:00.022
00:00:00.012

2960.6952
0.0002
99482
15567Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote Netlist Cache: 2

00:00:002

00:00:002

2960.6952
0.0002
99482
15567Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote Device Cache: 2

00:00:002
00:00:00.012

2960.6952
0.0002
99482
15567Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write Physdb Complete: 2
00:00:00.292

00:00:00.12

2960.6952
0.0002
99482
15567Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2�
�/home/goodkook/ETRI050_DesignKit/devel/Ref_Design/CPU_6502/emulation/Vivado/cpu_wrapper_RT2/cpu_wrapper_RT2.runs/impl_1/cpu_wrapper_physopt.dcpZ17-1381h px� 


End Record