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
  %"A" = alloca i8*
  store i8* null, i8** %"A"
  %".3" = call i8* @"minilua_new_array"(i32 8)
  store i8* %".3", i8** %"A"
  %"B" = alloca i8*
  store i8* null, i8** %"B"
  %".6" = call i8* @"minilua_new_array"(i32 8)
  store i8* %".6", i8** %"B"
  %"C" = alloca i8*
  store i8* null, i8** %"C"
  %".9" = call i8* @"minilua_new_array"(i32 8)
  store i8* %".9", i8** %"C"
  %"width" = alloca double
  store double 0x4000000000000000, double* %"width"
  %"arr_ptr" = load i8*, i8** %"A"
  %".12" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".12")
  %"idx_adj" = sub i32 %".12", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr", i32 %"idx_adj")
  %".15" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr")
  %".16" = bitcast i8* %".15" to double*
  %"elem_ptr" = getelementptr double, double* %".16", i32 %"idx_adj"
  store double 0x3ff0000000000000, double* %"elem_ptr"
  %"arr_ptr.1" = load i8*, i8** %"A"
  %".18" = fptosi double 0x4000000000000000 to i32
  call void @"minilua_check_index"(i32 %".18")
  %"idx_adj.1" = sub i32 %".18", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.1", i32 %"idx_adj.1")
  %".21" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.1")
  %".22" = bitcast i8* %".21" to double*
  %"elem_ptr.1" = getelementptr double, double* %".22", i32 %"idx_adj.1"
  store double 0x4000000000000000, double* %"elem_ptr.1"
  %"arr_ptr.2" = load i8*, i8** %"A"
  %".24" = fptosi double 0x4008000000000000 to i32
  call void @"minilua_check_index"(i32 %".24")
  %"idx_adj.2" = sub i32 %".24", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.2", i32 %"idx_adj.2")
  %".27" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.2")
  %".28" = bitcast i8* %".27" to double*
  %"elem_ptr.2" = getelementptr double, double* %".28", i32 %"idx_adj.2"
  store double 0x4008000000000000, double* %"elem_ptr.2"
  %"arr_ptr.3" = load i8*, i8** %"A"
  %".30" = fptosi double 0x4010000000000000 to i32
  call void @"minilua_check_index"(i32 %".30")
  %"idx_adj.3" = sub i32 %".30", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.3", i32 %"idx_adj.3")
  %".33" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.3")
  %".34" = bitcast i8* %".33" to double*
  %"elem_ptr.3" = getelementptr double, double* %".34", i32 %"idx_adj.3"
  store double 0x4010000000000000, double* %"elem_ptr.3"
  %"arr_ptr.4" = load i8*, i8** %"B"
  %".36" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".36")
  %"idx_adj.4" = sub i32 %".36", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.4", i32 %"idx_adj.4")
  %".39" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.4")
  %".40" = bitcast i8* %".39" to double*
  %"elem_ptr.4" = getelementptr double, double* %".40", i32 %"idx_adj.4"
  store double 0x4014000000000000, double* %"elem_ptr.4"
  %"arr_ptr.5" = load i8*, i8** %"B"
  %".42" = fptosi double 0x4000000000000000 to i32
  call void @"minilua_check_index"(i32 %".42")
  %"idx_adj.5" = sub i32 %".42", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.5", i32 %"idx_adj.5")
  %".45" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.5")
  %".46" = bitcast i8* %".45" to double*
  %"elem_ptr.5" = getelementptr double, double* %".46", i32 %"idx_adj.5"
  store double 0x4018000000000000, double* %"elem_ptr.5"
  %"arr_ptr.6" = load i8*, i8** %"B"
  %".48" = fptosi double 0x4008000000000000 to i32
  call void @"minilua_check_index"(i32 %".48")
  %"idx_adj.6" = sub i32 %".48", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.6", i32 %"idx_adj.6")
  %".51" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.6")
  %".52" = bitcast i8* %".51" to double*
  %"elem_ptr.6" = getelementptr double, double* %".52", i32 %"idx_adj.6"
  store double 0x401c000000000000, double* %"elem_ptr.6"
  %"arr_ptr.7" = load i8*, i8** %"B"
  %".54" = fptosi double 0x4010000000000000 to i32
  call void @"minilua_check_index"(i32 %".54")
  %"idx_adj.7" = sub i32 %".54", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.7", i32 %"idx_adj.7")
  %".57" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.7")
  %".58" = bitcast i8* %".57" to double*
  %"elem_ptr.7" = getelementptr double, double* %".58", i32 %"idx_adj.7"
  store double 0x4020000000000000, double* %"elem_ptr.7"
  %".60" = bitcast [10 x i8]* @"str_.1" to i8*
  %".61" = bitcast [3 x i8]* @"fmt_.2" to i8*
  %".62" = call i32 (i8*, ...) @"printf"(i8* %".61", i8* %".60")
  %".63" = bitcast [2 x i8]* @"nl_.3" to i8*
  %".64" = call i32 (i8*, ...) @"printf"(i8* %".63")
  %"arr_ptr.8" = load i8*, i8** %"A"
  %".65" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".65")
  %"idx_adj.8" = sub i32 %".65", 1
  %".67" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.8")
  %".68" = bitcast i8* %".67" to double*
  %"elem_ptr.8" = getelementptr double, double* %".68", i32 %"idx_adj.8"
  %"elem_val" = load double, double* %"elem_ptr.8"
  %"arr_ptr.9" = load i8*, i8** %"A"
  %".69" = fptosi double 0x4000000000000000 to i32
  call void @"minilua_check_index"(i32 %".69")
  %"idx_adj.9" = sub i32 %".69", 1
  %".71" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.9")
  %".72" = bitcast i8* %".71" to double*
  %"elem_ptr.9" = getelementptr double, double* %".72", i32 %"idx_adj.9"
  %"elem_val.1" = load double, double* %"elem_ptr.9"
  %".73" = fptosi double %"elem_val" to i64
  %".74" = sitofp i64 %".73" to double
  %"is_int" = fcmp oeq double %"elem_val", %".74"
  br i1 %"is_int", label %"print_int", label %"print_float"
