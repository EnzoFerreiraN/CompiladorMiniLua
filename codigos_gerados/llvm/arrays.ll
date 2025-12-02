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
  %".2" = bitcast [24 x i8]* @"str_.1" to i8*
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
  store double 0x4024000000000000, double* %"elem_ptr"
  %"arr_ptr.1" = load i8*, i8** %"arr"
  %".16" = fptosi double 0x4000000000000000 to i32
  call void @"minilua_check_index"(i32 %".16")
  %"idx_adj.1" = sub i32 %".16", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.1", i32 %"idx_adj.1")
  %".19" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.1")
  %".20" = bitcast i8* %".19" to double*
  %"elem_ptr.1" = getelementptr double, double* %".20", i32 %"idx_adj.1"
  store double 0x4034000000000000, double* %"elem_ptr.1"
  %"arr_ptr.2" = load i8*, i8** %"arr"
  %".22" = fptosi double 0x4014000000000000 to i32
  call void @"minilua_check_index"(i32 %".22")
  %"idx_adj.2" = sub i32 %".22", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.2", i32 %"idx_adj.2")
  %".25" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.2")
  %".26" = bitcast i8* %".25" to double*
  %"elem_ptr.2" = getelementptr double, double* %".26", i32 %"idx_adj.2"
  store double 0x4049000000000000, double* %"elem_ptr.2"
  %".28" = bitcast [13 x i8]* @"str_.4" to i8*
  %"arr_ptr.3" = load i8*, i8** %"arr"
  %".29" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".29")
  %"idx_adj.3" = sub i32 %".29", 1
  %".31" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.3")
  %".32" = bitcast i8* %".31" to double*
  %"elem_ptr.3" = getelementptr double, double* %".32", i32 %"idx_adj.3"
  %"elem_val" = load double, double* %"elem_ptr.3"
  %".33" = bitcast [4 x i8]* @"fmt_.5" to i8*
  %".34" = call i32 (i8*, ...) @"printf"(i8* %".33", i8* %".28")
  call void @"minilua_print_number"(double %"elem_val")
  %".36" = bitcast [2 x i8]* @"nl_.6" to i8*
  %".37" = call i32 (i8*, ...) @"printf"(i8* %".36")
  %".38" = bitcast [13 x i8]* @"str_.7" to i8*
  %"arr_ptr.4" = load i8*, i8** %"arr"
  %".39" = fptosi double 0x4000000000000000 to i32
  call void @"minilua_check_index"(i32 %".39")
  %"idx_adj.4" = sub i32 %".39", 1
  %".41" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.4")
  %".42" = bitcast i8* %".41" to double*
  %"elem_ptr.4" = getelementptr double, double* %".42", i32 %"idx_adj.4"
  %"elem_val.1" = load double, double* %"elem_ptr.4"
  %".43" = bitcast [4 x i8]* @"fmt_.8" to i8*
  %".44" = call i32 (i8*, ...) @"printf"(i8* %".43", i8* %".38")
  call void @"minilua_print_number"(double %"elem_val.1")
  %".46" = bitcast [2 x i8]* @"nl_.9" to i8*
  %".47" = call i32 (i8*, ...) @"printf"(i8* %".46")
  %".48" = bitcast [13 x i8]* @"str_.10" to i8*
  %"arr_ptr.5" = load i8*, i8** %"arr"
  %".49" = fptosi double 0x4014000000000000 to i32
  call void @"minilua_check_index"(i32 %".49")
  %"idx_adj.5" = sub i32 %".49", 1
  %".51" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.5")
  %".52" = bitcast i8* %".51" to double*
  %"elem_ptr.5" = getelementptr double, double* %".52", i32 %"idx_adj.5"
  %"elem_val.2" = load double, double* %"elem_ptr.5"
  %".53" = bitcast [4 x i8]* @"fmt_.11" to i8*
  %".54" = call i32 (i8*, ...) @"printf"(i8* %".53", i8* %".48")
  call void @"minilua_print_number"(double %"elem_val.2")
  %".56" = bitcast [2 x i8]* @"nl_.12" to i8*
  %".57" = call i32 (i8*, ...) @"printf"(i8* %".56")
  %".58" = bitcast [19 x i8]* @"str_.13" to i8*
  %"arr_ptr.6" = load i8*, i8** %"arr"
  %".59" = fptosi double 0x4008000000000000 to i32
  call void @"minilua_check_index"(i32 %".59")
  %"idx_adj.6" = sub i32 %".59", 1
  %".61" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.6")
  %".62" = bitcast i8* %".61" to double*
  %"elem_ptr.6" = getelementptr double, double* %".62", i32 %"idx_adj.6"
  %"elem_val.3" = load double, double* %"elem_ptr.6"
  %".63" = bitcast [4 x i8]* @"fmt_.14" to i8*
  %".64" = call i32 (i8*, ...) @"printf"(i8* %".63", i8* %".58")
  call void @"minilua_print_number"(double %"elem_val.3")
  %".66" = bitcast [2 x i8]* @"nl_.15" to i8*
  %".67" = call i32 (i8*, ...) @"printf"(i8* %".66")
  %".68" = bitcast [31 x i8]* @"str_.16" to i8*
  %"arr.1" = load i8*, i8** %"arr"
  %"arr_len" = call i32 @"minilua_array_length"(i8* %"arr.1")
  %".69" = sitofp i32 %"arr_len" to double
  %".70" = bitcast [4 x i8]* @"fmt_.17" to i8*
  %".71" = call i32 (i8*, ...) @"printf"(i8* %".70", i8* %".68")
  call void @"minilua_print_number"(double %".69")
  %".73" = bitcast [2 x i8]* @"nl_.18" to i8*
  %".74" = call i32 (i8*, ...) @"printf"(i8* %".73")
  %"s_arr" = alloca i8*
  store i8* null, i8** %"s_arr"
  %".76" = call i8* @"minilua_new_array"(i32 4)
  store i8* %".76", i8** %"s_arr"
  %".78" = bitcast [4 x i8]* @"str_.19" to i8*
  %"arr_ptr.7" = load i8*, i8** %"s_arr"
  %".79" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".79")
  %"idx_adj.7" = sub i32 %".79", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.7", i32 %"idx_adj.7")
  %".82" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.7")
  %".83" = bitcast i8* %".82" to i8**
  %"elem_ptr.7" = getelementptr i8*, i8** %".83", i32 %"idx_adj.7"
  store i8* %".78", i8** %"elem_ptr.7"
  %".85" = bitcast [6 x i8]* @"str_.20" to i8*
  %"arr_ptr.8" = load i8*, i8** %"s_arr"
  %".86" = fptosi double 0x4000000000000000 to i32
  call void @"minilua_check_index"(i32 %".86")
  %"idx_adj.8" = sub i32 %".86", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.8", i32 %"idx_adj.8")
  %".89" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.8")
  %".90" = bitcast i8* %".89" to i8**
  %"elem_ptr.8" = getelementptr i8*, i8** %".90", i32 %"idx_adj.8"
  store i8* %".85", i8** %"elem_ptr.8"
  %".92" = bitcast [10 x i8]* @"str_.21" to i8*
  %"arr_ptr.9" = load i8*, i8** %"s_arr"
  %".93" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".93")
  %"idx_adj.9" = sub i32 %".93", 1
  %".95" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.9")
  %".96" = bitcast i8* %".95" to i8**
  %"elem_ptr.9" = getelementptr i8*, i8** %".96", i32 %"idx_adj.9"
  %"elem_val.4" = load i8*, i8** %"elem_ptr.9"
  %"is_null" = icmp eq i8* %"elem_val.4", null
  %".97" = bitcast [1 x i8]* @"empty_string_const" to i8*
  %"safe_str" = select  i1 %"is_null", i8* %".97", i8* %"elem_val.4"
  %".98" = bitcast [4 x i8]* @"fmt_.22" to i8*
  %".99" = call i32 (i8*, ...) @"printf"(i8* %".98", i8* %".92")
  %".100" = bitcast [3 x i8]* @"fmt_.23" to i8*
  %".101" = call i32 (i8*, ...) @"printf"(i8* %".100", i8* %"safe_str")
  %".102" = bitcast [2 x i8]* @"nl_.24" to i8*
  %".103" = call i32 (i8*, ...) @"printf"(i8* %".102")
  %".104" = bitcast [10 x i8]* @"str_.25" to i8*
  %"arr_ptr.10" = load i8*, i8** %"s_arr"
  %".105" = fptosi double 0x4000000000000000 to i32
  call void @"minilua_check_index"(i32 %".105")
  %"idx_adj.10" = sub i32 %".105", 1
  %".107" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.10")
  %".108" = bitcast i8* %".107" to i8**
  %"elem_ptr.10" = getelementptr i8*, i8** %".108", i32 %"idx_adj.10"
  %"elem_val.5" = load i8*, i8** %"elem_ptr.10"
  %"is_null.1" = icmp eq i8* %"elem_val.5", null
  %".109" = bitcast [1 x i8]* @"empty_string_const" to i8*
  %"safe_str.1" = select  i1 %"is_null.1", i8* %".109", i8* %"elem_val.5"
  %".110" = bitcast [4 x i8]* @"fmt_.26" to i8*
  %".111" = call i32 (i8*, ...) @"printf"(i8* %".110", i8* %".104")
  %".112" = bitcast [3 x i8]* @"fmt_.27" to i8*
  %".113" = call i32 (i8*, ...) @"printf"(i8* %".112", i8* %"safe_str.1")
  %".114" = bitcast [2 x i8]* @"nl_.28" to i8*
  %".115" = call i32 (i8*, ...) @"printf"(i8* %".114")
  %".116" = bitcast [20 x i8]* @"str_.29" to i8*
  %".117" = bitcast [3 x i8]* @"fmt_.30" to i8*
  %".118" = call i32 (i8*, ...) @"printf"(i8* %".117", i8* %".116")
  %".119" = bitcast [2 x i8]* @"nl_.31" to i8*
  %".120" = call i32 (i8*, ...) @"printf"(i8* %".119")
  %"i" = alloca double
  store double 0x3ff0000000000000, double* %"i"
  br label %"while_cond"
