; ModuleID = "minilua_module"
target triple = "i686-pc-windows-gnu"
target datalayout = ""

declare i32 @"printf"(i8* %".1", ...)

declare double @"pow"(double %".1", double %".2")

declare double @"floor"(double %".1")

declare double @"fmod"(double %".1", double %".2")

declare i8* @"malloc"(i32 %".1")

declare i32 @"strlen"(i8* %".1")

declare i8* @"strcpy"(i8* %".1", i8* %".2")

declare i8* @"strcat"(i8* %".1", i8* %".2")

declare i32 @"scanf"(i8* %".1", ...)

declare i8* @"minilua_new_array"(i32 %".1")

declare void @"minilua_ensure_capacity"(i8* %".1", i32 %".2")

declare i32 @"minilua_array_length"(i8* %".1")

declare i8* @"minilua_get_data_ptr"(i8* %".1")

declare void @"minilua_print_number"(double %".1")

declare void @"minilua_check_index"(i32 %".1")

define i32 @"main"()
{
entry:
  %".2" = bitcast [29 x i8]* @"str_.1" to i8*
  %".3" = bitcast [3 x i8]* @"fmt_.2" to i8*
  %".4" = call i32 (i8*, ...) @"printf"(i8* %".3", i8* %".2")
  %".5" = bitcast [2 x i8]* @"nl_.3" to i8*
  %".6" = call i32 (i8*, ...) @"printf"(i8* %".5")
  %"arr" = alloca i8*
  store i8* null, i8** %"arr"
  %".8" = call i8* @"minilua_new_array"(i32 8)
  store i8* %".8", i8** %"arr"
  %"arr_ptr" = load i8*, i8** %"arr"
  %".10" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".10")
  %"idx_adj" = sub i32 %".10", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr", i32 %"idx_adj")
  %".13" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr")
  %".14" = bitcast i8* %".13" to double*
  %"elem_ptr" = getelementptr double, double* %".14", i32 %"idx_adj"
  store double 0x4050000000000000, double* %"elem_ptr"
  %"arr_ptr.1" = load i8*, i8** %"arr"
  %".16" = fptosi double 0x4000000000000000 to i32
  call void @"minilua_check_index"(i32 %".16")
  %"idx_adj.1" = sub i32 %".16", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.1", i32 %"idx_adj.1")
  %".19" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.1")
  %".20" = bitcast i8* %".19" to double*
  %"elem_ptr.1" = getelementptr double, double* %".20", i32 %"idx_adj.1"
  store double 0x4041000000000000, double* %"elem_ptr.1"
  %"arr_ptr.2" = load i8*, i8** %"arr"
  %".22" = fptosi double 0x4008000000000000 to i32
  call void @"minilua_check_index"(i32 %".22")
  %"idx_adj.2" = sub i32 %".22", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.2", i32 %"idx_adj.2")
  %".25" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.2")
  %".26" = bitcast i8* %".25" to double*
  %"elem_ptr.2" = getelementptr double, double* %".26", i32 %"idx_adj.2"
  store double 0x4039000000000000, double* %"elem_ptr.2"
  %"arr_ptr.3" = load i8*, i8** %"arr"
  %".28" = fptosi double 0x4010000000000000 to i32
  call void @"minilua_check_index"(i32 %".28")
  %"idx_adj.3" = sub i32 %".28", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.3", i32 %"idx_adj.3")
  %".31" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.3")
  %".32" = bitcast i8* %".31" to double*
  %"elem_ptr.3" = getelementptr double, double* %".32", i32 %"idx_adj.3"
  store double 0x4028000000000000, double* %"elem_ptr.3"
  %"arr_ptr.4" = load i8*, i8** %"arr"
  %".34" = fptosi double 0x4014000000000000 to i32
  call void @"minilua_check_index"(i32 %".34")
  %"idx_adj.4" = sub i32 %".34", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.4", i32 %"idx_adj.4")
  %".37" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.4")
  %".38" = bitcast i8* %".37" to double*
  %"elem_ptr.4" = getelementptr double, double* %".38", i32 %"idx_adj.4"
  store double 0x4036000000000000, double* %"elem_ptr.4"
  %"arr_ptr.5" = load i8*, i8** %"arr"
  %".40" = fptosi double 0x4018000000000000 to i32
  call void @"minilua_check_index"(i32 %".40")
  %"idx_adj.5" = sub i32 %".40", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.5", i32 %"idx_adj.5")
  %".43" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.5")
  %".44" = bitcast i8* %".43" to double*
  %"elem_ptr.5" = getelementptr double, double* %".44", i32 %"idx_adj.5"
  store double 0x4026000000000000, double* %"elem_ptr.5"
  %"arr_ptr.6" = load i8*, i8** %"arr"
  %".46" = fptosi double 0x401c000000000000 to i32
  call void @"minilua_check_index"(i32 %".46")
  %"idx_adj.6" = sub i32 %".46", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.6", i32 %"idx_adj.6")
  %".49" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.6")
  %".50" = bitcast i8* %".49" to double*
  %"elem_ptr.6" = getelementptr double, double* %".50", i32 %"idx_adj.6"
  store double 0x4056800000000000, double* %"elem_ptr.6"
  %"n" = alloca double
  store double              0x0, double* %"n"
  %"arr.1" = load i8*, i8** %"arr"
  %"arr_len" = call i32 @"minilua_array_length"(i8* %"arr.1")
  %".53" = sitofp i32 %"arr_len" to double
  store double %".53", double* %"n"
  %".55" = bitcast [16 x i8]* @"str_.4" to i8*
  %".56" = bitcast [3 x i8]* @"fmt_.5" to i8*
  %".57" = call i32 (i8*, ...) @"printf"(i8* %".56", i8* %".55")
  %".58" = bitcast [2 x i8]* @"nl_.6" to i8*
  %".59" = call i32 (i8*, ...) @"printf"(i8* %".58")
  %"k" = alloca double
  store double 0x3ff0000000000000, double* %"k"
  br label %"while_cond"
