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
  %".35" = fptosi double %"elem_val" to i64
  %".36" = sitofp i64 %".35" to double
  %"is_int" = fcmp oeq double %"elem_val", %".36"
  br i1 %"is_int", label %"print_int", label %"print_float"
print_int:
  %".38" = bitcast [5 x i8]* @"fmt_int_.6" to i8*
  %".39" = call i32 (i8*, ...) @"printf"(i8* %".38", i64 %".35")
  br label %"print_merge"
print_float:
  %".41" = bitcast [6 x i8]* @"fmt_flt_.7" to i8*
  %".42" = call i32 (i8*, ...) @"printf"(i8* %".41", double %"elem_val")
  br label %"print_merge"
print_merge:
  %".44" = bitcast [2 x i8]* @"nl_.8" to i8*
  %".45" = call i32 (i8*, ...) @"printf"(i8* %".44")
  %".46" = bitcast [13 x i8]* @"str_.9" to i8*
  %"arr_ptr.4" = load i8*, i8** %"arr"
  %".47" = fptosi double 0x4000000000000000 to i32
  call void @"minilua_check_index"(i32 %".47")
  %"idx_adj.4" = sub i32 %".47", 1
  %".49" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.4")
  %".50" = bitcast i8* %".49" to double*
  %"elem_ptr.4" = getelementptr double, double* %".50", i32 %"idx_adj.4"
  %"elem_val.1" = load double, double* %"elem_ptr.4"
  %".51" = bitcast [4 x i8]* @"fmt_.10" to i8*
  %".52" = call i32 (i8*, ...) @"printf"(i8* %".51", i8* %".46")
  %".53" = fptosi double %"elem_val.1" to i64
  %".54" = sitofp i64 %".53" to double
  %"is_int.1" = fcmp oeq double %"elem_val.1", %".54"
  br i1 %"is_int.1", label %"print_int.1", label %"print_float.1"
print_int.1:
  %".56" = bitcast [5 x i8]* @"fmt_int_.11" to i8*
  %".57" = call i32 (i8*, ...) @"printf"(i8* %".56", i64 %".53")
  br label %"print_merge.1"
print_float.1:
  %".59" = bitcast [6 x i8]* @"fmt_flt_.12" to i8*
  %".60" = call i32 (i8*, ...) @"printf"(i8* %".59", double %"elem_val.1")
  br label %"print_merge.1"
print_merge.1:
  %".62" = bitcast [2 x i8]* @"nl_.13" to i8*
  %".63" = call i32 (i8*, ...) @"printf"(i8* %".62")
  %".64" = bitcast [13 x i8]* @"str_.14" to i8*
  %"arr_ptr.5" = load i8*, i8** %"arr"
  %".65" = fptosi double 0x4014000000000000 to i32
  call void @"minilua_check_index"(i32 %".65")
  %"idx_adj.5" = sub i32 %".65", 1
  %".67" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.5")
  %".68" = bitcast i8* %".67" to double*
  %"elem_ptr.5" = getelementptr double, double* %".68", i32 %"idx_adj.5"
  %"elem_val.2" = load double, double* %"elem_ptr.5"
  %".69" = bitcast [4 x i8]* @"fmt_.15" to i8*
  %".70" = call i32 (i8*, ...) @"printf"(i8* %".69", i8* %".64")
  %".71" = fptosi double %"elem_val.2" to i64
  %".72" = sitofp i64 %".71" to double
  %"is_int.2" = fcmp oeq double %"elem_val.2", %".72"
  br i1 %"is_int.2", label %"print_int.2", label %"print_float.2"
print_int.2:
  %".74" = bitcast [5 x i8]* @"fmt_int_.16" to i8*
  %".75" = call i32 (i8*, ...) @"printf"(i8* %".74", i64 %".71")
  br label %"print_merge.2"
print_float.2:
  %".77" = bitcast [6 x i8]* @"fmt_flt_.17" to i8*
  %".78" = call i32 (i8*, ...) @"printf"(i8* %".77", double %"elem_val.2")
  br label %"print_merge.2"
