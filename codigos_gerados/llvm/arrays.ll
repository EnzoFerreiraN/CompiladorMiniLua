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
  %".31" = bitcast [5 x i8]* @"fmt_.6" to i8*
  %".32" = call i32 (i8*, ...) @"printf"(i8* %".31", double %"elem_val")
  %".33" = bitcast [2 x i8]* @"nl_.7" to i8*
  %".34" = call i32 (i8*, ...) @"printf"(i8* %".33")
  %".35" = bitcast [13 x i8]* @"str_.8" to i8*
  %"arr_ptr.4" = load i8*, i8** %"arr"
  %".36" = fptosi double 0x4000000000000000 to i32
  %"idx_adj.4" = sub i32 %".36", 1
  %".37" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.4")
  %".38" = bitcast i8* %".37" to double*
  %"elem_ptr.4" = getelementptr double, double* %".38", i32 %"idx_adj.4"
  %"elem_val.1" = load double, double* %"elem_ptr.4"
  %".39" = bitcast [4 x i8]* @"fmt_.9" to i8*
  %".40" = call i32 (i8*, ...) @"printf"(i8* %".39", i8* %".35")
  %".41" = bitcast [5 x i8]* @"fmt_.10" to i8*
  %".42" = call i32 (i8*, ...) @"printf"(i8* %".41", double %"elem_val.1")
  %".43" = bitcast [2 x i8]* @"nl_.11" to i8*
  %".44" = call i32 (i8*, ...) @"printf"(i8* %".43")
  %".45" = bitcast [13 x i8]* @"str_.12" to i8*
  %"arr_ptr.5" = load i8*, i8** %"arr"
  %".46" = fptosi double 0x4014000000000000 to i32
  %"idx_adj.5" = sub i32 %".46", 1
  %".47" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.5")
  %".48" = bitcast i8* %".47" to double*
  %"elem_ptr.5" = getelementptr double, double* %".48", i32 %"idx_adj.5"
  %"elem_val.2" = load double, double* %"elem_ptr.5"
  %".49" = bitcast [4 x i8]* @"fmt_.13" to i8*
  %".50" = call i32 (i8*, ...) @"printf"(i8* %".49", i8* %".45")
  %".51" = bitcast [5 x i8]* @"fmt_.14" to i8*
  %".52" = call i32 (i8*, ...) @"printf"(i8* %".51", double %"elem_val.2")
  %".53" = bitcast [2 x i8]* @"nl_.15" to i8*
  %".54" = call i32 (i8*, ...) @"printf"(i8* %".53")
  %".55" = bitcast [19 x i8]* @"str_.16" to i8*
  %"arr_ptr.6" = load i8*, i8** %"arr"
  %".56" = fptosi double 0x4008000000000000 to i32
  %"idx_adj.6" = sub i32 %".56", 1
  %".57" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.6")
  %".58" = bitcast i8* %".57" to double*
  %"elem_ptr.6" = getelementptr double, double* %".58", i32 %"idx_adj.6"
  %"elem_val.3" = load double, double* %"elem_ptr.6"
  %".59" = bitcast [4 x i8]* @"fmt_.17" to i8*
  %".60" = call i32 (i8*, ...) @"printf"(i8* %".59", i8* %".55")
  %".61" = bitcast [5 x i8]* @"fmt_.18" to i8*
  %".62" = call i32 (i8*, ...) @"printf"(i8* %".61", double %"elem_val.3")
  %".63" = bitcast [2 x i8]* @"nl_.19" to i8*
  %".64" = call i32 (i8*, ...) @"printf"(i8* %".63")
  %".65" = bitcast [31 x i8]* @"str_.20" to i8*
  %"arr.1" = load i8*, i8** %"arr"
  %"arr_len" = call i32 @"minilua_array_length"(i8* %"arr.1")
  %".66" = sitofp i32 %"arr_len" to double
  %".67" = bitcast [4 x i8]* @"fmt_.21" to i8*
  %".68" = call i32 (i8*, ...) @"printf"(i8* %".67", i8* %".65")
  %".69" = bitcast [5 x i8]* @"fmt_.22" to i8*
  %".70" = call i32 (i8*, ...) @"printf"(i8* %".69", double %".66")
  %".71" = bitcast [2 x i8]* @"nl_.23" to i8*
  %".72" = call i32 (i8*, ...) @"printf"(i8* %".71")
  %"s_arr" = alloca i8*
  store i8* null, i8** %"s_arr"
  %".74" = call i8* @"minilua_new_array"(i32 4)
  store i8* %".74", i8** %"s_arr"
  %".76" = bitcast [4 x i8]* @"str_.24" to i8*
  %"arr_ptr.7" = load i8*, i8** %"s_arr"
  %".77" = fptosi double 0x3ff0000000000000 to i32
  %"idx_adj.7" = sub i32 %".77", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.7", i32 %"idx_adj.7")
  %".79" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.7")
  %".80" = bitcast i8* %".79" to i8**
  %"elem_ptr.7" = getelementptr i8*, i8** %".80", i32 %"idx_adj.7"
  store i8* %".76", i8** %"elem_ptr.7"
  %".82" = bitcast [6 x i8]* @"str_.25" to i8*
  %"arr_ptr.8" = load i8*, i8** %"s_arr"
  %".83" = fptosi double 0x4000000000000000 to i32
  %"idx_adj.8" = sub i32 %".83", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.8", i32 %"idx_adj.8")
  %".85" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.8")
  %".86" = bitcast i8* %".85" to i8**
  %"elem_ptr.8" = getelementptr i8*, i8** %".86", i32 %"idx_adj.8"
  store i8* %".82", i8** %"elem_ptr.8"
  %".88" = bitcast [10 x i8]* @"str_.26" to i8*
  %"arr_ptr.9" = load i8*, i8** %"s_arr"
  %".89" = fptosi double 0x3ff0000000000000 to i32
  %"idx_adj.9" = sub i32 %".89", 1
  %".90" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.9")
  %".91" = bitcast i8* %".90" to i8**
  %"elem_ptr.9" = getelementptr i8*, i8** %".91", i32 %"idx_adj.9"
  %"elem_val.4" = load i8*, i8** %"elem_ptr.9"
  %"is_null" = icmp eq i8* %"elem_val.4", null
  %".92" = bitcast [1 x i8]* @"empty_string_const" to i8*
  %"safe_str" = select  i1 %"is_null", i8* %".92", i8* %"elem_val.4"
  %".93" = bitcast [4 x i8]* @"fmt_.27" to i8*
  %".94" = call i32 (i8*, ...) @"printf"(i8* %".93", i8* %".88")
  %".95" = bitcast [3 x i8]* @"fmt_.28" to i8*
  %".96" = call i32 (i8*, ...) @"printf"(i8* %".95", i8* %"safe_str")
  %".97" = bitcast [2 x i8]* @"nl_.29" to i8*
  %".98" = call i32 (i8*, ...) @"printf"(i8* %".97")
  %".99" = bitcast [10 x i8]* @"str_.30" to i8*
  %"arr_ptr.10" = load i8*, i8** %"s_arr"
  %".100" = fptosi double 0x4000000000000000 to i32
  %"idx_adj.10" = sub i32 %".100", 1
  %".101" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.10")
  %".102" = bitcast i8* %".101" to i8**
  %"elem_ptr.10" = getelementptr i8*, i8** %".102", i32 %"idx_adj.10"
  %"elem_val.5" = load i8*, i8** %"elem_ptr.10"
  %"is_null.1" = icmp eq i8* %"elem_val.5", null
  %".103" = bitcast [1 x i8]* @"empty_string_const" to i8*
  %"safe_str.1" = select  i1 %"is_null.1", i8* %".103", i8* %"elem_val.5"
  %".104" = bitcast [4 x i8]* @"fmt_.31" to i8*
  %".105" = call i32 (i8*, ...) @"printf"(i8* %".104", i8* %".99")
  %".106" = bitcast [3 x i8]* @"fmt_.32" to i8*
  %".107" = call i32 (i8*, ...) @"printf"(i8* %".106", i8* %"safe_str.1")
  %".108" = bitcast [2 x i8]* @"nl_.33" to i8*
  %".109" = call i32 (i8*, ...) @"printf"(i8* %".108")
  %".110" = bitcast [20 x i8]* @"str_.34" to i8*
  %".111" = bitcast [3 x i8]* @"fmt_.35" to i8*
  %".112" = call i32 (i8*, ...) @"printf"(i8* %".111", i8* %".110")
  %".113" = bitcast [2 x i8]* @"nl_.36" to i8*
  %".114" = call i32 (i8*, ...) @"printf"(i8* %".113")
  %"i" = alloca double
  store double 0x3ff0000000000000, double* %"i"
  br label %"while_cond"