print_int:
  %".76" = bitcast [5 x i8]* @"fmt_int_.4" to i8*
  %".77" = call i32 (i8*, ...) @"printf"(i8* %".76", i64 %".73")
  br label %"print_merge"
print_float:
  %".79" = bitcast [6 x i8]* @"fmt_flt_.5" to i8*
  %".80" = call i32 (i8*, ...) @"printf"(i8* %".79", double %"elem_val")
  br label %"print_merge"
print_merge:
  %".82" = bitcast [2 x i8]* @"sp_.6" to i8*
  %".83" = call i32 (i8*, ...) @"printf"(i8* %".82")
  %".84" = fptosi double %"elem_val.1" to i64
  %".85" = sitofp i64 %".84" to double
  %"is_int.1" = fcmp oeq double %"elem_val.1", %".85"
  br i1 %"is_int.1", label %"print_int.1", label %"print_float.1"
print_int.1:
  %".87" = bitcast [5 x i8]* @"fmt_int_.7" to i8*
  %".88" = call i32 (i8*, ...) @"printf"(i8* %".87", i64 %".84")
  br label %"print_merge.1"
print_float.1:
  %".90" = bitcast [6 x i8]* @"fmt_flt_.8" to i8*
  %".91" = call i32 (i8*, ...) @"printf"(i8* %".90", double %"elem_val.1")
  br label %"print_merge.1"
