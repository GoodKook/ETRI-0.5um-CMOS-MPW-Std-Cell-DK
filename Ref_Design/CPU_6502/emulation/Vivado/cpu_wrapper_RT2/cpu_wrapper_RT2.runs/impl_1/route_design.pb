
?
Command: %s
53*	vivadotcl2
route_designZ4-113h px� 
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
>
Running DRC with %s threads
24*drc2
8Z23-27h px� 
D
DRC finished with %s
79*	vivadotcl2

0 ErrorsZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
^
,Running DRC as a precondition to command %s
22*	vivadotcl2
route_designZ4-22h px� 
>
Running DRC with %s threads
24*drc2
8Z23-27h px� 
D
DRC finished with %s
79*	vivadotcl2

0 ErrorsZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
D

Starting %s Task
103*constraints2	
RoutingZ18-103h px� 
k
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
8Z35-254h px� 
L

Phase %s%s
101*constraints2
1 2
Build RT DesignZ18-101h px� 
I
%s*common20
.Phase 1 Build RT Design | Checksum: 338933c82
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:25 ; elapsed = 00:00:22 . Memory (MB): peak = 2960.695 ; gain = 0.000 ; free physical = 9861 ; free virtual = 15481h px� 
R

Phase %s%s
101*constraints2
2 2
Router InitializationZ18-101h px� 
W

Phase %s%s
101*constraints2
2.1 2
Fix Topology ConstraintsZ18-101h px� 
T
%s*common2;
9Phase 2.1 Fix Topology Constraints | Checksum: 338933c82
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:25 ; elapsed = 00:00:22 . Memory (MB): peak = 2960.695 ; gain = 0.000 ; free physical = 9861 ; free virtual = 15481h px� 
P

Phase %s%s
101*constraints2
2.2 2
Pre Route CleanupZ18-101h px� 
M
%s*common24
2Phase 2.2 Pre Route Cleanup | Checksum: 338933c82
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:25 ; elapsed = 00:00:22 . Memory (MB): peak = 2960.695 ; gain = 0.000 ; free physical = 9861 ; free virtual = 15481h px� 
L