while_cond:
  %"i.1" = load double, double* %"i"
  %"arr.2" = load i8*, i8** %"arr"
  %"arr_len.1" = call i32 @"minilua_array_length"(i8* %"arr.2")
  %".117" = sitofp i32 %"arr_len.1" to double
  %"letmp" = fcmp ole double %"i.1", %".117"
  br i1 %"letmp", label %"while_body", label %"while_merge"
while_body:
  %"i.2" = load double, double* %"i"
  %".119" = bitcast [2 x i8]* @"str_.37" to i8*
  %"i.3" = load double, double* %"i"
  %"arr_ptr.11" = load i8*, i8** %"arr"
  %".120" = fptosi double %"i.3" to i32
  %"idx_adj.11" = sub i32 %".120", 1
  %".121" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.11")
  %".122" = bitcast i8* %".121" to double*
  %"elem_ptr.11" = getelementptr double, double* %".122", i32 %"idx_adj.11"
  %"elem_val.6" = load double, double* %"elem_ptr.11"
  %".123" = bitcast [6 x i8]* @"fmt_.38" to i8*
  %".124" = call i32 (i8*, ...) @"printf"(i8* %".123", double %"i.2")
  %".125" = bitcast [4 x i8]* @"fmt_.39" to i8*
  %".126" = call i32 (i8*, ...) @"printf"(i8* %".125", i8* %".119")
  %".127" = bitcast [5 x i8]* @"fmt_.40" to i8*
  %".128" = call i32 (i8*, ...) @"printf"(i8* %".127", double %"elem_val.6")
  %".129" = bitcast [2 x i8]* @"nl_.41" to i8*
  %".130" = call i32 (i8*, ...) @"printf"(i8* %".129")
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
@"fmt_.6" = internal constant [5 x i8] c"%.2f\00"
@"nl_.7" = internal constant [2 x i8] c"\0a\00"
@"str_.8" = internal constant [13 x i8] c"arr[2] (20):\00"
@"fmt_.9" = internal constant [4 x i8] c"%s \00"
@"fmt_.10" = internal constant [5 x i8] c"%.2f\00"
@"nl_.11" = internal constant [2 x i8] c"\0a\00"
@"str_.12" = internal constant [13 x i8] c"arr[5] (50):\00"
@"fmt_.13" = internal constant [4 x i8] c"%s \00"
@"fmt_.14" = internal constant [5 x i8] c"%.2f\00"
@"nl_.15" = internal constant [2 x i8] c"\0a\00"
@"str_.16" = internal constant [19 x i8] c"arr[3] (padrao 0):\00"
@"fmt_.17" = internal constant [4 x i8] c"%s \00"
@"fmt_.18" = internal constant [5 x i8] c"%.2f\00"
@"nl_.19" = internal constant [2 x i8] c"\0a\00"
@"str_.20" = internal constant [31 x i8] c"Tamanho do array (esperado 5):\00"
@"fmt_.21" = internal constant [4 x i8] c"%s \00"
@"fmt_.22" = internal constant [5 x i8] c"%.2f\00"
@"nl_.23" = internal constant [2 x i8] c"\0a\00"
@"str_.24" = internal constant [4 x i8] c"Ola\00"
@"str_.25" = internal constant [6 x i8] c"Mundo\00"
@"str_.26" = internal constant [10 x i8] c"s_arr[1]:\00"
@"empty_string_const" = internal constant [1 x i8] c"\00"
@"fmt_.27" = internal constant [4 x i8] c"%s \00"
@"fmt_.28" = internal constant [3 x i8] c"%s\00"
@"nl_.29" = internal constant [2 x i8] c"\0a\00"
@"str_.30" = internal constant [10 x i8] c"s_arr[2]:\00"
@"fmt_.31" = internal constant [4 x i8] c"%s \00"
@"fmt_.32" = internal constant [3 x i8] c"%s\00"
@"nl_.33" = internal constant [2 x i8] c"\0a\00"
@"str_.34" = internal constant [20 x i8] c"Iterando sobre arr:\00"
@"fmt_.35" = internal constant [3 x i8] c"%s\00"
@"nl_.36" = internal constant [2 x i8] c"\0a\00"
@"str_.37" = internal constant [2 x i8] c":\00"
@"fmt_.38" = internal constant [6 x i8] c"%.2f \00"
@"fmt_.39" = internal constant [4 x i8] c"%s \00"
@"fmt_.40" = internal constant [5 x i8] c"%.2f\00"
@"nl_.41" = internal constant [2 x i8] c"\0a\00"