print_merge.1:
  %".93" = bitcast [2 x i8]* @"nl_.9" to i8*
  %".94" = call i32 (i8*, ...) @"printf"(i8* %".93")
  %"arr_ptr.10" = load i8*, i8** %"A"
  %".95" = fptosi double 0x4008000000000000 to i32
  call void @"minilua_check_index"(i32 %".95")
  %"idx_adj.10" = sub i32 %".95", 1
  %".97" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.10")
  %".98" = bitcast i8* %".97" to double*
  %"elem_ptr.10" = getelementptr double, double* %".98", i32 %"idx_adj.10"
  %"elem_val.2" = load double, double* %"elem_ptr.10"
  %"arr_ptr.11" = load i8*, i8** %"A"
  %".99" = fptosi double 0x4010000000000000 to i32
  call void @"minilua_check_index"(i32 %".99")
  %"idx_adj.11" = sub i32 %".99", 1
  %".101" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.11")
  %".102" = bitcast i8* %".101" to double*
  %"elem_ptr.11" = getelementptr double, double* %".102", i32 %"idx_adj.11"
  %"elem_val.3" = load double, double* %"elem_ptr.11"
  %".103" = fptosi double %"elem_val.2" to i64
  %".104" = sitofp i64 %".103" to double
  %"is_int.2" = fcmp oeq double %"elem_val.2", %".104"
  br i1 %"is_int.2", label %"print_int.2", label %"print_float.2"
print_int.2:
  %".106" = bitcast [5 x i8]* @"fmt_int_.10" to i8*
  %".107" = call i32 (i8*, ...) @"printf"(i8* %".106", i64 %".103")
  br label %"print_merge.2"
print_float.2:
  %".109" = bitcast [6 x i8]* @"fmt_flt_.11" to i8*
  %".110" = call i32 (i8*, ...) @"printf"(i8* %".109", double %"elem_val.2")
  br label %"print_merge.2"
print_merge.2:
  %".112" = bitcast [2 x i8]* @"sp_.12" to i8*
  %".113" = call i32 (i8*, ...) @"printf"(i8* %".112")
  %".114" = fptosi double %"elem_val.3" to i64
  %".115" = sitofp i64 %".114" to double
  %"is_int.3" = fcmp oeq double %"elem_val.3", %".115"
  br i1 %"is_int.3", label %"print_int.3", label %"print_float.3"
print_int.3:
  %".117" = bitcast [5 x i8]* @"fmt_int_.13" to i8*
  %".118" = call i32 (i8*, ...) @"printf"(i8* %".117", i64 %".114")
  br label %"print_merge.3"
print_float.3:
  %".120" = bitcast [6 x i8]* @"fmt_flt_.14" to i8*
  %".121" = call i32 (i8*, ...) @"printf"(i8* %".120", double %"elem_val.3")
  br label %"print_merge.3"
print_merge.3:
  %".123" = bitcast [2 x i8]* @"nl_.15" to i8*
  %".124" = call i32 (i8*, ...) @"printf"(i8* %".123")
  %".125" = bitcast [10 x i8]* @"str_.16" to i8*
  %".126" = bitcast [3 x i8]* @"fmt_.17" to i8*
  %".127" = call i32 (i8*, ...) @"printf"(i8* %".126", i8* %".125")
  %".128" = bitcast [2 x i8]* @"nl_.18" to i8*
  %".129" = call i32 (i8*, ...) @"printf"(i8* %".128")
  %"arr_ptr.12" = load i8*, i8** %"B"
  %".130" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".130")
  %"idx_adj.12" = sub i32 %".130", 1
  %".132" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.12")
  %".133" = bitcast i8* %".132" to double*
  %"elem_ptr.12" = getelementptr double, double* %".133", i32 %"idx_adj.12"
  %"elem_val.4" = load double, double* %"elem_ptr.12"
  %"arr_ptr.13" = load i8*, i8** %"B"
  %".134" = fptosi double 0x4000000000000000 to i32
  call void @"minilua_check_index"(i32 %".134")
  %"idx_adj.13" = sub i32 %".134", 1
  %".136" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.13")
  %".137" = bitcast i8* %".136" to double*
  %"elem_ptr.13" = getelementptr double, double* %".137", i32 %"idx_adj.13"
  %"elem_val.5" = load double, double* %"elem_ptr.13"
  %".138" = fptosi double %"elem_val.4" to i64
  %".139" = sitofp i64 %".138" to double
  %"is_int.4" = fcmp oeq double %"elem_val.4", %".139"
  br i1 %"is_int.4", label %"print_int.4", label %"print_float.4"