Phase %s%s
101*constraints2
2.3 2
Update TimingZ18-101h px� 
I
%s*common20
.Phase 2.3 Update Timing | Checksum: 2ba31e219
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:27 ; elapsed = 00:00:22 . Memory (MB): peak = 2978.898 ; gain = 18.203 ; free physical = 9827 ; free virtual = 15448h px� 
{
Intermediate Timing Summary %s164*route2:
8| WNS=-4.074 | TNS=-100.950| WHS=-1.600 | THS=-402.221|
Z35-416h px� 
O
%s*common26
4Phase 2 Router Initialization | Checksum: 2ab9a5e74
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:28 ; elapsed = 00:00:23 . Memory (MB): peak = 2983.867 ; gain = 23.172 ; free physical = 9820 ; free virtual = 15441h px� 
L

Phase %s%s
101*constraints2
3 2
Initial RoutingZ18-101h px� 
M

Phase %s%s
101*constraints2
3.1 2
Global RoutingZ18-101h px� 
J
%s*common21
/Phase 3.1 Global Routing | Checksum: 2ab9a5e74
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:28 ; elapsed = 00:00:23 . Memory (MB): peak = 2983.867 ; gain = 23.172 ; free physical = 9820 ; free virtual = 15441h px� 
R

Phase %s%s
101*constraints2
3.2 2
Initial Net RoutingZ18-101h px� 
O
%s*common26
4Phase 3.2 Initial Net Routing | Checksum: 19b7508ab
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:07:21 ; elapsed = 00:02:08 . Memory (MB): peak = 3219.867 ; gain = 259.172 ; free physical = 9569 ; free virtual = 15191h px� 
I
%s*common20
.Phase 3 Initial Routing | Checksum: 19b7508ab
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:07:21 ; elapsed = 00:02:08 . Memory (MB): peak = 3219.867 ; gain = 259.172 ; free physical = 9569 ; free virtual = 15191h px� 
�
>Design has %s pins with tight setup and hold constraints.

%s
244*route2
2752�
�The top 5 pins with tight setup and hold constraints:

+====================+===================+=================================================+
| Launch Setup Clock | Launch Hold Clock | Pin                                             |
+====================+===================+=================================================+
| dut_clk_pin        | emu_clk_pin       | Memory.0.1.genblk1.genblk1.upper/ADDRARDADDR[7] |
| dut_clk_pin        | emu_clk_pin       | Memory.0.1.genblk1.genblk1.lower/ADDRARDADDR[7] |
| dut_clk_pin        | emu_clk_pin       | Memory.0.7.genblk1.genblk1.lower/ADDRARDADDR[7] |
| dut_clk_pin        | emu_clk_pin       | Memory.0.4.genblk1.genblk1.upper/ADDRARDADDR[7] |
| dut_clk_pin        | emu_clk_pin       | Memory.0.6.genblk1.genblk1.lower/ADDRARDADDR[7] |
+--------------------+-------------------+-------------------------------------------------+

File with complete list of pins: tight_setup_hold_pins.txt
Z35-580h px� 
O

Phase %s%s
101*constraints2
4 2
Rip-up And RerouteZ18-101h px� 
Q

Phase %s%s
101*constraints2
4.1 2
Global Iteration 0Z18-101h px� 
z
Intermediate Timing Summary %s164*route29
7| WNS=-4.338 | TNS=-640.642| WHS=N/A    | THS=N/A    |
Z35-416h px� 
N
%s*common25
3Phase 4.1 Global Iteration 0 | Checksum: 22c8bc147
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:53 ; elapsed = 00:03:03 . Memory (MB): peak = 3219.867 ; gain = 259.172 ; free physical = 9566 ; free virtual = 15188h px� 
Q

Phase %s%s
101*constraints2
4.2 2
Global Iteration 1Z18-101h px� 
z
Intermediate Timing Summary %s164*route29
7| WNS=-4.122 | TNS=-603.894| WHS=N/A    | THS=N/A    |
Z35-416h px� 
N
%s*common25
3Phase 4.2 Global Iteration 1 | Checksum: 27218db7a
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:54 ; elapsed = 00:03:04 . Memory (MB): peak = 3219.867 ; gain = 259.172 ; free physical = 9568 ; free virtual = 15189h px� 
Q

Phase %s%s
101*constraints2
4.3 2
Global Iteration 2Z18-101h px� 
z
Intermediate Timing Summary %s164*route29
7| WNS=-4.163 | TNS=-604.452| WHS=N/A    | THS=N/A    |
Z35-416h px� 
N
%s*common25
3Phase 4.3 Global Iteration 2 | Checksum: 22f7af04c
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:55 ; elapsed = 00:03:05 . Memory (MB): peak = 3219.867 ; gain = 259.172 ; free physical = 9567 ; free virtual = 15189h px� 
L
%s*common23
1Phase 4 Rip-up And Reroute | Checksum: 22f7af04c
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:55 ; elapsed = 00:03:05 . Memory (MB): peak = 3219.867 ; gain = 259.172 ; free physical = 9567 ; free virtual = 15189h px� 
X

Phase %s%s
101*constraints2
5 2
Delay and Skew OptimizationZ18-101h px� 
L

Phase %s%s
101*constraints2
5.1 2
Delay CleanUpZ18-101h px� 
N

Phase %s%s
101*constraints2
5.1.1 2
Update TimingZ18-101h px� 
K
%s*common22
0Phase 5.1.1 Update Timing | Checksum: 20be9350b
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:55 ; elapsed = 00:03:05 . Memory (MB): peak = 3219.867 ; gain = 259.172 ; free physical = 9567 ; free virtual = 15189h px� 
z
Intermediate Timing Summary %s164*route29
7| WNS=-4.122 | TNS=-588.482| WHS=N/A    | THS=N/A    |
Z35-416h px� 
I
%s*common20
.Phase 5.1 Delay CleanUp | Checksum: 2bd011412
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:56 ; elapsed = 00:03:05 . Memory (MB): peak = 3219.867 ; gain = 259.172 ; free physical = 9567 ; free virtual = 15188h px� 
V

Phase %s%s
101*constraints2
5.2 2
Clock Skew OptimizationZ18-101h px� 
S
%s*common2:
8Phase 5.2 Clock Skew Optimization | Checksum: 2bd011412
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:56 ; elapsed = 00:03:05 . Memory (MB): peak = 3219.867 ; gain = 259.172 ; free physical = 9567 ; free virtual = 15188h px� 
U
%s*common2<
:Phase 5 Delay and Skew Optimization | Checksum: 2bd011412
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:56 ; elapsed = 00:03:05 . Memory (MB): peak = 3219.867 ; gain = 259.172 ; free physical = 9567 ; free virtual = 15188h px� 
J

Phase %s%s
101*constraints2
6 2
Post Hold FixZ18-101h px� 
L

Phase %s%s
101*constraints2
6.1 2
Hold Fix IterZ18-101h px� 
N

Phase %s%s
101*constraints2
6.1.1 2
Update TimingZ18-101h px� 
K
%s*common22
0Phase 6.1.1 Update Timing | Checksum: 2b2f13b0e
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:56 ; elapsed = 00:03:05 . Memory (MB): peak = 3219.867 ; gain = 259.172 ; free physical = 9566 ; free virtual = 15188h px� 
z
Intermediate Timing Summary %s164*route29
7| WNS=-4.122 | TNS=-585.157| WHS=0.103  | THS=0.000  |
Z35-416h px� 
I
%s*common20
.Phase 6.1 Hold Fix Iter | Checksum: 2b2f13b0e
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:56 ; elapsed = 00:03:05 . Memory (MB): peak = 3219.867 ; gain = 259.172 ; free physical = 9566 ; free virtual = 15188h px� 
G
%s*common2.
,Phase 6 Post Hold Fix | Checksum: 2b2f13b0e
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:56 ; elapsed = 00:03:05 . Memory (MB): peak = 3219.867 ; gain = 259.172 ; free physical = 9566 ; free virtual = 15188h px� 
K

Phase %s%s
101*constraints2
7 2
Route finalizeZ18-101h px� 
H
%s*common2/
-Phase 7 Route finalize | Checksum: 2b2f13b0e
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:56 ; elapsed = 00:03:05 . Memory (MB): peak = 3219.867 ; gain = 259.172 ; free physical = 9566 ; free virtual = 15188h px� 
R

Phase %s%s
101*constraints2
8 2
Verifying routed netsZ18-101h px� 
O
%s*common26
4Phase 8 Verifying routed nets | Checksum: 2b2f13b0e
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:56 ; elapsed = 00:03:05 . Memory (MB): peak = 3219.867 ; gain = 259.172 ; free physical = 9566 ; free virtual = 15188h px� 
N

Phase %s%s
101*constraints2
9 2
Depositing RoutesZ18-101h px� 
K
%s*common22
0Phase 9 Depositing Routes | Checksum: 29e224c00
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:56 ; elapsed = 00:03:06 . Memory (MB): peak = 3219.867 ; gain = 259.172 ; free physical = 9567 ; free virtual = 15188h px� 
P

Phase %s%s
101*constraints2
10 2
Post Router TimingZ18-101h px� 
v
Estimated Timing Summary %s
57*route29
7| WNS=-4.122 | TNS=-585.157| WHS=0.103  | THS=0.000  |
Z35-57h px� 
B
!Router estimated timing not met.
128*routeZ35-328h px� 
M
%s*common24
2Phase 10 Post Router Timing | Checksum: 29e224c00
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:57 ; elapsed = 00:03:06 . Memory (MB): peak = 3219.867 ; gain = 259.172 ; free physical = 9567 ; free virtual = 15189h px� 
@
Router Completed Successfully
2*	routeflowZ35-16h px� 
Y

Phase %s%s
101*constraints2
11 2
Post-Route Event ProcessingZ18-101h px� 
V
%s*common2=
;Phase 11 Post-Route Event Processing | Checksum: 169ff0174
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:57 ; elapsed = 00:03:06 . Memory (MB): peak = 3219.867 ; gain = 259.172 ; free physical = 9566 ; free virtual = 15188h px� 
E
%s*common2,
*Ending Routing Task | Checksum: 169ff0174
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:57 ; elapsed = 00:03:06 . Memory (MB): peak = 3219.867 ; gain = 259.172 ; free physical = 9566 ; free virtual = 15188h px� 
H
Releasing license: %s
83*common2
ImplementationZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
2872
602
1002
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
route_designZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
route_design: 2

00:08:582

00:03:062

3219.8672	
259.1722
95672
15188Z17-722h px� 
�
%s4*runtcl2x
vExecuting : report_drc -file cpu_wrapper_drc_routed.rpt -pb cpu_wrapper_drc_routed.pb -rpx cpu_wrapper_drc_routed.rpx
h px� 
�
Command: %s
53*	vivadotcl2k
ireport_drc -file cpu_wrapper_drc_routed.rpt -pb cpu_wrapper_drc_routed.pb -rpx cpu_wrapper_drc_routed.rpxZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
>
Running DRC with %s threads
24*drc2
8Z23-27h px� 
�
#The results of DRC are in file %s.
586*	vivadotcl2�
�/home/goodkook/ETRI050_DesignKit/devel/Ref_Design/CPU_6502/emulation/Vivado/cpu_wrapper_RT2/cpu_wrapper_RT2.runs/impl_1/cpu_wrapper_drc_routed.rpt�/home/goodkook/ETRI050_DesignKit/devel/Ref_Design/CPU_6502/emulation/Vivado/cpu_wrapper_RT2/cpu_wrapper_RT2.runs/impl_1/cpu_wrapper_drc_routed.rpt8Z2-168h px� 
J
%s completed successfully
29*	vivadotcl2

report_drcZ4-42h px� 
�
%s4*runtcl2�
�Executing : report_methodology -file cpu_wrapper_methodology_drc_routed.rpt -pb cpu_wrapper_methodology_drc_routed.pb -rpx cpu_wrapper_methodology_drc_routed.rpx
h px� 
�
Command: %s
53*	vivadotcl2�
�report_methodology -file cpu_wrapper_methodology_drc_routed.rpt -pb cpu_wrapper_methodology_drc_routed.pb -rpx cpu_wrapper_methodology_drc_routed.rpxZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
G
$Running Methodology with %s threads
74*drc2
8Z23-133h px� 
�
2The results of Report Methodology are in file %s.
609*	vivadotcl2�
�/home/goodkook/ETRI050_DesignKit/devel/Ref_Design/CPU_6502/emulation/Vivado/cpu_wrapper_RT2/cpu_wrapper_RT2.runs/impl_1/cpu_wrapper_methodology_drc_routed.rpt�/home/goodkook/ETRI050_DesignKit/devel/Ref_Design/CPU_6502/emulation/Vivado/cpu_wrapper_RT2/cpu_wrapper_RT2.runs/impl_1/cpu_wrapper_methodology_drc_routed.rpt8Z2-1520h px� 
R
%s completed successfully
29*	vivadotcl2
report_methodologyZ4-42h px� 
�
%s4*runtcl2�
�Executing : report_power -file cpu_wrapper_power_routed.rpt -pb cpu_wrapper_power_summary_routed.pb -rpx cpu_wrapper_power_routed.rpx
h px� 
�
Command: %s
53*	vivadotcl2{
yreport_power -file cpu_wrapper_power_routed.rpt -pb cpu_wrapper_power_summary_routed.pb -rpx cpu_wrapper_power_routed.rpxZ4-113h px� 
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
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
2972
602
1002
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
report_powerZ4-42h px� 
�
%s4*runtcl2e
cExecuting : report_route_status -file cpu_wrapper_route_status.rpt -pb cpu_wrapper_route_status.pb
h px� 
�
%s4*runtcl2�
�Executing : report_timing_summary -max_paths 10 -report_unconstrained -file cpu_wrapper_timing_summary_routed.rpt -pb cpu_wrapper_timing_summary_routed.pb -rpx cpu_wrapper_timing_summary_routed.rpx -warn_on_violation 
h px� 
`
UpdateTimingParams:%s.
91*timing2'
% Speed grade: -1, Delay Type: min_maxZ38-91h px� 
j
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
8Z38-191h px� 
�
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2
timing summaryZ38-282h px� 
r
%s4*runtcl2V
TExecuting : report_incremental_reuse -file cpu_wrapper_incremental_reuse_routed.rpt
h px� 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px� 
r
%s4*runtcl2V
TExecuting : report_clock_utilization -file cpu_wrapper_clock_utilization_routed.rpt
h px� 
�
%s4*runtcl2�
�Executing : report_bus_skew -warn_on_violation -file cpu_wrapper_bus_skew_routed.rpt -pb cpu_wrapper_bus_skew_routed.pb -rpx cpu_wrapper_bus_skew_routed.rpx
h px� 
`
UpdateTimingParams:%s.
91*timing2'
% Speed grade: -1, Delay Type: min_maxZ38-91h px� 
j
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
8Z38-191h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2

00:00:002

00:00:002

3307.9102
0.0002
95642
15188Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote PlaceDB: 2
00:00:00.222
00:00:00.082

3307.9102
0.0002
95642
15188Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote PulsedLatchDB: 2

00:00:002

00:00:002

3307.9102
0.0002
95642
15188Z17-722h px� 
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
00:00:00.042
00:00:00.032

3307.9102
0.0002
95622
15187Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote Netlist Cache: 2

00:00:002

00:00:002

3307.9102
0.0002
95622
15187Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote Device Cache: 2
00:00:00.012

00:00:002

3307.9102
0.0002
95622
15187Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write Physdb Complete: 2
00:00:00.272
00:00:00.112

3307.9102
0.0002
95622
15187Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2�
�/home/goodkook/ETRI050_DesignKit/devel/Ref_Design/CPU_6502/emulation/Vivado/cpu_wrapper_RT2/cpu_wrapper_RT2.runs/impl_1/cpu_wrapper_routed.dcpZ17-1381h px� 


End Record