print_merge.2:
  %".80" = bitcast [2 x i8]* @"nl_.18" to i8*
  %".81" = call i32 (i8*, ...) @"printf"(i8* %".80")
  %".82" = bitcast [19 x i8]* @"str_.19" to i8*
  %"arr_ptr.6" = load i8*, i8** %"arr"
  %".83" = fptosi double 0x4008000000000000 to i32
  call void @"minilua_check_index"(i32 %".83")
  %"idx_adj.6" = sub i32 %".83", 1
  %".85" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.6")
  %".86" = bitcast i8* %".85" to double*
  %"elem_ptr.6" = getelementptr double, double* %".86", i32 %"idx_adj.6"
  %"elem_val.3" = load double, double* %"elem_ptr.6"
  %".87" = bitcast [4 x i8]* @"fmt_.20" to i8*
  %".88" = call i32 (i8*, ...) @"printf"(i8* %".87", i8* %".82")
  %".89" = fptosi double %"elem_val.3" to i64
  %".90" = sitofp i64 %".89" to double
  %"is_int.3" = fcmp oeq double %"elem_val.3", %".90"
  br i1 %"is_int.3", label %"print_int.3", label %"print_float.3"
print_int.3:
  %".92" = bitcast [5 x i8]* @"fmt_int_.21" to i8*
  %".93" = call i32 (i8*, ...) @"printf"(i8* %".92", i64 %".89")
  br label %"print_merge.3"
print_float.3:
  %".95" = bitcast [6 x i8]* @"fmt_flt_.22" to i8*
  %".96" = call i32 (i8*, ...) @"printf"(i8* %".95", double %"elem_val.3")
  br label %"print_merge.3"
print_merge.3:
  %".98" = bitcast [2 x i8]* @"nl_.23" to i8*
  %".99" = call i32 (i8*, ...) @"printf"(i8* %".98")
  %".100" = bitcast [31 x i8]* @"str_.24" to i8*
  %"arr.1" = load i8*, i8** %"arr"
  %"arr_len" = call i32 @"minilua_array_length"(i8* %"arr.1")
  %".101" = sitofp i32 %"arr_len" to double
  %".102" = bitcast [4 x i8]* @"fmt_.25" to i8*
  %".103" = call i32 (i8*, ...) @"printf"(i8* %".102", i8* %".100")
  %".104" = fptosi double %".101" to i64
  %".105" = sitofp i64 %".104" to double
  %"is_int.4" = fcmp oeq double %".101", %".105"
  br i1 %"is_int.4", label %"print_int.4", label %"print_float.4"
print_int.4:
  %".107" = bitcast [5 x i8]* @"fmt_int_.26" to i8*
  %".108" = call i32 (i8*, ...) @"printf"(i8* %".107", i64 %".104")
  br label %"print_merge.4"
print_float.4:
  %".110" = bitcast [6 x i8]* @"fmt_flt_.27" to i8*
  %".111" = call i32 (i8*, ...) @"printf"(i8* %".110", double %".101")
  br label %"print_merge.4"