print_int.4:
  %".141" = bitcast [5 x i8]* @"fmt_int_.19" to i8*
  %".142" = call i32 (i8*, ...) @"printf"(i8* %".141", i64 %".138")
  br label %"print_merge.4"
print_float.4:
  %".144" = bitcast [6 x i8]* @"fmt_flt_.20" to i8*
  %".145" = call i32 (i8*, ...) @"printf"(i8* %".144", double %"elem_val.4")
  br label %"print_merge.4"
print_merge.4:
  %".147" = bitcast [2 x i8]* @"sp_.21" to i8*
  %".148" = call i32 (i8*, ...) @"printf"(i8* %".147")
  %".149" = fptosi double %"elem_val.5" to i64
  %".150" = sitofp i64 %".149" to double
  %"is_int.5" = fcmp oeq double %"elem_val.5", %".150"
  br i1 %"is_int.5", label %"print_int.5", label %"print_float.5"
print_int.5:
  %".152" = bitcast [5 x i8]* @"fmt_int_.22" to i8*
  %".153" = call i32 (i8*, ...) @"printf"(i8* %".152", i64 %".149")
  br label %"print_merge.5"
print_float.5:
  %".155" = bitcast [6 x i8]* @"fmt_flt_.23" to i8*
  %".156" = call i32 (i8*, ...) @"printf"(i8* %".155", double %"elem_val.5")
  br label %"print_merge.5"
print_merge.5:
  %".158" = bitcast [2 x i8]* @"nl_.24" to i8*
  %".159" = call i32 (i8*, ...) @"printf"(i8* %".158")
  %"arr_ptr.14" = load i8*, i8** %"B"
  %".160" = fptosi double 0x4008000000000000 to i32
  call void @"minilua_check_index"(i32 %".160")
  %"idx_adj.14" = sub i32 %".160", 1
  %".162" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.14")
  %".163" = bitcast i8* %".162" to double*
  %"elem_ptr.14" = getelementptr double, double* %".163", i32 %"idx_adj.14"
  %"elem_val.6" = load double, double* %"elem_ptr.14"
  %"arr_ptr.15" = load i8*, i8** %"B"
  %".164" = fptosi double 0x4010000000000000 to i32
  call void @"minilua_check_index"(i32 %".164")
  %"idx_adj.15" = sub i32 %".164", 1
  %".166" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.15")
  %".167" = bitcast i8* %".166" to double*
  %"elem_ptr.15" = getelementptr double, double* %".167", i32 %"idx_adj.15"
  %"elem_val.7" = load double, double* %"elem_ptr.15"
  %".168" = fptosi double %"elem_val.6" to i64
  %".169" = sitofp i64 %".168" to double
  %"is_int.6" = fcmp oeq double %"elem_val.6", %".169"
  br i1 %"is_int.6", label %"print_int.6", label %"print_float.6"
print_int.6:
  %".171" = bitcast [5 x i8]* @"fmt_int_.25" to i8*
  %".172" = call i32 (i8*, ...) @"printf"(i8* %".171", i64 %".168")
  br label %"print_merge.6"
print_float.6:
  %".174" = bitcast [6 x i8]* @"fmt_flt_.26" to i8*
  %".175" = call i32 (i8*, ...) @"printf"(i8* %".174", double %"elem_val.6")
  br label %"print_merge.6"
print_merge.6:
  %".177" = bitcast [2 x i8]* @"sp_.27" to i8*
  %".178" = call i32 (i8*, ...) @"printf"(i8* %".177")
  %".179" = fptosi double %"elem_val.7" to i64
  %".180" = sitofp i64 %".179" to double
  %"is_int.7" = fcmp oeq double %"elem_val.7", %".180"
  br i1 %"is_int.7", label %"print_int.7", label %"print_float.7"
print_int.7:
  %".182" = bitcast [5 x i8]* @"fmt_int_.28" to i8*
  %".183" = call i32 (i8*, ...) @"printf"(i8* %".182", i64 %".179")
  br label %"print_merge.7"
print_float.7:
  %".185" = bitcast [6 x i8]* @"fmt_flt_.29" to i8*
  %".186" = call i32 (i8*, ...) @"printf"(i8* %".185", double %"elem_val.7")
  br label %"print_merge.7"