while_cond:
  %"k.1" = load double, double* %"k"
  %"n.1" = load double, double* %"n"
  %"letmp" = fcmp ole double %"k.1", %"n.1"
  br i1 %"letmp", label %"while_body", label %"while_merge"
while_body:
  %"k.2" = load double, double* %"k"
  %"arr_ptr.7" = load i8*, i8** %"arr"
  %".63" = fptosi double %"k.2" to i32
  call void @"minilua_check_index"(i32 %".63")
  %"idx_adj.7" = sub i32 %".63", 1
  %".65" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.7")
  %".66" = bitcast i8* %".65" to double*
  %"elem_ptr.7" = getelementptr double, double* %".66", i32 %"idx_adj.7"
  %"elem_val" = load double, double* %"elem_ptr.7"
  call void @"minilua_print_number"(double %"elem_val")
  %".68" = bitcast [2 x i8]* @"nl_.7" to i8*
  %".69" = call i32 (i8*, ...) @"printf"(i8* %".68")
  %"k.3" = load double, double* %"k"
  %"addtmp" = fadd double %"k.3", 0x3ff0000000000000
  store double %"addtmp", double* %"k"
  br label %"while_cond"
while_merge:
  %"i" = alloca double
  store double 0x3ff0000000000000, double* %"i"
  %"j" = alloca double
  store double              0x0, double* %"j"
  %"temp" = alloca double
  store double              0x0, double* %"temp"
  br label %"while_cond.1"
while_cond.1:
  %"i.1" = load double, double* %"i"
  %"n.2" = load double, double* %"n"
  %"lttmp" = fcmp olt double %"i.1", %"n.2"
  br i1 %"lttmp", label %"while_body.1", label %"while_merge.1"
while_body.1:
  store double 0x3ff0000000000000, double* %"j"
  br label %"while_cond.2"
while_merge.1:
  %".116" = bitcast [16 x i8]* @"str_.8" to i8*
  %".117" = bitcast [3 x i8]* @"fmt_.9" to i8*
  %".118" = call i32 (i8*, ...) @"printf"(i8* %".117", i8* %".116")
  %".119" = bitcast [2 x i8]* @"nl_.10" to i8*
  %".120" = call i32 (i8*, ...) @"printf"(i8* %".119")
  store double 0x3ff0000000000000, double* %"k"
  br label %"while_cond.3"
while_cond.2:
  %"j.1" = load double, double* %"j"
  %"n.3" = load double, double* %"n"
  %"i.2" = load double, double* %"i"
  %"subtmp" = fsub double %"n.3", %"i.2"
  %"letmp.1" = fcmp ole double %"j.1", %"subtmp"
  br i1 %"letmp.1", label %"while_body.2", label %"while_merge.2"
while_body.2:
  %"j.2" = load double, double* %"j"
  %"arr_ptr.8" = load i8*, i8** %"arr"
  %".80" = fptosi double %"j.2" to i32
  call void @"minilua_check_index"(i32 %".80")
  %"idx_adj.8" = sub i32 %".80", 1
  %".82" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.8")
  %".83" = bitcast i8* %".82" to double*
  %"elem_ptr.8" = getelementptr double, double* %".83", i32 %"idx_adj.8"
  %"elem_val.1" = load double, double* %"elem_ptr.8"
  %"j.3" = load double, double* %"j"
  %"addtmp.1" = fadd double %"j.3", 0x3ff0000000000000
  %"arr_ptr.9" = load i8*, i8** %"arr"
  %".84" = fptosi double %"addtmp.1" to i32
  call void @"minilua_check_index"(i32 %".84")
  %"idx_adj.9" = sub i32 %".84", 1
  %".86" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.9")
  %".87" = bitcast i8* %".86" to double*
  %"elem_ptr.9" = getelementptr double, double* %".87", i32 %"idx_adj.9"
  %"elem_val.2" = load double, double* %"elem_ptr.9"
  %"gttmp" = fcmp ogt double %"elem_val.1", %"elem_val.2"
  br i1 %"gttmp", label %"then_0", label %"else_0"
