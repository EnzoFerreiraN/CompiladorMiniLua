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
  %".12" = fptosi double              0x0 to i32
  %"idx_adj" = sub i32 %".12", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr", i32 %"idx_adj")
  %".14" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr")
  %".15" = bitcast i8* %".14" to double*
  %"elem_ptr" = getelementptr double, double* %".15", i32 %"idx_adj"
  store double 0x3ff0000000000000, double* %"elem_ptr"
  %"arr_ptr.1" = load i8*, i8** %"A"
  %".17" = fptosi double 0x3ff0000000000000 to i32
  %"idx_adj.1" = sub i32 %".17", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.1", i32 %"idx_adj.1")
  %".19" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.1")
  %".20" = bitcast i8* %".19" to double*
  %"elem_ptr.1" = getelementptr double, double* %".20", i32 %"idx_adj.1"
  store double 0x4000000000000000, double* %"elem_ptr.1"
  %"arr_ptr.2" = load i8*, i8** %"A"
  %".22" = fptosi double 0x4000000000000000 to i32
  %"idx_adj.2" = sub i32 %".22", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.2", i32 %"idx_adj.2")
  %".24" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.2")
  %".25" = bitcast i8* %".24" to double*
  %"elem_ptr.2" = getelementptr double, double* %".25", i32 %"idx_adj.2"
  store double 0x4008000000000000, double* %"elem_ptr.2"
  %"arr_ptr.3" = load i8*, i8** %"A"
  %".27" = fptosi double 0x4008000000000000 to i32
  %"idx_adj.3" = sub i32 %".27", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.3", i32 %"idx_adj.3")
  %".29" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.3")
  %".30" = bitcast i8* %".29" to double*
  %"elem_ptr.3" = getelementptr double, double* %".30", i32 %"idx_adj.3"
  store double 0x4010000000000000, double* %"elem_ptr.3"
  %"arr_ptr.4" = load i8*, i8** %"B"
  %".32" = fptosi double              0x0 to i32
  %"idx_adj.4" = sub i32 %".32", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.4", i32 %"idx_adj.4")
  %".34" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.4")
  %".35" = bitcast i8* %".34" to double*
  %"elem_ptr.4" = getelementptr double, double* %".35", i32 %"idx_adj.4"
  store double 0x4014000000000000, double* %"elem_ptr.4"
  %"arr_ptr.5" = load i8*, i8** %"B"
  %".37" = fptosi double 0x3ff0000000000000 to i32
  %"idx_adj.5" = sub i32 %".37", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.5", i32 %"idx_adj.5")
  %".39" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.5")
  %".40" = bitcast i8* %".39" to double*
  %"elem_ptr.5" = getelementptr double, double* %".40", i32 %"idx_adj.5"
  store double 0x4018000000000000, double* %"elem_ptr.5"
  %"arr_ptr.6" = load i8*, i8** %"B"
  %".42" = fptosi double 0x4000000000000000 to i32
  %"idx_adj.6" = sub i32 %".42", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.6", i32 %"idx_adj.6")
  %".44" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.6")
  %".45" = bitcast i8* %".44" to double*
  %"elem_ptr.6" = getelementptr double, double* %".45", i32 %"idx_adj.6"
  store double 0x401c000000000000, double* %"elem_ptr.6"
  %"arr_ptr.7" = load i8*, i8** %"B"
  %".47" = fptosi double 0x4008000000000000 to i32
  %"idx_adj.7" = sub i32 %".47", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.7", i32 %"idx_adj.7")
  %".49" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.7")
  %".50" = bitcast i8* %".49" to double*
  %"elem_ptr.7" = getelementptr double, double* %".50", i32 %"idx_adj.7"
  store double 0x4020000000000000, double* %"elem_ptr.7"
  %".52" = bitcast [10 x i8]* @"str_.1" to i8*
  %".53" = bitcast [3 x i8]* @"fmt_.2" to i8*
  %".54" = call i32 (i8*, ...) @"printf"(i8* %".53", i8* %".52")
  %".55" = bitcast [2 x i8]* @"nl_.3" to i8*
  %".56" = call i32 (i8*, ...) @"printf"(i8* %".55")
  %"arr_ptr.8" = load i8*, i8** %"A"
  %".57" = fptosi double              0x0 to i32
  %"idx_adj.8" = sub i32 %".57", 1
  %".58" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.8")
  %".59" = bitcast i8* %".58" to double*
  %"elem_ptr.8" = getelementptr double, double* %".59", i32 %"idx_adj.8"
  %"elem_val" = load double, double* %"elem_ptr.8"
  %"arr_ptr.9" = load i8*, i8** %"A"
  %".60" = fptosi double 0x3ff0000000000000 to i32
  %"idx_adj.9" = sub i32 %".60", 1
  %".61" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.9")
  %".62" = bitcast i8* %".61" to double*
  %"elem_ptr.9" = getelementptr double, double* %".62", i32 %"idx_adj.9"
  %"elem_val.1" = load double, double* %"elem_ptr.9"
  call void @"minilua_print_number"(double %"elem_val")
  %".64" = bitcast [2 x i8]* @"sp_.4" to i8*
  %".65" = call i32 (i8*, ...) @"printf"(i8* %".64")
  call void @"minilua_print_number"(double %"elem_val.1")
  %".67" = bitcast [2 x i8]* @"nl_.5" to i8*
  %".68" = call i32 (i8*, ...) @"printf"(i8* %".67")
  %"arr_ptr.10" = load i8*, i8** %"A"
  %".69" = fptosi double 0x4000000000000000 to i32
  %"idx_adj.10" = sub i32 %".69", 1
  %".70" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.10")
  %".71" = bitcast i8* %".70" to double*
  %"elem_ptr.10" = getelementptr double, double* %".71", i32 %"idx_adj.10"
  %"elem_val.2" = load double, double* %"elem_ptr.10"
  %"arr_ptr.11" = load i8*, i8** %"A"
  %".72" = fptosi double 0x4008000000000000 to i32
  %"idx_adj.11" = sub i32 %".72", 1
  %".73" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.11")
  %".74" = bitcast i8* %".73" to double*
  %"elem_ptr.11" = getelementptr double, double* %".74", i32 %"idx_adj.11"
  %"elem_val.3" = load double, double* %"elem_ptr.11"
  call void @"minilua_print_number"(double %"elem_val.2")
  %".76" = bitcast [2 x i8]* @"sp_.6" to i8*
  %".77" = call i32 (i8*, ...) @"printf"(i8* %".76")
  call void @"minilua_print_number"(double %"elem_val.3")
  %".79" = bitcast [2 x i8]* @"nl_.7" to i8*
  %".80" = call i32 (i8*, ...) @"printf"(i8* %".79")
  %".81" = bitcast [10 x i8]* @"str_.8" to i8*
  %".82" = bitcast [3 x i8]* @"fmt_.9" to i8*
  %".83" = call i32 (i8*, ...) @"printf"(i8* %".82", i8* %".81")
  %".84" = bitcast [2 x i8]* @"nl_.10" to i8*
  %".85" = call i32 (i8*, ...) @"printf"(i8* %".84")
  %"arr_ptr.12" = load i8*, i8** %"B"
  %".86" = fptosi double              0x0 to i32
  %"idx_adj.12" = sub i32 %".86", 1
  %".87" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.12")
  %".88" = bitcast i8* %".87" to double*
  %"elem_ptr.12" = getelementptr double, double* %".88", i32 %"idx_adj.12"
  %"elem_val.4" = load double, double* %"elem_ptr.12"
  %"arr_ptr.13" = load i8*, i8** %"B"
  %".89" = fptosi double 0x3ff0000000000000 to i32
  %"idx_adj.13" = sub i32 %".89", 1
  %".90" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.13")
  %".91" = bitcast i8* %".90" to double*
  %"elem_ptr.13" = getelementptr double, double* %".91", i32 %"idx_adj.13"
  %"elem_val.5" = load double, double* %"elem_ptr.13"
  call void @"minilua_print_number"(double %"elem_val.4")
  %".93" = bitcast [2 x i8]* @"sp_.11" to i8*
  %".94" = call i32 (i8*, ...) @"printf"(i8* %".93")
  call void @"minilua_print_number"(double %"elem_val.5")
  %".96" = bitcast [2 x i8]* @"nl_.12" to i8*
  %".97" = call i32 (i8*, ...) @"printf"(i8* %".96")
  %"arr_ptr.14" = load i8*, i8** %"B"
  %".98" = fptosi double 0x4000000000000000 to i32
  %"idx_adj.14" = sub i32 %".98", 1
  %".99" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.14")
  %".100" = bitcast i8* %".99" to double*
  %"elem_ptr.14" = getelementptr double, double* %".100", i32 %"idx_adj.14"
  %"elem_val.6" = load double, double* %"elem_ptr.14"
  %"arr_ptr.15" = load i8*, i8** %"B"
  %".101" = fptosi double 0x4008000000000000 to i32
  %"idx_adj.15" = sub i32 %".101", 1
  %".102" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.15")
  %".103" = bitcast i8* %".102" to double*
  %"elem_ptr.15" = getelementptr double, double* %".103", i32 %"idx_adj.15"
  %"elem_val.7" = load double, double* %"elem_ptr.15"
  call void @"minilua_print_number"(double %"elem_val.6")
  %".105" = bitcast [2 x i8]* @"sp_.13" to i8*
  %".106" = call i32 (i8*, ...) @"printf"(i8* %".105")
  call void @"minilua_print_number"(double %"elem_val.7")
  %".108" = bitcast [2 x i8]* @"nl_.14" to i8*
  %".109" = call i32 (i8*, ...) @"printf"(i8* %".108")
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
  %".135" = bitcast [20 x i8]* @"str_.15" to i8*
  %".136" = bitcast [3 x i8]* @"fmt_.16" to i8*
  %".137" = call i32 (i8*, ...) @"printf"(i8* %".136", i8* %".135")
  %".138" = bitcast [2 x i8]* @"nl_.17" to i8*
  %".139" = call i32 (i8*, ...) @"printf"(i8* %".138")
  %"arr_ptr.19" = load i8*, i8** %"C"
  %".140" = fptosi double              0x0 to i32
  %"idx_adj.19" = sub i32 %".140", 1
  %".141" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.19")
  %".142" = bitcast i8* %".141" to double*
  %"elem_ptr.19" = getelementptr double, double* %".142", i32 %"idx_adj.19"
  %"elem_val.10" = load double, double* %"elem_ptr.19"
  %"arr_ptr.20" = load i8*, i8** %"C"
  %".143" = fptosi double 0x3ff0000000000000 to i32
  %"idx_adj.20" = sub i32 %".143", 1
  %".144" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.20")
  %".145" = bitcast i8* %".144" to double*
  %"elem_ptr.20" = getelementptr double, double* %".145", i32 %"idx_adj.20"
  %"elem_val.11" = load double, double* %"elem_ptr.20"
  call void @"minilua_print_number"(double %"elem_val.10")
  %".147" = bitcast [2 x i8]* @"sp_.18" to i8*
  %".148" = call i32 (i8*, ...) @"printf"(i8* %".147")
  call void @"minilua_print_number"(double %"elem_val.11")
  %".150" = bitcast [2 x i8]* @"nl_.19" to i8*
  %".151" = call i32 (i8*, ...) @"printf"(i8* %".150")
  %"arr_ptr.21" = load i8*, i8** %"C"
  %".152" = fptosi double 0x4000000000000000 to i32
  %"idx_adj.21" = sub i32 %".152", 1
  %".153" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.21")
  %".154" = bitcast i8* %".153" to double*
  %"elem_ptr.21" = getelementptr double, double* %".154", i32 %"idx_adj.21"
  %"elem_val.12" = load double, double* %"elem_ptr.21"
  %"arr_ptr.22" = load i8*, i8** %"C"
  %".155" = fptosi double 0x4008000000000000 to i32
  %"idx_adj.22" = sub i32 %".155", 1
  %".156" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.22")
  %".157" = bitcast i8* %".156" to double*
  %"elem_ptr.22" = getelementptr double, double* %".157", i32 %"idx_adj.22"
  %"elem_val.13" = load double, double* %"elem_ptr.22"
  call void @"minilua_print_number"(double %"elem_val.12")
  %".159" = bitcast [2 x i8]* @"sp_.20" to i8*
  %".160" = call i32 (i8*, ...) @"printf"(i8* %".159")
  call void @"minilua_print_number"(double %"elem_val.13")
  %".162" = bitcast [2 x i8]* @"nl_.21" to i8*
  %".163" = call i32 (i8*, ...) @"printf"(i8* %".162")
  %"dotProd" = alloca double
  store double              0x0, double* %"dotProd"
  %"arr_ptr.23" = load i8*, i8** %"A"
  %".165" = fptosi double              0x0 to i32
  %"idx_adj.23" = sub i32 %".165", 1
  %".166" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.23")
  %".167" = bitcast i8* %".166" to double*
  %"elem_ptr.23" = getelementptr double, double* %".167", i32 %"idx_adj.23"
  %"elem_val.14" = load double, double* %"elem_ptr.23"
  %"arr_ptr.24" = load i8*, i8** %"B"
  %".168" = fptosi double              0x0 to i32
  %"idx_adj.24" = sub i32 %".168", 1
  %".169" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.24")
  %".170" = bitcast i8* %".169" to double*
  %"elem_ptr.24" = getelementptr double, double* %".170", i32 %"idx_adj.24"
  %"elem_val.15" = load double, double* %"elem_ptr.24"
  %"multmp.1" = fmul double %"elem_val.14", %"elem_val.15"
  %"arr_ptr.25" = load i8*, i8** %"A"
  %".171" = fptosi double 0x3ff0000000000000 to i32
  %"idx_adj.25" = sub i32 %".171", 1
  %".172" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.25")
  %".173" = bitcast i8* %".172" to double*
  %"elem_ptr.25" = getelementptr double, double* %".173", i32 %"idx_adj.25"
  %"elem_val.16" = load double, double* %"elem_ptr.25"
  %"arr_ptr.26" = load i8*, i8** %"B"
  %".174" = fptosi double 0x4000000000000000 to i32
  %"idx_adj.26" = sub i32 %".174", 1
  %".175" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.26")
  %".176" = bitcast i8* %".175" to double*
  %"elem_ptr.26" = getelementptr double, double* %".176", i32 %"idx_adj.26"
  %"elem_val.17" = load double, double* %"elem_ptr.26"
  %"multmp.2" = fmul double %"elem_val.16", %"elem_val.17"
  %"addtmp.2" = fadd double %"multmp.1", %"multmp.2"
  store double %"addtmp.2", double* %"dotProd"
  %".178" = bitcast [33 x i8]* @"str_.22" to i8*
  %"dotProd.1" = load double, double* %"dotProd"
  %".179" = bitcast [4 x i8]* @"fmt_.23" to i8*
  %".180" = call i32 (i8*, ...) @"printf"(i8* %".179", i8* %".178")
  call void @"minilua_print_number"(double %"dotProd.1")
  %".182" = bitcast [2 x i8]* @"nl_.24" to i8*
  %".183" = call i32 (i8*, ...) @"printf"(i8* %".182")
  ret i32 0
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
  store double %"addtmp", double* %"idx"
  %"idx.1" = load double, double* %"idx"
  %"idx.2" = load double, double* %"idx"
  %"arr_ptr.16" = load i8*, i8** %"A"
  %".120" = fptosi double %"idx.2" to i32
  %"idx_adj.16" = sub i32 %".120", 1
  %".121" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.16")
  %".122" = bitcast i8* %".121" to double*
  %"elem_ptr.16" = getelementptr double, double* %".122", i32 %"idx_adj.16"
  %"elem_val.8" = load double, double* %"elem_ptr.16"
  %"idx.3" = load double, double* %"idx"
  %"arr_ptr.17" = load i8*, i8** %"B"
  %".123" = fptosi double %"idx.3" to i32
  %"idx_adj.17" = sub i32 %".123", 1
  %".124" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.17")
  %".125" = bitcast i8* %".124" to double*
  %"elem_ptr.17" = getelementptr double, double* %".125", i32 %"idx_adj.17"
  %"elem_val.9" = load double, double* %"elem_ptr.17"
  %"addtmp.1" = fadd double %"elem_val.8", %"elem_val.9"
  %"arr_ptr.18" = load i8*, i8** %"C"
  %".126" = fptosi double %"idx.1" to i32
  %"idx_adj.18" = sub i32 %".126", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.18", i32 %"idx_adj.18")
  %".128" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.18")
  %".129" = bitcast i8* %".128" to double*
  %"elem_ptr.18" = getelementptr double, double* %".129", i32 %"idx_adj.18"
  store double %"addtmp.1", double* %"elem_ptr.18"
  %"col.4" = load double, double* %"col.1"
  %"nextval" = fadd double %"col.4", 0x3ff0000000000000
  store double %"nextval", double* %"col.1"
  br label %"for_cond.1"
