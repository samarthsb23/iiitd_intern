set ModuleHierarchy {[{
"Name" : "matrixmul_100_unopt","ID" : "0","Type" : "sequential",
"SubLoops" : [
	{"Name" : "loop_input_A1","ID" : "1","Type" : "no",
	"SubLoops" : [
	{"Name" : "loop_input_A2","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "loop_input_B1","ID" : "3","Type" : "no",
	"SubLoops" : [
	{"Name" : "loop_input_B2","ID" : "4","Type" : "pipeline"},]},
	{"Name" : "loop1","ID" : "5","Type" : "no",
	"SubLoops" : [
	{"Name" : "loop2","ID" : "6","Type" : "no",
		"SubLoops" : [
		{"Name" : "loop3","ID" : "7","Type" : "pipeline"},]},]},
	{"Name" : "loop_output_C1","ID" : "8","Type" : "no",
	"SubLoops" : [
	{"Name" : "loop_output_C2","ID" : "9","Type" : "pipeline"},]},]
}]}