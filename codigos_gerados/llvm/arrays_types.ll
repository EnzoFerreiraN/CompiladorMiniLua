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
  %"arrInt" = alloca i8*
  store i8* null, i8** %"arrInt"
  %".3" = call i8* @"minilua_new_array"(i32 8)
  store i8* %".3", i8** %"arrInt"
  %"arr_ptr" = load i8*, i8** %"arrInt"
  %".5" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".5")
  %"idx_adj" = sub i32 %".5", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr", i32 %"idx_adj")
  %".8" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr")
  %".9" = bitcast i8* %".8" to double*
  %"elem_ptr" = getelementptr double, double* %".9", i32 %"idx_adj"
  store double 0x4024000000000000, double* %"elem_ptr"
  %"arr_ptr.1" = load i8*, i8** %"arrInt"
  %".11" = fptosi double 0x4000000000000000 to i32
  call void @"minilua_check_index"(i32 %".11")
  %"idx_adj.1" = sub i32 %".11", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.1", i32 %"idx_adj.1")
  %".14" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.1")
  %".15" = bitcast i8* %".14" to double*
  %"elem_ptr.1" = getelementptr double, double* %".15", i32 %"idx_adj.1"
  store double 0x4034000000000000, double* %"elem_ptr.1"
  %"arr_ptr.2" = load i8*, i8** %"arrInt"
  %".17" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".17")
  %"idx_adj.2" = sub i32 %".17", 1
  %".19" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.2")
  %".20" = bitcast i8* %".19" to double*
  %"elem_ptr.2" = getelementptr double, double* %".20", i32 %"idx_adj.2"
  %"elem_val" = load double, double* %"elem_ptr.2"
  %".21" = fptosi double %"elem_val" to i64
  %".22" = sitofp i64 %".21" to double
  %"is_int" = fcmp oeq double %"elem_val", %".22"
  br i1 %"is_int", label %"print_int", label %"print_float"
print_int:
  %".24" = bitcast [5 x i8]* @"fmt_int_.1" to i8*
  %".25" = call i32 (i8*, ...) @"printf"(i8* %".24", i64 %".21")
  br label %"print_merge"
print_float:
  %".27" = bitcast [6 x i8]* @"fmt_flt_.2" to i8*
  %".28" = call i32 (i8*, ...) @"printf"(i8* %".27", double %"elem_val")
  br label %"print_merge"
print_merge:
  %".30" = bitcast [2 x i8]* @"nl_.3" to i8*
  %".31" = call i32 (i8*, ...) @"printf"(i8* %".30")
  %"arr_ptr.3" = load i8*, i8** %"arrInt"
  %".32" = fptosi double 0x4000000000000000 to i32
  call void @"minilua_check_index"(i32 %".32")
  %"idx_adj.3" = sub i32 %".32", 1
  %".34" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.3")
  %".35" = bitcast i8* %".34" to double*
  %"elem_ptr.3" = getelementptr double, double* %".35", i32 %"idx_adj.3"
  %"elem_val.1" = load double, double* %"elem_ptr.3"
  %".36" = fptosi double %"elem_val.1" to i64
  %".37" = sitofp i64 %".36" to double
  %"is_int.1" = fcmp oeq double %"elem_val.1", %".37"
  br i1 %"is_int.1", label %"print_int.1", label %"print_float.1"
print_int.1:
  %".39" = bitcast [5 x i8]* @"fmt_int_.4" to i8*
  %".40" = call i32 (i8*, ...) @"printf"(i8* %".39", i64 %".36")
  br label %"print_merge.1"
print_float.1:
  %".42" = bitcast [6 x i8]* @"fmt_flt_.5" to i8*
  %".43" = call i32 (i8*, ...) @"printf"(i8* %".42", double %"elem_val.1")
  br label %"print_merge.1"