print_merge.4:
  %".113" = bitcast [2 x i8]* @"nl_.28" to i8*
  %".114" = call i32 (i8*, ...) @"printf"(i8* %".113")
  %"s_arr" = alloca i8*
  store i8* null, i8** %"s_arr"
  %".116" = call i8* @"minilua_new_array"(i32 4)
  store i8* %".116", i8** %"s_arr"
  %".118" = bitcast [4 x i8]* @"str_.29" to i8*
  %"arr_ptr.7" = load i8*, i8** %"s_arr"
  %".119" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".119")
  %"idx_adj.7" = sub i32 %".119", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.7", i32 %"idx_adj.7")
  %".122" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.7")
  %".123" = bitcast i8* %".122" to i8**
  %"elem_ptr.7" = getelementptr i8*, i8** %".123", i32 %"idx_adj.7"
  store i8* %".118", i8** %"elem_ptr.7"
  %".125" = bitcast [6 x i8]* @"str_.30" to i8*
  %"arr_ptr.8" = load i8*, i8** %"s_arr"
  %".126" = fptosi double 0x4000000000000000 to i32
  call void @"minilua_check_index"(i32 %".126")
  %"idx_adj.8" = sub i32 %".126", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.8", i32 %"idx_adj.8")
  %".129" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.8")
  %".130" = bitcast i8* %".129" to i8**
  %"elem_ptr.8" = getelementptr i8*, i8** %".130", i32 %"idx_adj.8"
  store i8* %".125", i8** %"elem_ptr.8"
  %".132" = bitcast [10 x i8]* @"str_.31" to i8*
  %"arr_ptr.9" = load i8*, i8** %"s_arr"
  %".133" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".133")
  %"idx_adj.9" = sub i32 %".133", 1
  %".135" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.9")
  %".136" = bitcast i8* %".135" to i8**
  %"elem_ptr.9" = getelementptr i8*, i8** %".136", i32 %"idx_adj.9"
  %"elem_val.4" = load i8*, i8** %"elem_ptr.9"
  %"is_null" = icmp eq i8* %"elem_val.4", null
  %".137" = bitcast [1 x i8]* @"empty_string_const" to i8*
  %"safe_str" = select  i1 %"is_null", i8* %".137", i8* %"elem_val.4"
  %".138" = bitcast [4 x i8]* @"fmt_.32" to i8*
  %".139" = call i32 (i8*, ...) @"printf"(i8* %".138", i8* %".132")
  %".140" = bitcast [3 x i8]* @"fmt_.33" to i8*
  %".141" = call i32 (i8*, ...) @"printf"(i8* %".140", i8* %"safe_str")
  %".142" = bitcast [2 x i8]* @"nl_.34" to i8*
  %".143" = call i32 (i8*, ...) @"printf"(i8* %".142")
  %".144" = bitcast [10 x i8]* @"str_.35" to i8*
  %"arr_ptr.10" = load i8*, i8** %"s_arr"
  %".145" = fptosi double 0x4000000000000000 to i32
  call void @"minilua_check_index"(i32 %".145")
  %"idx_adj.10" = sub i32 %".145", 1
  %".147" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.10")
  %".148" = bitcast i8* %".147" to i8**
  %"elem_ptr.10" = getelementptr i8*, i8** %".148", i32 %"idx_adj.10"
  %"elem_val.5" = load i8*, i8** %"elem_ptr.10"
  %"is_null.1" = icmp eq i8* %"elem_val.5", null
  %".149" = bitcast [1 x i8]* @"empty_string_const" to i8*
  %"safe_str.1" = select  i1 %"is_null.1", i8* %".149", i8* %"elem_val.5"
  %".150" = bitcast [4 x i8]* @"fmt_.36" to i8*
  %".151" = call i32 (i8*, ...) @"printf"(i8* %".150", i8* %".144")
  %".152" = bitcast [3 x i8]* @"fmt_.37" to i8*
  %".153" = call i32 (i8*, ...) @"printf"(i8* %".152", i8* %"safe_str.1")
  %".154" = bitcast [2 x i8]* @"nl_.38" to i8*
  %".155" = call i32 (i8*, ...) @"printf"(i8* %".154")
  %".156" = bitcast [20 x i8]* @"str_.39" to i8*
  %".157" = bitcast [3 x i8]* @"fmt_.40" to i8*
  %".158" = call i32 (i8*, ...) @"printf"(i8* %".157", i8* %".156")
  %".159" = bitcast [2 x i8]* @"nl_.41" to i8*
  %".160" = call i32 (i8*, ...) @"printf"(i8* %".159")
  %"i" = alloca double
  store double 0x3ff0000000000000, double* %"i"
  br label %"while_cond"
while_cond:
  %"i.1" = load double, double* %"i"
  %"arr.2" = load i8*, i8** %"arr"
  %"arr_len.1" = call i32 @"minilua_array_length"(i8* %"arr.2")
  %".163" = sitofp i32 %"arr_len.1" to double
  %"letmp" = fcmp ole double %"i.1", %".163"
  br i1 %"letmp", label %"while_body", label %"while_merge"
while_body:
  %"i.2" = load double, double* %"i"
  %".165" = bitcast [2 x i8]* @"str_.42" to i8*
  %"i.3" = load double, double* %"i"
  %"arr_ptr.11" = load i8*, i8** %"arr"
  %".166" = fptosi double %"i.3" to i32
  call void @"minilua_check_index"(i32 %".166")
  %"idx_adj.11" = sub i32 %".166", 1
  %".168" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.11")
  %".169" = bitcast i8* %".168" to double*
  %"elem_ptr.11" = getelementptr double, double* %".169", i32 %"idx_adj.11"
  %"elem_val.6" = load double, double* %"elem_ptr.11"
  %".170" = fptosi double %"i.2" to i64
  %".171" = sitofp i64 %".170" to double
  %"is_int.5" = fcmp oeq double %"i.2", %".171"
  br i1 %"is_int.5", label %"print_int.5", label %"print_float.5"
while_merge:
  ret i32 0
print_int.5:
  %".173" = bitcast [5 x i8]* @"fmt_int_.43" to i8*
  %".174" = call i32 (i8*, ...) @"printf"(i8* %".173", i64 %".170")
  br label %"print_merge.5"
print_float.5:
  %".176" = bitcast [6 x i8]* @"fmt_flt_.44" to i8*
  %".177" = call i32 (i8*, ...) @"printf"(i8* %".176", double %"i.2")
  br label %"print_merge.5"
