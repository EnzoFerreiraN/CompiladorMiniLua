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
  call void @"minilua_print_number"(double %"elem_val")
  %".74" = bitcast [2 x i8]* @"sp_.4" to i8*
  %".75" = call i32 (i8*, ...) @"printf"(i8* %".74")
  call void @"minilua_print_number"(double %"elem_val.1")
  %".77" = bitcast [2 x i8]* @"nl_.5" to i8*
  %".78" = call i32 (i8*, ...) @"printf"(i8* %".77")
  %"arr_ptr.10" = load i8*, i8** %"A"
  %".79" = fptosi double 0x4008000000000000 to i32
  call void @"minilua_check_index"(i32 %".79")
  %"idx_adj.10" = sub i32 %".79", 1
  %".81" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.10")
  %".82" = bitcast i8* %".81" to double*
  %"elem_ptr.10" = getelementptr double, double* %".82", i32 %"idx_adj.10"
  %"elem_val.2" = load double, double* %"elem_ptr.10"
  %"arr_ptr.11" = load i8*, i8** %"A"
  %".83" = fptosi double 0x4010000000000000 to i32
  call void @"minilua_check_index"(i32 %".83")
  %"idx_adj.11" = sub i32 %".83", 1
  %".85" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.11")
  %".86" = bitcast i8* %".85" to double*
  %"elem_ptr.11" = getelementptr double, double* %".86", i32 %"idx_adj.11"
  %"elem_val.3" = load double, double* %"elem_ptr.11"
  call void @"minilua_print_number"(double %"elem_val.2")
  %".88" = bitcast [2 x i8]* @"sp_.6" to i8*
  %".89" = call i32 (i8*, ...) @"printf"(i8* %".88")
  call void @"minilua_print_number"(double %"elem_val.3")
  %".91" = bitcast [2 x i8]* @"nl_.7" to i8*
  %".92" = call i32 (i8*, ...) @"printf"(i8* %".91")
  %".93" = bitcast [10 x i8]* @"str_.8" to i8*
  %".94" = bitcast [3 x i8]* @"fmt_.9" to i8*
  %".95" = call i32 (i8*, ...) @"printf"(i8* %".94", i8* %".93")
  %".96" = bitcast [2 x i8]* @"nl_.10" to i8*
  %".97" = call i32 (i8*, ...) @"printf"(i8* %".96")
  %"arr_ptr.12" = load i8*, i8** %"B"
  %".98" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".98")
  %"idx_adj.12" = sub i32 %".98", 1
  %".100" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.12")
  %".101" = bitcast i8* %".100" to double*
  %"elem_ptr.12" = getelementptr double, double* %".101", i32 %"idx_adj.12"
  %"elem_val.4" = load double, double* %"elem_ptr.12"
  %"arr_ptr.13" = load i8*, i8** %"B"
  %".102" = fptosi double 0x4000000000000000 to i32
  call void @"minilua_check_index"(i32 %".102")
  %"idx_adj.13" = sub i32 %".102", 1
  %".104" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.13")
  %".105" = bitcast i8* %".104" to double*
  %"elem_ptr.13" = getelementptr double, double* %".105", i32 %"idx_adj.13"
  %"elem_val.5" = load double, double* %"elem_ptr.13"
  call void @"minilua_print_number"(double %"elem_val.4")
  %".107" = bitcast [2 x i8]* @"sp_.11" to i8*
  %".108" = call i32 (i8*, ...) @"printf"(i8* %".107")
  call void @"minilua_print_number"(double %"elem_val.5")
  %".110" = bitcast [2 x i8]* @"nl_.12" to i8*
  %".111" = call i32 (i8*, ...) @"printf"(i8* %".110")
  %"arr_ptr.14" = load i8*, i8** %"B"
  %".112" = fptosi double 0x4008000000000000 to i32
  call void @"minilua_check_index"(i32 %".112")
  %"idx_adj.14" = sub i32 %".112", 1
  %".114" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.14")
  %".115" = bitcast i8* %".114" to double*
  %"elem_ptr.14" = getelementptr double, double* %".115", i32 %"idx_adj.14"
  %"elem_val.6" = load double, double* %"elem_ptr.14"
  %"arr_ptr.15" = load i8*, i8** %"B"
  %".116" = fptosi double 0x4010000000000000 to i32
  call void @"minilua_check_index"(i32 %".116")
  %"idx_adj.15" = sub i32 %".116", 1
  %".118" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.15")
  %".119" = bitcast i8* %".118" to double*
  %"elem_ptr.15" = getelementptr double, double* %".119", i32 %"idx_adj.15"
  %"elem_val.7" = load double, double* %"elem_ptr.15"
  call void @"minilua_print_number"(double %"elem_val.6")
  %".121" = bitcast [2 x i8]* @"sp_.13" to i8*
  %".122" = call i32 (i8*, ...) @"printf"(i8* %".121")
  call void @"minilua_print_number"(double %"elem_val.7")
  %".124" = bitcast [2 x i8]* @"nl_.14" to i8*
  %".125" = call i32 (i8*, ...) @"printf"(i8* %".124")
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
  %".154" = bitcast [20 x i8]* @"str_.15" to i8*
  %".155" = bitcast [3 x i8]* @"fmt_.16" to i8*
  %".156" = call i32 (i8*, ...) @"printf"(i8* %".155", i8* %".154")
  %".157" = bitcast [2 x i8]* @"nl_.17" to i8*
  %".158" = call i32 (i8*, ...) @"printf"(i8* %".157")
  %"arr_ptr.19" = load i8*, i8** %"C"
  %".159" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".159")
  %"idx_adj.19" = sub i32 %".159", 1
  %".161" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.19")
  %".162" = bitcast i8* %".161" to double*
  %"elem_ptr.19" = getelementptr double, double* %".162", i32 %"idx_adj.19"
  %"elem_val.10" = load double, double* %"elem_ptr.19"
  %"arr_ptr.20" = load i8*, i8** %"C"
  %".163" = fptosi double 0x4000000000000000 to i32
  call void @"minilua_check_index"(i32 %".163")
  %"idx_adj.20" = sub i32 %".163", 1
  %".165" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.20")
  %".166" = bitcast i8* %".165" to double*
  %"elem_ptr.20" = getelementptr double, double* %".166", i32 %"idx_adj.20"
  %"elem_val.11" = load double, double* %"elem_ptr.20"
  call void @"minilua_print_number"(double %"elem_val.10")
  %".168" = bitcast [2 x i8]* @"sp_.18" to i8*
  %".169" = call i32 (i8*, ...) @"printf"(i8* %".168")
  call void @"minilua_print_number"(double %"elem_val.11")
  %".171" = bitcast [2 x i8]* @"nl_.19" to i8*
  %".172" = call i32 (i8*, ...) @"printf"(i8* %".171")
  %"arr_ptr.21" = load i8*, i8** %"C"
  %".173" = fptosi double 0x4008000000000000 to i32
  call void @"minilua_check_index"(i32 %".173")
  %"idx_adj.21" = sub i32 %".173", 1
  %".175" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.21")
  %".176" = bitcast i8* %".175" to double*
  %"elem_ptr.21" = getelementptr double, double* %".176", i32 %"idx_adj.21"
  %"elem_val.12" = load double, double* %"elem_ptr.21"
  %"arr_ptr.22" = load i8*, i8** %"C"
  %".177" = fptosi double 0x4010000000000000 to i32
  call void @"minilua_check_index"(i32 %".177")
  %"idx_adj.22" = sub i32 %".177", 1
  %".179" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.22")
  %".180" = bitcast i8* %".179" to double*
  %"elem_ptr.22" = getelementptr double, double* %".180", i32 %"idx_adj.22"
  %"elem_val.13" = load double, double* %"elem_ptr.22"
  call void @"minilua_print_number"(double %"elem_val.12")
  %".182" = bitcast [2 x i8]* @"sp_.20" to i8*
  %".183" = call i32 (i8*, ...) @"printf"(i8* %".182")
  call void @"minilua_print_number"(double %"elem_val.13")
  %".185" = bitcast [2 x i8]* @"nl_.21" to i8*
  %".186" = call i32 (i8*, ...) @"printf"(i8* %".185")
  %"dotProd" = alloca double
  store double              0x0, double* %"dotProd"
  %"arr_ptr.23" = load i8*, i8** %"A"
  %".188" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".188")
  %"idx_adj.23" = sub i32 %".188", 1
  %".190" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.23")
  %".191" = bitcast i8* %".190" to double*
  %"elem_ptr.23" = getelementptr double, double* %".191", i32 %"idx_adj.23"
  %"elem_val.14" = load double, double* %"elem_ptr.23"
  %"arr_ptr.24" = load i8*, i8** %"B"
  %".192" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".192")
  %"idx_adj.24" = sub i32 %".192", 1
  %".194" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.24")
  %".195" = bitcast i8* %".194" to double*
  %"elem_ptr.24" = getelementptr double, double* %".195", i32 %"idx_adj.24"
  %"elem_val.15" = load double, double* %"elem_ptr.24"
  %"multmp.1" = fmul double %"elem_val.14", %"elem_val.15"
  %"arr_ptr.25" = load i8*, i8** %"A"
  %".196" = fptosi double 0x4000000000000000 to i32
  call void @"minilua_check_index"(i32 %".196")
  %"idx_adj.25" = sub i32 %".196", 1
  %".198" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.25")
  %".199" = bitcast i8* %".198" to double*
  %"elem_ptr.25" = getelementptr double, double* %".199", i32 %"idx_adj.25"
  %"elem_val.16" = load double, double* %"elem_ptr.25"
  %"arr_ptr.26" = load i8*, i8** %"B"
  %".200" = fptosi double 0x4008000000000000 to i32
  call void @"minilua_check_index"(i32 %".200")
  %"idx_adj.26" = sub i32 %".200", 1
  %".202" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.26")
  %".203" = bitcast i8* %".202" to double*
  %"elem_ptr.26" = getelementptr double, double* %".203", i32 %"idx_adj.26"
  %"elem_val.17" = load double, double* %"elem_ptr.26"
  %"multmp.2" = fmul double %"elem_val.16", %"elem_val.17"
  %"addtmp.3" = fadd double %"multmp.1", %"multmp.2"
  store double %"addtmp.3", double* %"dotProd"
  %".205" = bitcast [33 x i8]* @"str_.22" to i8*
  %"dotProd.1" = load double, double* %"dotProd"
  %".206" = bitcast [4 x i8]* @"fmt_.23" to i8*
  %".207" = call i32 (i8*, ...) @"printf"(i8* %".206", i8* %".205")
  call void @"minilua_print_number"(double %"dotProd.1")
  %".209" = bitcast [2 x i8]* @"nl_.24" to i8*
  %".210" = call i32 (i8*, ...) @"printf"(i8* %".209")
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
  %"addtmp.1" = fadd double %"addtmp", 0x3ff0000000000000
  store double %"addtmp.1", double* %"idx"
  %"idx.1" = load double, double* %"idx"
  %"idx.2" = load double, double* %"idx"
  %"arr_ptr.16" = load i8*, i8** %"A"
  %".136" = fptosi double %"idx.2" to i32
  call void @"minilua_check_index"(i32 %".136")
  %"idx_adj.16" = sub i32 %".136", 1
  %".138" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.16")
  %".139" = bitcast i8* %".138" to double*
  %"elem_ptr.16" = getelementptr double, double* %".139", i32 %"idx_adj.16"
  %"elem_val.8" = load double, double* %"elem_ptr.16"
  %"idx.3" = load double, double* %"idx"
  %"arr_ptr.17" = load i8*, i8** %"B"
  %".140" = fptosi double %"idx.3" to i32
  call void @"minilua_check_index"(i32 %".140")
  %"idx_adj.17" = sub i32 %".140", 1
  %".142" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.17")
  %".143" = bitcast i8* %".142" to double*
  %"elem_ptr.17" = getelementptr double, double* %".143", i32 %"idx_adj.17"
  %"elem_val.9" = load double, double* %"elem_ptr.17"
  %"addtmp.2" = fadd double %"elem_val.8", %"elem_val.9"
  %"arr_ptr.18" = load i8*, i8** %"C"
  %".144" = fptosi double %"idx.1" to i32
  call void @"minilua_check_index"(i32 %".144")
  %"idx_adj.18" = sub i32 %".144", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.18", i32 %"idx_adj.18")
  %".147" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.18")
  %".148" = bitcast i8* %".147" to double*
  %"elem_ptr.18" = getelementptr double, double* %".148", i32 %"idx_adj.18"
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