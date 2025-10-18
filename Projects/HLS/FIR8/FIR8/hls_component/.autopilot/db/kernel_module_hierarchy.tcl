set ModuleHierarchy {[{
"Name" : "FIR8", "RefName" : "FIR8","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_FIR8_Pipeline_SHIFTER_LOOP_fu_51", "RefName" : "FIR8_Pipeline_SHIFTER_LOOP","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "SHIFTER_LOOP","RefName" : "SHIFTER_LOOP","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_FIR8_Pipeline_MACC_LOOP_fu_59", "RefName" : "FIR8_Pipeline_MACC_LOOP","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "MACC_LOOP","RefName" : "MACC_LOOP","ID" : "4","Type" : "pipeline"},]},]
}]}