print_merge.1:
  %".45" = bitcast [2 x i8]* @"nl_.6" to i8*
  %".46" = call i32 (i8*, ...) @"printf"(i8* %".45")
  %"arrStr" = alloca i8*
  store i8* null, i8** %"arrStr"
  %".48" = call i8* @"minilua_new_array"(i32 4)
  store i8* %".48", i8** %"arrStr"
  %".50" = bitcast [6 x i8]* @"str_.7" to i8*
  %"arr_ptr.4" = load i8*, i8** %"arrStr"
  %".51" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".51")
  %"idx_adj.4" = sub i32 %".51", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.4", i32 %"idx_adj.4")
  %".54" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.4")
  %".55" = bitcast i8* %".54" to i8**
  %"elem_ptr.4" = getelementptr i8*, i8** %".55", i32 %"idx_adj.4"
  store i8* %".50", i8** %"elem_ptr.4"
  %".57" = bitcast [6 x i8]* @"str_.8" to i8*
  %"arr_ptr.5" = load i8*, i8** %"arrStr"
  %".58" = fptosi double 0x4000000000000000 to i32
  call void @"minilua_check_index"(i32 %".58")
  %"idx_adj.5" = sub i32 %".58", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.5", i32 %"idx_adj.5")
  %".61" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.5")
  %".62" = bitcast i8* %".61" to i8**
  %"elem_ptr.5" = getelementptr i8*, i8** %".62", i32 %"idx_adj.5"
  store i8* %".57", i8** %"elem_ptr.5"
  %"arr_ptr.6" = load i8*, i8** %"arrStr"
  %".64" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".64")
  %"idx_adj.6" = sub i32 %".64", 1
  %".66" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.6")
  %".67" = bitcast i8* %".66" to i8**
  %"elem_ptr.6" = getelementptr i8*, i8** %".67", i32 %"idx_adj.6"
  %"elem_val.2" = load i8*, i8** %"elem_ptr.6"
  %"is_null" = icmp eq i8* %"elem_val.2", null
  %".68" = bitcast [1 x i8]* @"empty_string_const" to i8*
  %"safe_str" = select  i1 %"is_null", i8* %".68", i8* %"elem_val.2"
  %".69" = bitcast [2 x i8]* @"str_.9" to i8*
  %"len1" = call i32 @"strlen"(i8* %"safe_str")
  %"len2" = call i32 @"strlen"(i8* %".69")
  %"total_len" = add i32 %"len1", %"len2"
  %".70" = add i32 %"total_len", 1
  %"new_str_void" = call i8* @"malloc"(i32 %".70")
  %".71" = call i8* @"strcpy"(i8* %"new_str_void", i8* %"safe_str")
  %".72" = call i8* @"strcat"(i8* %"new_str_void", i8* %".69")
  %"arr_ptr.7" = load i8*, i8** %"arrStr"
  %".73" = fptosi double 0x4000000000000000 to i32
  call void @"minilua_check_index"(i32 %".73")
  %"idx_adj.7" = sub i32 %".73", 1
  %".75" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.7")
  %".76" = bitcast i8* %".75" to i8**
  %"elem_ptr.7" = getelementptr i8*, i8** %".76", i32 %"idx_adj.7"
  %"elem_val.3" = load i8*, i8** %"elem_ptr.7"
  %"is_null.1" = icmp eq i8* %"elem_val.3", null
  %".77" = bitcast [1 x i8]* @"empty_string_const" to i8*
  %"safe_str.1" = select  i1 %"is_null.1", i8* %".77", i8* %"elem_val.3"
  %"len1.1" = call i32 @"strlen"(i8* %"new_str_void")
  %"len2.1" = call i32 @"strlen"(i8* %"safe_str.1")
  %"total_len.1" = add i32 %"len1.1", %"len2.1"
  %".78" = add i32 %"total_len.1", 1
  %"new_str_void.1" = call i8* @"malloc"(i32 %".78")
  %".79" = call i8* @"strcpy"(i8* %"new_str_void.1", i8* %"new_str_void")
  %".80" = call i8* @"strcat"(i8* %"new_str_void.1", i8* %"safe_str.1")
  %".81" = bitcast [3 x i8]* @"fmt_.10" to i8*
  %".82" = call i32 (i8*, ...) @"printf"(i8* %".81", i8* %"new_str_void.1")
  %".83" = bitcast [2 x i8]* @"nl_.11" to i8*
  %".84" = call i32 (i8*, ...) @"printf"(i8* %".83")
  %"s" = alloca i8*
  %".85" = bitcast [8 x i8]* @"str_.12" to i8*
  store i8* %".85", i8** %"s"
  %"l" = alloca double
  %"s.1" = load i8*, i8** %"s"
  %"len" = call i32 @"strlen"(i8* %"s.1")
  %".87" = sitofp i32 %"len" to double
  store double %".87", double* %"l"
  %"l.1" = load double, double* %"l"
  %".89" = fptosi double %"l.1" to i64
  %".90" = sitofp i64 %".89" to double
  %"is_int.2" = fcmp oeq double %"l.1", %".90"
  br i1 %"is_int.2", label %"print_int.2", label %"print_float.2"