print_merge.7:
  %".188" = bitcast [2 x i8]* @"nl_.30" to i8*
  %".189" = call i32 (i8*, ...) @"printf"(i8* %".188")
  %"row" = alloca double
  store double              0x0, double* %"row"
  %"col" = alloca double
  store double              0x0, double* %"col"
  %"idx" = alloca double
  store double              0x0, double* %"idx"
  %"row.1" = alloca double
  store double              0x0, double* %"row.1"
  br label %"for_cond"
for_cond:
  %"row.2" = load double, double* %"row.1"
  %"step_ge_0" = fcmp oge double 0x3ff0000000000000,              0x0
  %"cond_le" = fcmp ole double %"row.2", 0x3ff0000000000000
  %"cond_ge" = fcmp oge double %"row.2", 0x3ff0000000000000
  %"forcond" = select  i1 %"step_ge_0", i1 %"cond_le", i1 %"cond_ge"
  br i1 %"forcond", label %"for_body", label %"for_merge"
for_body:
  %"col.1" = alloca double
  store double              0x0, double* %"col.1"
  br label %"for_cond.1"
for_merge:
  %".218" = bitcast [20 x i8]* @"str_.31" to i8*
  %".219" = bitcast [3 x i8]* @"fmt_.32" to i8*
  %".220" = call i32 (i8*, ...) @"printf"(i8* %".219", i8* %".218")
  %".221" = bitcast [2 x i8]* @"nl_.33" to i8*
  %".222" = call i32 (i8*, ...) @"printf"(i8* %".221")
  %"arr_ptr.19" = load i8*, i8** %"C"
  %".223" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".223")
  %"idx_adj.19" = sub i32 %".223", 1
  %".225" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.19")
  %".226" = bitcast i8* %".225" to double*
  %"elem_ptr.19" = getelementptr double, double* %".226", i32 %"idx_adj.19"
  %"elem_val.10" = load double, double* %"elem_ptr.19"
  %"arr_ptr.20" = load i8*, i8** %"C"
  %".227" = fptosi double 0x4000000000000000 to i32
  call void @"minilua_check_index"(i32 %".227")
  %"idx_adj.20" = sub i32 %".227", 1
  %".229" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.20")
  %".230" = bitcast i8* %".229" to double*
  %"elem_ptr.20" = getelementptr double, double* %".230", i32 %"idx_adj.20"
  %"elem_val.11" = load double, double* %"elem_ptr.20"
  %".231" = fptosi double %"elem_val.10" to i64
  %".232" = sitofp i64 %".231" to double
  %"is_int.8" = fcmp oeq double %"elem_val.10", %".232"
  br i1 %"is_int.8", label %"print_int.8", label %"print_float.8"
for_cond.1:
  %"col.2" = load double, double* %"col.1"
  %"step_ge_0.1" = fcmp oge double 0x3ff0000000000000,              0x0
  %"cond_le.1" = fcmp ole double %"col.2", 0x3ff0000000000000
  %"cond_ge.1" = fcmp oge double %"col.2", 0x3ff0000000000000
  %"forcond.1" = select  i1 %"step_ge_0.1", i1 %"cond_le.1", i1 %"cond_ge.1"
  br i1 %"forcond.1", label %"for_body.1", label %"for_merge.1"