while_cond:
  %"i.1" = load double, double* %"i"
  %"arr.2" = load i8*, i8** %"arr"
  %"arr_len.1" = call i32 @"minilua_array_length"(i8* %"arr.2")
  %".123" = sitofp i32 %"arr_len.1" to double
  %"letmp" = fcmp ole double %"i.1", %".123"
  br i1 %"letmp", label %"while_body", label %"while_merge"
while_body:
  %"i.2" = load double, double* %"i"
  %".125" = bitcast [2 x i8]* @"str_.32" to i8*
  %"i.3" = load double, double* %"i"
  %"arr_ptr.11" = load i8*, i8** %"arr"
  %".126" = fptosi double %"i.3" to i32
  call void @"minilua_check_index"(i32 %".126")
  %"idx_adj.11" = sub i32 %".126", 1
  %".128" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.11")
  %".129" = bitcast i8* %".128" to double*
  %"elem_ptr.11" = getelementptr double, double* %".129", i32 %"idx_adj.11"
  %"elem_val.6" = load double, double* %"elem_ptr.11"
  call void @"minilua_print_number"(double %"i.2")
  %".131" = bitcast [2 x i8]* @"sp_.33" to i8*
  %".132" = call i32 (i8*, ...) @"printf"(i8* %".131")
  %".133" = bitcast [4 x i8]* @"fmt_.34" to i8*
  %".134" = call i32 (i8*, ...) @"printf"(i8* %".133", i8* %".125")
  call void @"minilua_print_number"(double %"elem_val.6")
  %".136" = bitcast [2 x i8]* @"nl_.35" to i8*
  %".137" = call i32 (i8*, ...) @"printf"(i8* %".136")
  %"i.4" = load double, double* %"i"
  %"addtmp" = fadd double %"i.4", 0x3ff0000000000000
  store double %"addtmp", double* %"i"
  br label %"while_cond"
