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
  %"idx_adj" = sub i32 %".10", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr", i32 %"idx_adj")
  %".12" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr")
  %".13" = bitcast i8* %".12" to double*
  %"elem_ptr" = getelementptr double, double* %".13", i32 %"idx_adj"
  store double 0x4024000000000000, double* %"elem_ptr"
  %"arr_ptr.1" = load i8*, i8** %"arr"
  %".15" = fptosi double 0x4000000000000000 to i32
  %"idx_adj.1" = sub i32 %".15", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.1", i32 %"idx_adj.1")
  %".17" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.1")
  %".18" = bitcast i8* %".17" to double*
  %"elem_ptr.1" = getelementptr double, double* %".18", i32 %"idx_adj.1"
  store double 0x4034000000000000, double* %"elem_ptr.1"
  %"arr_ptr.2" = load i8*, i8** %"arr"
  %".20" = fptosi double 0x4014000000000000 to i32
  %"idx_adj.2" = sub i32 %".20", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.2", i32 %"idx_adj.2")
  %".22" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.2")
  %".23" = bitcast i8* %".22" to double*
  %"elem_ptr.2" = getelementptr double, double* %".23", i32 %"idx_adj.2"
  store double 0x4049000000000000, double* %"elem_ptr.2"
  %".25" = bitcast [13 x i8]* @"str_.4" to i8*
  %"arr_ptr.3" = load i8*, i8** %"arr"
  %".26" = fptosi double 0x3ff0000000000000 to i32
  %"idx_adj.3" = sub i32 %".26", 1
  %".27" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.3")
  %".28" = bitcast i8* %".27" to double*
  %"elem_ptr.3" = getelementptr double, double* %".28", i32 %"idx_adj.3"
  %"elem_val" = load double, double* %"elem_ptr.3"
  %".29" = bitcast [4 x i8]* @"fmt_.5" to i8*
  %".30" = call i32 (i8*, ...) @"printf"(i8* %".29", i8* %".25")
  call void @"minilua_print_number"(double %"elem_val")
  %".32" = bitcast [2 x i8]* @"nl_.6" to i8*
  %".33" = call i32 (i8*, ...) @"printf"(i8* %".32")
  %".34" = bitcast [13 x i8]* @"str_.7" to i8*
  %"arr_ptr.4" = load i8*, i8** %"arr"
  %".35" = fptosi double 0x4000000000000000 to i32
  %"idx_adj.4" = sub i32 %".35", 1
  %".36" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.4")
  %".37" = bitcast i8* %".36" to double*
  %"elem_ptr.4" = getelementptr double, double* %".37", i32 %"idx_adj.4"
  %"elem_val.1" = load double, double* %"elem_ptr.4"
  %".38" = bitcast [4 x i8]* @"fmt_.8" to i8*
  %".39" = call i32 (i8*, ...) @"printf"(i8* %".38", i8* %".34")
  call void @"minilua_print_number"(double %"elem_val.1")
  %".41" = bitcast [2 x i8]* @"nl_.9" to i8*
  %".42" = call i32 (i8*, ...) @"printf"(i8* %".41")
  %".43" = bitcast [13 x i8]* @"str_.10" to i8*
  %"arr_ptr.5" = load i8*, i8** %"arr"
  %".44" = fptosi double 0x4014000000000000 to i32
  %"idx_adj.5" = sub i32 %".44", 1
  %".45" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.5")
  %".46" = bitcast i8* %".45" to double*
  %"elem_ptr.5" = getelementptr double, double* %".46", i32 %"idx_adj.5"
  %"elem_val.2" = load double, double* %"elem_ptr.5"
  %".47" = bitcast [4 x i8]* @"fmt_.11" to i8*
  %".48" = call i32 (i8*, ...) @"printf"(i8* %".47", i8* %".43")
  call void @"minilua_print_number"(double %"elem_val.2")
  %".50" = bitcast [2 x i8]* @"nl_.12" to i8*
  %".51" = call i32 (i8*, ...) @"printf"(i8* %".50")
  %".52" = bitcast [19 x i8]* @"str_.13" to i8*
  %"arr_ptr.6" = load i8*, i8** %"arr"
  %".53" = fptosi double 0x4008000000000000 to i32
  %"idx_adj.6" = sub i32 %".53", 1
  %".54" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.6")
  %".55" = bitcast i8* %".54" to double*
  %"elem_ptr.6" = getelementptr double, double* %".55", i32 %"idx_adj.6"
  %"elem_val.3" = load double, double* %"elem_ptr.6"
  %".56" = bitcast [4 x i8]* @"fmt_.14" to i8*
  %".57" = call i32 (i8*, ...) @"printf"(i8* %".56", i8* %".52")
  call void @"minilua_print_number"(double %"elem_val.3")
  %".59" = bitcast [2 x i8]* @"nl_.15" to i8*
  %".60" = call i32 (i8*, ...) @"printf"(i8* %".59")
  %".61" = bitcast [31 x i8]* @"str_.16" to i8*
  %"arr.1" = load i8*, i8** %"arr"
  %"arr_len" = call i32 @"minilua_array_length"(i8* %"arr.1")
  %".62" = sitofp i32 %"arr_len" to double
  %".63" = bitcast [4 x i8]* @"fmt_.17" to i8*
  %".64" = call i32 (i8*, ...) @"printf"(i8* %".63", i8* %".61")
  call void @"minilua_print_number"(double %".62")
  %".66" = bitcast [2 x i8]* @"nl_.18" to i8*
  %".67" = call i32 (i8*, ...) @"printf"(i8* %".66")
  %"s_arr" = alloca i8*
  store i8* null, i8** %"s_arr"
  %".69" = call i8* @"minilua_new_array"(i32 4)
  store i8* %".69", i8** %"s_arr"
  %".71" = bitcast [4 x i8]* @"str_.19" to i8*
  %"arr_ptr.7" = load i8*, i8** %"s_arr"
  %".72" = fptosi double 0x3ff0000000000000 to i32
  %"idx_adj.7" = sub i32 %".72", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.7", i32 %"idx_adj.7")
  %".74" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.7")
  %".75" = bitcast i8* %".74" to i8**
  %"elem_ptr.7" = getelementptr i8*, i8** %".75", i32 %"idx_adj.7"
  store i8* %".71", i8** %"elem_ptr.7"
  %".77" = bitcast [6 x i8]* @"str_.20" to i8*
  %"arr_ptr.8" = load i8*, i8** %"s_arr"
  %".78" = fptosi double 0x4000000000000000 to i32
  %"idx_adj.8" = sub i32 %".78", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.8", i32 %"idx_adj.8")
  %".80" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.8")
  %".81" = bitcast i8* %".80" to i8**
  %"elem_ptr.8" = getelementptr i8*, i8** %".81", i32 %"idx_adj.8"
  store i8* %".77", i8** %"elem_ptr.8"
  %".83" = bitcast [10 x i8]* @"str_.21" to i8*
  %"arr_ptr.9" = load i8*, i8** %"s_arr"
  %".84" = fptosi double 0x3ff0000000000000 to i32
  %"idx_adj.9" = sub i32 %".84", 1
  %".85" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.9")
  %".86" = bitcast i8* %".85" to i8**
  %"elem_ptr.9" = getelementptr i8*, i8** %".86", i32 %"idx_adj.9"
  %"elem_val.4" = load i8*, i8** %"elem_ptr.9"
  %"is_null" = icmp eq i8* %"elem_val.4", null
  %".87" = bitcast [1 x i8]* @"empty_string_const" to i8*
  %"safe_str" = select  i1 %"is_null", i8* %".87", i8* %"elem_val.4"
  %".88" = bitcast [4 x i8]* @"fmt_.22" to i8*
  %".89" = call i32 (i8*, ...) @"printf"(i8* %".88", i8* %".83")
  %".90" = bitcast [3 x i8]* @"fmt_.23" to i8*
  %".91" = call i32 (i8*, ...) @"printf"(i8* %".90", i8* %"safe_str")
  %".92" = bitcast [2 x i8]* @"nl_.24" to i8*
  %".93" = call i32 (i8*, ...) @"printf"(i8* %".92")
  %".94" = bitcast [10 x i8]* @"str_.25" to i8*
  %"arr_ptr.10" = load i8*, i8** %"s_arr"
  %".95" = fptosi double 0x4000000000000000 to i32
  %"idx_adj.10" = sub i32 %".95", 1
  %".96" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.10")
  %".97" = bitcast i8* %".96" to i8**
  %"elem_ptr.10" = getelementptr i8*, i8** %".97", i32 %"idx_adj.10"
  %"elem_val.5" = load i8*, i8** %"elem_ptr.10"
  %"is_null.1" = icmp eq i8* %"elem_val.5", null
  %".98" = bitcast [1 x i8]* @"empty_string_const" to i8*
  %"safe_str.1" = select  i1 %"is_null.1", i8* %".98", i8* %"elem_val.5"
  %".99" = bitcast [4 x i8]* @"fmt_.26" to i8*
  %".100" = call i32 (i8*, ...) @"printf"(i8* %".99", i8* %".94")
  %".101" = bitcast [3 x i8]* @"fmt_.27" to i8*
  %".102" = call i32 (i8*, ...) @"printf"(i8* %".101", i8* %"safe_str.1")
  %".103" = bitcast [2 x i8]* @"nl_.28" to i8*
  %".104" = call i32 (i8*, ...) @"printf"(i8* %".103")
  %".105" = bitcast [20 x i8]* @"str_.29" to i8*
  %".106" = bitcast [3 x i8]* @"fmt_.30" to i8*
  %".107" = call i32 (i8*, ...) @"printf"(i8* %".106", i8* %".105")
  %".108" = bitcast [2 x i8]* @"nl_.31" to i8*
  %".109" = call i32 (i8*, ...) @"printf"(i8* %".108")
  %"i" = alloca double
  store double 0x3ff0000000000000, double* %"i"
  br label %"while_cond"