for_merge.1:
  %"row.4" = load double, double* %"row.1"
  %"nextval.1" = fadd double %"row.4", 0x3ff0000000000000
  store double %"nextval.1", double* %"row.1"
  br label %"for_cond"
}

@"str_.1" = internal constant [10 x i8] c"Matrix A:\00"
@"fmt_.2" = internal constant [3 x i8] c"%s\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"sp_.4" = internal constant [2 x i8] c" \00"
@"nl_.5" = internal constant [2 x i8] c"\0a\00"
@"sp_.6" = internal constant [2 x i8] c" \00"
@"nl_.7" = internal constant [2 x i8] c"\0a\00"
@"str_.8" = internal constant [10 x i8] c"Matrix B:\00"
@"fmt_.9" = internal constant [3 x i8] c"%s\00"
@"nl_.10" = internal constant [2 x i8] c"\0a\00"
@"sp_.11" = internal constant [2 x i8] c" \00"
@"nl_.12" = internal constant [2 x i8] c"\0a\00"
@"sp_.13" = internal constant [2 x i8] c" \00"
@"nl_.14" = internal constant [2 x i8] c"\0a\00"
@"str_.15" = internal constant [20 x i8] c"Matrix Sum (A + B):\00"
@"fmt_.16" = internal constant [3 x i8] c"%s\00"
@"nl_.17" = internal constant [2 x i8] c"\0a\00"
@"sp_.18" = internal constant [2 x i8] c" \00"
@"nl_.19" = internal constant [2 x i8] c"\0a\00"
@"sp_.20" = internal constant [2 x i8] c" \00"
@"nl_.21" = internal constant [2 x i8] c"\0a\00"
@"str_.22" = internal constant [33 x i8] c"Dot Product (Row 0 A . Col 0 B):\00"
@"fmt_.23" = internal constant [4 x i8] c"%s \00"
@"nl_.24" = internal constant [2 x i8] c"\0a\00"