while_merge.2:
  %"i.3" = load double, double* %"i"
  %"addtmp.5" = fadd double %"i.3", 0x3ff0000000000000
  store double %"addtmp.5", double* %"i"
  br label %"while_cond.1"
if_merge:
  %"j.8" = load double, double* %"j"
  %"addtmp.4" = fadd double %"j.8", 0x3ff0000000000000
  store double %"addtmp.4", double* %"j"
  br label %"while_cond.2"
then_0:
  %"j.4" = load double, double* %"j"
  %"arr_ptr.10" = load i8*, i8** %"arr"
  %".89" = fptosi double %"j.4" to i32
  call void @"minilua_check_index"(i32 %".89")
  %"idx_adj.10" = sub i32 %".89", 1
  %".91" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.10")
  %".92" = bitcast i8* %".91" to double*
  %"elem_ptr.10" = getelementptr double, double* %".92", i32 %"idx_adj.10"
  %"elem_val.3" = load double, double* %"elem_ptr.10"
  store double %"elem_val.3", double* %"temp"
  %"j.5" = load double, double* %"j"
  %"j.6" = load double, double* %"j"
  %"addtmp.2" = fadd double %"j.6", 0x3ff0000000000000
  %"arr_ptr.11" = load i8*, i8** %"arr"
  %".94" = fptosi double %"addtmp.2" to i32
  call void @"minilua_check_index"(i32 %".94")
  %"idx_adj.11" = sub i32 %".94", 1
  %".96" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.11")
  %".97" = bitcast i8* %".96" to double*
  %"elem_ptr.11" = getelementptr double, double* %".97", i32 %"idx_adj.11"
  %"elem_val.4" = load double, double* %"elem_ptr.11"
  %"arr_ptr.12" = load i8*, i8** %"arr"
  %".98" = fptosi double %"j.5" to i32
  call void @"minilua_check_index"(i32 %".98")
  %"idx_adj.12" = sub i32 %".98", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.12", i32 %"idx_adj.12")
  %".101" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.12")
  %".102" = bitcast i8* %".101" to double*
  %"elem_ptr.12" = getelementptr double, double* %".102", i32 %"idx_adj.12"
  store double %"elem_val.4", double* %"elem_ptr.12"
  %"j.7" = load double, double* %"j"
  %"addtmp.3" = fadd double %"j.7", 0x3ff0000000000000
  %"temp.1" = load double, double* %"temp"
  %"arr_ptr.13" = load i8*, i8** %"arr"
  %".104" = fptosi double %"addtmp.3" to i32
  call void @"minilua_check_index"(i32 %".104")
  %"idx_adj.13" = sub i32 %".104", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.13", i32 %"idx_adj.13")
  %".107" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.13")
  %".108" = bitcast i8* %".107" to double*
  %"elem_ptr.13" = getelementptr double, double* %".108", i32 %"idx_adj.13"
  store double %"temp.1", double* %"elem_ptr.13"
  br label %"if_merge"
else_0:
  br label %"if_merge"
while_cond.3:
  %"k.4" = load double, double* %"k"
  %"n.4" = load double, double* %"n"
  %"letmp.2" = fcmp ole double %"k.4", %"n.4"
  br i1 %"letmp.2", label %"while_body.3", label %"while_merge.3"
while_body.3:
  %"k.5" = load double, double* %"k"
  %"arr_ptr.14" = load i8*, i8** %"arr"
  %".124" = fptosi double %"k.5" to i32
  call void @"minilua_check_index"(i32 %".124")
  %"idx_adj.14" = sub i32 %".124", 1
  %".126" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.14")
  %".127" = bitcast i8* %".126" to double*
  %"elem_ptr.14" = getelementptr double, double* %".127", i32 %"idx_adj.14"
  %"elem_val.5" = load double, double* %"elem_ptr.14"
  call void @"minilua_print_number"(double %"elem_val.5")
  %".129" = bitcast [2 x i8]* @"nl_.11" to i8*
  %".130" = call i32 (i8*, ...) @"printf"(i8* %".129")
  %"k.6" = load double, double* %"k"
  %"addtmp.6" = fadd double %"k.6", 0x3ff0000000000000
  store double %"addtmp.6", double* %"k"
  br label %"while_cond.3"
while_merge.3:
  ret i32 0
}

@"str_.1" = internal constant [29 x i8] c"=== Teste 7: Bubble Sort ===\00"
@"fmt_.2" = internal constant [3 x i8] c"%s\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"str_.4" = internal constant [16 x i8] c"Array original:\00"
@"fmt_.5" = internal constant [3 x i8] c"%s\00"
@"nl_.6" = internal constant [2 x i8] c"\0a\00"
@"nl_.7" = internal constant [2 x i8] c"\0a\00"
@"str_.8" = internal constant [16 x i8] c"Array ordenado:\00"
@"fmt_.9" = internal constant [3 x i8] c"%s\00"
@"nl_.10" = internal constant [2 x i8] c"\0a\00"
@"nl_.11" = internal constant [2 x i8] c"\0a\00"