print_int.2:
  %".92" = bitcast [5 x i8]* @"fmt_int_.13" to i8*
  %".93" = call i32 (i8*, ...) @"printf"(i8* %".92", i64 %".89")
  br label %"print_merge.2"
print_float.2:
  %".95" = bitcast [6 x i8]* @"fmt_flt_.14" to i8*
  %".96" = call i32 (i8*, ...) @"printf"(i8* %".95", double %"l.1")
  br label %"print_merge.2"
print_merge.2:
  %".98" = bitcast [2 x i8]* @"nl_.15" to i8*
  %".99" = call i32 (i8*, ...) @"printf"(i8* %".98")
  %"n" = alloca double
  store double 0x4024000000000000, double* %"n"
  %"n.1" = load double, double* %"n"
  %".101" = fptosi double %"n.1" to i64
  %".102" = sitofp i64 %".101" to double
  %"is_int.3" = fcmp oeq double %"n.1", %".102"
  br i1 %"is_int.3", label %"print_int.3", label %"print_float.3"
print_int.3:
  %".104" = bitcast [5 x i8]* @"fmt_int_.16" to i8*
  %".105" = call i32 (i8*, ...) @"printf"(i8* %".104", i64 %".101")
  br label %"print_merge.3"
print_float.3:
  %".107" = bitcast [6 x i8]* @"fmt_flt_.17" to i8*
  %".108" = call i32 (i8*, ...) @"printf"(i8* %".107", double %"n.1")
  br label %"print_merge.3"
print_merge.3:
  %".110" = bitcast [2 x i8]* @"nl_.18" to i8*
  %".111" = call i32 (i8*, ...) @"printf"(i8* %".110")
  %"i" = alloca double
  store double 0x4014000000000000, double* %"i"
  %"f" = alloca double
  store double 0x4016000000000000, double* %"f"
  %"res" = alloca double
  %"i.1" = load double, double* %"i"
  %"f.1" = load double, double* %"f"
  %"addtmp" = fadd double %"i.1", %"f.1"
  store double %"addtmp", double* %"res"
  %"res.1" = load double, double* %"res"
  %".115" = fptosi double %"res.1" to i64
  %".116" = sitofp i64 %".115" to double
  %"is_int.4" = fcmp oeq double %"res.1", %".116"
  br i1 %"is_int.4", label %"print_int.4", label %"print_float.4"
print_int.4:
  %".118" = bitcast [5 x i8]* @"fmt_int_.19" to i8*
  %".119" = call i32 (i8*, ...) @"printf"(i8* %".118", i64 %".115")
  br label %"print_merge.4"
print_float.4:
  %".121" = bitcast [6 x i8]* @"fmt_flt_.20" to i8*
  %".122" = call i32 (i8*, ...) @"printf"(i8* %".121", double %"res.1")
  br label %"print_merge.4"
print_merge.4:
  %".124" = bitcast [2 x i8]* @"nl_.21" to i8*
  %".125" = call i32 (i8*, ...) @"printf"(i8* %".124")
  ret i32 0
}

@"fmt_int_.1" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.2" = internal constant [6 x i8] c"%.14g\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.4" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.5" = internal constant [6 x i8] c"%.14g\00"
@"nl_.6" = internal constant [2 x i8] c"\0a\00"
@"str_.7" = internal constant [6 x i8] c"Hello\00"
@"str_.8" = internal constant [6 x i8] c"World\00"
@"empty_string_const" = internal constant [1 x i8] c"\00"
@"str_.9" = internal constant [2 x i8] c" \00"
@"fmt_.10" = internal constant [3 x i8] c"%s\00"
@"nl_.11" = internal constant [2 x i8] c"\0a\00"
@"str_.12" = internal constant [8 x i8] c"Tamanho\00"
@"fmt_int_.13" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.14" = internal constant [6 x i8] c"%.14g\00"
@"nl_.15" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.16" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.17" = internal constant [6 x i8] c"%.14g\00"
@"nl_.18" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.19" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.20" = internal constant [6 x i8] c"%.14g\00"
@"nl_.21" = internal constant [2 x i8] c"\0a\00"