for_body.1:
  %"row.3" = load double, double* %"row.1"
  %"width.1" = load double, double* %"width"
  %"multmp" = fmul double %"row.3", %"width.1"
  %"col.3" = load double, double* %"col.1"
  %"addtmp" = fadd double %"multmp", %"col.3"
  %"addtmp.1" = fadd double %"addtmp", 0x3ff0000000000000
  store double %"addtmp.1", double* %"idx"
  %"idx.1" = load double, double* %"idx"
  %"idx.2" = load double, double* %"idx"
  %"arr_ptr.16" = load i8*, i8** %"A"
  %".200" = fptosi double %"idx.2" to i32
  call void @"minilua_check_index"(i32 %".200")
  %"idx_adj.16" = sub i32 %".200", 1
  %".202" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.16")
  %".203" = bitcast i8* %".202" to double*
  %"elem_ptr.16" = getelementptr double, double* %".203", i32 %"idx_adj.16"
  %"elem_val.8" = load double, double* %"elem_ptr.16"
  %"idx.3" = load double, double* %"idx"
  %"arr_ptr.17" = load i8*, i8** %"B"
  %".204" = fptosi double %"idx.3" to i32
  call void @"minilua_check_index"(i32 %".204")
  %"idx_adj.17" = sub i32 %".204", 1
  %".206" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.17")
  %".207" = bitcast i8* %".206" to double*
  %"elem_ptr.17" = getelementptr double, double* %".207", i32 %"idx_adj.17"
  %"elem_val.9" = load double, double* %"elem_ptr.17"
  %"addtmp.2" = fadd double %"elem_val.8", %"elem_val.9"
  %"arr_ptr.18" = load i8*, i8** %"C"
  %".208" = fptosi double %"idx.1" to i32
  call void @"minilua_check_index"(i32 %".208")
  %"idx_adj.18" = sub i32 %".208", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.18", i32 %"idx_adj.18")
  %".211" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.18")
  %".212" = bitcast i8* %".211" to double*
  %"elem_ptr.18" = getelementptr double, double* %".212", i32 %"idx_adj.18"
  store double %"addtmp.2", double* %"elem_ptr.18"
  %"col.4" = load double, double* %"col.1"
  %"nextval" = fadd double %"col.4", 0x3ff0000000000000
  store double %"nextval", double* %"col.1"
  br label %"for_cond.1"
for_merge.1:
  %"row.4" = load double, double* %"row.1"
  %"nextval.1" = fadd double %"row.4", 0x3ff0000000000000
  store double %"nextval.1", double* %"row.1"
  br label %"for_cond"
print_int.8:
  %".234" = bitcast [5 x i8]* @"fmt_int_.34" to i8*
  %".235" = call i32 (i8*, ...) @"printf"(i8* %".234", i64 %".231")
  br label %"print_merge.8"
print_float.8:
  %".237" = bitcast [6 x i8]* @"fmt_flt_.35" to i8*
  %".238" = call i32 (i8*, ...) @"printf"(i8* %".237", double %"elem_val.10")
  br label %"print_merge.8"
print_merge.8:
  %".240" = bitcast [2 x i8]* @"sp_.36" to i8*
  %".241" = call i32 (i8*, ...) @"printf"(i8* %".240")
  %".242" = fptosi double %"elem_val.11" to i64
  %".243" = sitofp i64 %".242" to double
  %"is_int.9" = fcmp oeq double %"elem_val.11", %".243"
  br i1 %"is_int.9", label %"print_int.9", label %"print_float.9"
print_int.9:
  %".245" = bitcast [5 x i8]* @"fmt_int_.37" to i8*
  %".246" = call i32 (i8*, ...) @"printf"(i8* %".245", i64 %".242")
  br label %"print_merge.9"
print_float.9:
  %".248" = bitcast [6 x i8]* @"fmt_flt_.38" to i8*
  %".249" = call i32 (i8*, ...) @"printf"(i8* %".248", double %"elem_val.11")
  br label %"print_merge.9"
print_merge.9:
  %".251" = bitcast [2 x i8]* @"nl_.39" to i8*
  %".252" = call i32 (i8*, ...) @"printf"(i8* %".251")
  %"arr_ptr.21" = load i8*, i8** %"C"
  %".253" = fptosi double 0x4008000000000000 to i32
  call void @"minilua_check_index"(i32 %".253")
  %"idx_adj.21" = sub i32 %".253", 1
  %".255" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.21")
  %".256" = bitcast i8* %".255" to double*
  %"elem_ptr.21" = getelementptr double, double* %".256", i32 %"idx_adj.21"
  %"elem_val.12" = load double, double* %"elem_ptr.21"
  %"arr_ptr.22" = load i8*, i8** %"C"
  %".257" = fptosi double 0x4010000000000000 to i32
  call void @"minilua_check_index"(i32 %".257")
  %"idx_adj.22" = sub i32 %".257", 1
  %".259" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.22")
  %".260" = bitcast i8* %".259" to double*
  %"elem_ptr.22" = getelementptr double, double* %".260", i32 %"idx_adj.22"
  %"elem_val.13" = load double, double* %"elem_ptr.22"
  %".261" = fptosi double %"elem_val.12" to i64
  %".262" = sitofp i64 %".261" to double
  %"is_int.10" = fcmp oeq double %"elem_val.12", %".262"
  br i1 %"is_int.10", label %"print_int.10", label %"print_float.10"