while_cond:
  %"i.1" = load double, double* %"i"
  %"arr.2" = load i8*, i8** %"arr"
  %"arr_len.1" = call i32 @"minilua_array_length"(i8* %"arr.2")
  %".112" = sitofp i32 %"arr_len.1" to double
  %"letmp" = fcmp ole double %"i.1", %".112"
  br i1 %"letmp", label %"while_body", label %"while_merge"
while_body:
  %"i.2" = load double, double* %"i"
  %".114" = bitcast [2 x i8]* @"str_.32" to i8*
  %"i.3" = load double, double* %"i"
  %"arr_ptr.11" = load i8*, i8** %"arr"
  %".115" = fptosi double %"i.3" to i32
  %"idx_adj.11" = sub i32 %".115", 1
  %".116" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.11")
  %".117" = bitcast i8* %".116" to double*
  %"elem_ptr.11" = getelementptr double, double* %".117", i32 %"idx_adj.11"
  %"elem_val.6" = load double, double* %"elem_ptr.11"
  call void @"minilua_print_number"(double %"i.2")
  %".119" = bitcast [2 x i8]* @"sp_.33" to i8*
  %".120" = call i32 (i8*, ...) @"printf"(i8* %".119")
  %".121" = bitcast [4 x i8]* @"fmt_.34" to i8*
  %".122" = call i32 (i8*, ...) @"printf"(i8* %".121", i8* %".114")
  call void @"minilua_print_number"(double %"elem_val.6")
  %".124" = bitcast [2 x i8]* @"nl_.35" to i8*
  %".125" = call i32 (i8*, ...) @"printf"(i8* %".124")
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