print_merge.5:
  %".179" = bitcast [2 x i8]* @"sp_.45" to i8*
  %".180" = call i32 (i8*, ...) @"printf"(i8* %".179")
  %".181" = bitcast [4 x i8]* @"fmt_.46" to i8*
  %".182" = call i32 (i8*, ...) @"printf"(i8* %".181", i8* %".165")
  %".183" = fptosi double %"elem_val.6" to i64
  %".184" = sitofp i64 %".183" to double
  %"is_int.6" = fcmp oeq double %"elem_val.6", %".184"
  br i1 %"is_int.6", label %"print_int.6", label %"print_float.6"
print_int.6:
  %".186" = bitcast [5 x i8]* @"fmt_int_.47" to i8*
  %".187" = call i32 (i8*, ...) @"printf"(i8* %".186", i64 %".183")
  br label %"print_merge.6"
print_float.6:
  %".189" = bitcast [6 x i8]* @"fmt_flt_.48" to i8*
  %".190" = call i32 (i8*, ...) @"printf"(i8* %".189", double %"elem_val.6")
  br label %"print_merge.6"
print_merge.6:
  %".192" = bitcast [2 x i8]* @"nl_.49" to i8*
  %".193" = call i32 (i8*, ...) @"printf"(i8* %".192")
  %"i.4" = load double, double* %"i"
  %"addtmp" = fadd double %"i.4", 0x3ff0000000000000
  store double %"addtmp", double* %"i"
  br label %"while_cond"
}

@"str_.1" = internal constant [24 x i8] c"=== Teste 4: Arrays ===\00"
@"fmt_.2" = internal constant [3 x i8] c"%s\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"str_.4" = internal constant [13 x i8] c"arr[1] (10):\00"
@"fmt_.5" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.6" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.7" = internal constant [6 x i8] c"%.14g\00"
@"nl_.8" = internal constant [2 x i8] c"\0a\00"
@"str_.9" = internal constant [13 x i8] c"arr[2] (20):\00"
@"fmt_.10" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.11" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.12" = internal constant [6 x i8] c"%.14g\00"
@"nl_.13" = internal constant [2 x i8] c"\0a\00"
@"str_.14" = internal constant [13 x i8] c"arr[5] (50):\00"
@"fmt_.15" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.16" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.17" = internal constant [6 x i8] c"%.14g\00"
@"nl_.18" = internal constant [2 x i8] c"\0a\00"
@"str_.19" = internal constant [19 x i8] c"arr[3] (padrao 0):\00"
@"fmt_.20" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.21" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.22" = internal constant [6 x i8] c"%.14g\00"
@"nl_.23" = internal constant [2 x i8] c"\0a\00"
@"str_.24" = internal constant [31 x i8] c"Tamanho do array (esperado 5):\00"
@"fmt_.25" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.26" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.27" = internal constant [6 x i8] c"%.14g\00"
@"nl_.28" = internal constant [2 x i8] c"\0a\00"
@"str_.29" = internal constant [4 x i8] c"Ola\00"
@"str_.30" = internal constant [6 x i8] c"Mundo\00"
@"str_.31" = internal constant [10 x i8] c"s_arr[1]:\00"
@"empty_string_const" = internal constant [1 x i8] c"\00"
@"fmt_.32" = internal constant [4 x i8] c"%s \00"
@"fmt_.33" = internal constant [3 x i8] c"%s\00"
@"nl_.34" = internal constant [2 x i8] c"\0a\00"
@"str_.35" = internal constant [10 x i8] c"s_arr[2]:\00"
@"fmt_.36" = internal constant [4 x i8] c"%s \00"
@"fmt_.37" = internal constant [3 x i8] c"%s\00"
@"nl_.38" = internal constant [2 x i8] c"\0a\00"
@"str_.39" = internal constant [20 x i8] c"Iterando sobre arr:\00"
@"fmt_.40" = internal constant [3 x i8] c"%s\00"
@"nl_.41" = internal constant [2 x i8] c"\0a\00"
@"str_.42" = internal constant [2 x i8] c":\00"
@"fmt_int_.43" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.44" = internal constant [6 x i8] c"%.14g\00"
@"sp_.45" = internal constant [2 x i8] c" \00"
@"fmt_.46" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.47" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.48" = internal constant [6 x i8] c"%.14g\00"
@"nl_.49" = internal constant [2 x i8] c"\0a\00"