print_int.10:
  %".264" = bitcast [5 x i8]* @"fmt_int_.40" to i8*
  %".265" = call i32 (i8*, ...) @"printf"(i8* %".264", i64 %".261")
  br label %"print_merge.10"
print_float.10:
  %".267" = bitcast [6 x i8]* @"fmt_flt_.41" to i8*
  %".268" = call i32 (i8*, ...) @"printf"(i8* %".267", double %"elem_val.12")
  br label %"print_merge.10"
print_merge.10:
  %".270" = bitcast [2 x i8]* @"sp_.42" to i8*
  %".271" = call i32 (i8*, ...) @"printf"(i8* %".270")
  %".272" = fptosi double %"elem_val.13" to i64
  %".273" = sitofp i64 %".272" to double
  %"is_int.11" = fcmp oeq double %"elem_val.13", %".273"
  br i1 %"is_int.11", label %"print_int.11", label %"print_float.11"
print_int.11:
  %".275" = bitcast [5 x i8]* @"fmt_int_.43" to i8*
  %".276" = call i32 (i8*, ...) @"printf"(i8* %".275", i64 %".272")
  br label %"print_merge.11"
print_float.11:
  %".278" = bitcast [6 x i8]* @"fmt_flt_.44" to i8*
  %".279" = call i32 (i8*, ...) @"printf"(i8* %".278", double %"elem_val.13")
  br label %"print_merge.11"
print_merge.11:
  %".281" = bitcast [2 x i8]* @"nl_.45" to i8*
  %".282" = call i32 (i8*, ...) @"printf"(i8* %".281")
  %"dotProd" = alloca double
  store double              0x0, double* %"dotProd"
  %"arr_ptr.23" = load i8*, i8** %"A"
  %".284" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".284")
  %"idx_adj.23" = sub i32 %".284", 1
  %".286" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.23")
  %".287" = bitcast i8* %".286" to double*
  %"elem_ptr.23" = getelementptr double, double* %".287", i32 %"idx_adj.23"
  %"elem_val.14" = load double, double* %"elem_ptr.23"
  %"arr_ptr.24" = load i8*, i8** %"B"
  %".288" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".288")
  %"idx_adj.24" = sub i32 %".288", 1
  %".290" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.24")
  %".291" = bitcast i8* %".290" to double*
  %"elem_ptr.24" = getelementptr double, double* %".291", i32 %"idx_adj.24"
  %"elem_val.15" = load double, double* %"elem_ptr.24"
  %"multmp.1" = fmul double %"elem_val.14", %"elem_val.15"
  %"arr_ptr.25" = load i8*, i8** %"A"
  %".292" = fptosi double 0x4000000000000000 to i32
  call void @"minilua_check_index"(i32 %".292")
  %"idx_adj.25" = sub i32 %".292", 1
  %".294" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.25")
  %".295" = bitcast i8* %".294" to double*
  %"elem_ptr.25" = getelementptr double, double* %".295", i32 %"idx_adj.25"
  %"elem_val.16" = load double, double* %"elem_ptr.25"
  %"arr_ptr.26" = load i8*, i8** %"B"
  %".296" = fptosi double 0x4008000000000000 to i32
  call void @"minilua_check_index"(i32 %".296")
  %"idx_adj.26" = sub i32 %".296", 1
  %".298" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.26")
  %".299" = bitcast i8* %".298" to double*
  %"elem_ptr.26" = getelementptr double, double* %".299", i32 %"idx_adj.26"
  %"elem_val.17" = load double, double* %"elem_ptr.26"
  %"multmp.2" = fmul double %"elem_val.16", %"elem_val.17"
  %"addtmp.3" = fadd double %"multmp.1", %"multmp.2"
  store double %"addtmp.3", double* %"dotProd"
  %".301" = bitcast [33 x i8]* @"str_.46" to i8*
  %"dotProd.1" = load double, double* %"dotProd"
  %".302" = bitcast [4 x i8]* @"fmt_.47" to i8*
  %".303" = call i32 (i8*, ...) @"printf"(i8* %".302", i8* %".301")
  %".304" = fptosi double %"dotProd.1" to i64
  %".305" = sitofp i64 %".304" to double
  %"is_int.12" = fcmp oeq double %"dotProd.1", %".305"
  br i1 %"is_int.12", label %"print_int.12", label %"print_float.12"