while_merge:
  ret i32 0
}

@"str_.1" = internal constant [24 x i8] c"=== Teste 4: Arrays ===\00"
@"fmt_.2" = internal constant [3 x i8] c"%s\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"str_.4" = internal constant [13 x i8] c"arr[1] (10):\00"
@"fmt_.5" = internal constant [4 x i8] c"%s \00"
@"nl_.6" = internal constant [2 x i8] c"\0a\00"
@"str_.7" = internal constant [13 x i8] c"arr[2] (20):\00"
@"fmt_.8" = internal constant [4 x i8] c"%s \00"
@"nl_.9" = internal constant [2 x i8] c"\0a\00"
@"str_.10" = internal constant [13 x i8] c"arr[5] (50):\00"
@"fmt_.11" = internal constant [4 x i8] c"%s \00"
@"nl_.12" = internal constant [2 x i8] c"\0a\00"
@"str_.13" = internal constant [19 x i8] c"arr[3] (padrao 0):\00"
@"fmt_.14" = internal constant [4 x i8] c"%s \00"
@"nl_.15" = internal constant [2 x i8] c"\0a\00"
@"str_.16" = internal constant [31 x i8] c"Tamanho do array (esperado 5):\00"
@"fmt_.17" = internal constant [4 x i8] c"%s \00"
@"nl_.18" = internal constant [2 x i8] c"\0a\00"
@"str_.19" = internal constant [4 x i8] c"Ola\00"
@"str_.20" = internal constant [6 x i8] c"Mundo\00"
@"str_.21" = internal constant [10 x i8] c"s_arr[1]:\00"
@"empty_string_const" = internal constant [1 x i8] c"\00"
@"fmt_.22" = internal constant [4 x i8] c"%s \00"
@"fmt_.23" = internal constant [3 x i8] c"%s\00"
@"nl_.24" = internal constant [2 x i8] c"\0a\00"
@"str_.25" = internal constant [10 x i8] c"s_arr[2]:\00"
@"fmt_.26" = internal constant [4 x i8] c"%s \00"
@"fmt_.27" = internal constant [3 x i8] c"%s\00"
@"nl_.28" = internal constant [2 x i8] c"\0a\00"
@"str_.29" = internal constant [20 x i8] c"Iterando sobre arr:\00"
@"fmt_.30" = internal constant [3 x i8] c"%s\00"
@"nl_.31" = internal constant [2 x i8] c"\0a\00"
@"str_.32" = internal constant [2 x i8] c":\00"
@"sp_.33" = internal constant [2 x i8] c" \00"
@"fmt_.34" = internal constant [4 x i8] c"%s \00"
@"nl_.35" = internal constant [2 x i8] c"\0a\00"