print_int.12:
  %".307" = bitcast [5 x i8]* @"fmt_int_.48" to i8*
  %".308" = call i32 (i8*, ...) @"printf"(i8* %".307", i64 %".304")
  br label %"print_merge.12"
print_float.12:
  %".310" = bitcast [6 x i8]* @"fmt_flt_.49" to i8*
  %".311" = call i32 (i8*, ...) @"printf"(i8* %".310", double %"dotProd.1")
  br label %"print_merge.12"
print_merge.12:
  %".313" = bitcast [2 x i8]* @"nl_.50" to i8*
  %".314" = call i32 (i8*, ...) @"printf"(i8* %".313")
  ret i32 0
}

@"str_.1" = internal constant [10 x i8] c"Matrix A:\00"
@"fmt_.2" = internal constant [3 x i8] c"%s\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.4" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.5" = internal constant [6 x i8] c"%.14g\00"
@"sp_.6" = internal constant [2 x i8] c" \00"
@"fmt_int_.7" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.8" = internal constant [6 x i8] c"%.14g\00"
@"nl_.9" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.10" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.11" = internal constant [6 x i8] c"%.14g\00"
@"sp_.12" = internal constant [2 x i8] c" \00"
@"fmt_int_.13" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.14" = internal constant [6 x i8] c"%.14g\00"
@"nl_.15" = internal constant [2 x i8] c"\0a\00"
@"str_.16" = internal constant [10 x i8] c"Matrix B:\00"
@"fmt_.17" = internal constant [3 x i8] c"%s\00"
@"nl_.18" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.19" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.20" = internal constant [6 x i8] c"%.14g\00"
@"sp_.21" = internal constant [2 x i8] c" \00"
@"fmt_int_.22" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.23" = internal constant [6 x i8] c"%.14g\00"
@"nl_.24" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.25" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.26" = internal constant [6 x i8] c"%.14g\00"
@"sp_.27" = internal constant [2 x i8] c" \00"
@"fmt_int_.28" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.29" = internal constant [6 x i8] c"%.14g\00"
@"nl_.30" = internal constant [2 x i8] c"\0a\00"
@"str_.31" = internal constant [20 x i8] c"Matrix Sum (A + B):\00"
@"fmt_.32" = internal constant [3 x i8] c"%s\00"
@"nl_.33" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.34" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.35" = internal constant [6 x i8] c"%.14g\00"
@"sp_.36" = internal constant [2 x i8] c" \00"
@"fmt_int_.37" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.38" = internal constant [6 x i8] c"%.14g\00"
@"nl_.39" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.40" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.41" = internal constant [6 x i8] c"%.14g\00"
@"sp_.42" = internal constant [2 x i8] c" \00"
@"fmt_int_.43" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.44" = internal constant [6 x i8] c"%.14g\00"
@"nl_.45" = internal constant [2 x i8] c"\0a\00"
@"str_.46" = internal constant [33 x i8] c"Dot Product (Row 0 A . Col 0 B):\00"
@"fmt_.47" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.48" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.49" = internal constant [6 x i8] c"%.14g\00"
@"nl_.50" = internal constant [2 x i8] c"\0a\00"