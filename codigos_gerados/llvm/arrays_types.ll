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
  %"arrInt" = alloca i8*
  store i8* null, i8** %"arrInt"
  %".3" = call i8* @"minilua_new_array"(i32 8)
  store i8* %".3", i8** %"arrInt"
  %"arr_ptr" = load i8*, i8** %"arrInt"
  %".5" = fptosi double              0x0 to i32
  %"idx_adj" = sub i32 %".5", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr", i32 %"idx_adj")
  %".7" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr")
  %".8" = bitcast i8* %".7" to double*
  %"elem_ptr" = getelementptr double, double* %".8", i32 %"idx_adj"
  store double 0x4024000000000000, double* %"elem_ptr"
  %"arr_ptr.1" = load i8*, i8** %"arrInt"
  %".10" = fptosi double 0x3ff0000000000000 to i32
  %"idx_adj.1" = sub i32 %".10", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.1", i32 %"idx_adj.1")
  %".12" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.1")
  %".13" = bitcast i8* %".12" to double*
  %"elem_ptr.1" = getelementptr double, double* %".13", i32 %"idx_adj.1"
  store double 0x4034000000000000, double* %"elem_ptr.1"
  %"arr_ptr.2" = load i8*, i8** %"arrInt"
  %".15" = fptosi double              0x0 to i32
  %"idx_adj.2" = sub i32 %".15", 1
  %".16" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.2")
  %".17" = bitcast i8* %".16" to double*
  %"elem_ptr.2" = getelementptr double, double* %".17", i32 %"idx_adj.2"
  %"elem_val" = load double, double* %"elem_ptr.2"
  call void @"minilua_print_number"(double %"elem_val")
  %".19" = bitcast [2 x i8]* @"nl_.1" to i8*
  %".20" = call i32 (i8*, ...) @"printf"(i8* %".19")
  %"arr_ptr.3" = load i8*, i8** %"arrInt"
  %".21" = fptosi double 0x3ff0000000000000 to i32
  %"idx_adj.3" = sub i32 %".21", 1
  %".22" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.3")
  %".23" = bitcast i8* %".22" to double*
  %"elem_ptr.3" = getelementptr double, double* %".23", i32 %"idx_adj.3"
  %"elem_val.1" = load double, double* %"elem_ptr.3"
  call void @"minilua_print_number"(double %"elem_val.1")
  %".25" = bitcast [2 x i8]* @"nl_.2" to i8*
  %".26" = call i32 (i8*, ...) @"printf"(i8* %".25")
  %"arrStr" = alloca i8*
  store i8* null, i8** %"arrStr"
  %".28" = call i8* @"minilua_new_array"(i32 4)
  store i8* %".28", i8** %"arrStr"
  %".30" = bitcast [6 x i8]* @"str_.3" to i8*
  %"arr_ptr.4" = load i8*, i8** %"arrStr"
  %".31" = fptosi double              0x0 to i32
  %"idx_adj.4" = sub i32 %".31", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.4", i32 %"idx_adj.4")
  %".33" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.4")
  %".34" = bitcast i8* %".33" to i8**
  %"elem_ptr.4" = getelementptr i8*, i8** %".34", i32 %"idx_adj.4"
  store i8* %".30", i8** %"elem_ptr.4"
  %".36" = bitcast [6 x i8]* @"str_.4" to i8*
  %"arr_ptr.5" = load i8*, i8** %"arrStr"
  %".37" = fptosi double 0x3ff0000000000000 to i32
  %"idx_adj.5" = sub i32 %".37", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.5", i32 %"idx_adj.5")
  %".39" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.5")
  %".40" = bitcast i8* %".39" to i8**
  %"elem_ptr.5" = getelementptr i8*, i8** %".40", i32 %"idx_adj.5"
  store i8* %".36", i8** %"elem_ptr.5"
  %"arr_ptr.6" = load i8*, i8** %"arrStr"
  %".42" = fptosi double              0x0 to i32
  %"idx_adj.6" = sub i32 %".42", 1
  %".43" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.6")
  %".44" = bitcast i8* %".43" to i8**
  %"elem_ptr.6" = getelementptr i8*, i8** %".44", i32 %"idx_adj.6"
  %"elem_val.2" = load i8*, i8** %"elem_ptr.6"
  %"is_null" = icmp eq i8* %"elem_val.2", null
  %".45" = bitcast [1 x i8]* @"empty_string_const" to i8*
  %"safe_str" = select  i1 %"is_null", i8* %".45", i8* %"elem_val.2"
  %".46" = bitcast [2 x i8]* @"str_.5" to i8*
  %"len1" = call i32 @"strlen"(i8* %"safe_str")
  %"len2" = call i32 @"strlen"(i8* %".46")
  %"total_len" = add i32 %"len1", %"len2"
  %".47" = add i32 %"total_len", 1
  %"new_str_void" = call i8* @"malloc"(i32 %".47")
  %".48" = call i8* @"strcpy"(i8* %"new_str_void", i8* %"safe_str")
  %".49" = call i8* @"strcat"(i8* %"new_str_void", i8* %".46")
  %"arr_ptr.7" = load i8*, i8** %"arrStr"
  %".50" = fptosi double 0x3ff0000000000000 to i32
  %"idx_adj.7" = sub i32 %".50", 1
  %".51" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.7")
  %".52" = bitcast i8* %".51" to i8**
  %"elem_ptr.7" = getelementptr i8*, i8** %".52", i32 %"idx_adj.7"
  %"elem_val.3" = load i8*, i8** %"elem_ptr.7"
  %"is_null.1" = icmp eq i8* %"elem_val.3", null
  %".53" = bitcast [1 x i8]* @"empty_string_const" to i8*
  %"safe_str.1" = select  i1 %"is_null.1", i8* %".53", i8* %"elem_val.3"
  %"len1.1" = call i32 @"strlen"(i8* %"new_str_void")
  %"len2.1" = call i32 @"strlen"(i8* %"safe_str.1")
  %"total_len.1" = add i32 %"len1.1", %"len2.1"
  %".54" = add i32 %"total_len.1", 1
  %"new_str_void.1" = call i8* @"malloc"(i32 %".54")
  %".55" = call i8* @"strcpy"(i8* %"new_str_void.1", i8* %"new_str_void")
  %".56" = call i8* @"strcat"(i8* %"new_str_void.1", i8* %"safe_str.1")
  %".57" = bitcast [3 x i8]* @"fmt_.6" to i8*
  %".58" = call i32 (i8*, ...) @"printf"(i8* %".57", i8* %"new_str_void.1")
  %".59" = bitcast [2 x i8]* @"nl_.7" to i8*
  %".60" = call i32 (i8*, ...) @"printf"(i8* %".59")
  %"s" = alloca i8*
  %".61" = bitcast [8 x i8]* @"str_.8" to i8*
  store i8* %".61", i8** %"s"
  %"l" = alloca double
  %"s.1" = load i8*, i8** %"s"
  %"len" = call i32 @"strlen"(i8* %"s.1")
  %".63" = sitofp i32 %"len" to double
  store double %".63", double* %"l"
  %"l.1" = load double, double* %"l"
  call void @"minilua_print_number"(double %"l.1")
  %".66" = bitcast [2 x i8]* @"nl_.9" to i8*
  %".67" = call i32 (i8*, ...) @"printf"(i8* %".66")
  %"n" = alloca double
  store double 0x4024000000000000, double* %"n"
  %"n.1" = load double, double* %"n"
  call void @"minilua_print_number"(double %"n.1")
  %".70" = bitcast [2 x i8]* @"nl_.10" to i8*
  %".71" = call i32 (i8*, ...) @"printf"(i8* %".70")
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
  call void @"minilua_print_number"(double %"res.1")
  %".76" = bitcast [2 x i8]* @"nl_.11" to i8*
  %".77" = call i32 (i8*, ...) @"printf"(i8* %".76")
  ret i32 0
}

@"nl_.1" = internal constant [2 x i8] c"\0a\00"
@"nl_.2" = internal constant [2 x i8] c"\0a\00"
@"str_.3" = internal constant [6 x i8] c"Hello\00"
@"str_.4" = internal constant [6 x i8] c"World\00"
@"empty_string_const" = internal constant [1 x i8] c"\00"
@"str_.5" = internal constant [2 x i8] c" \00"
@"fmt_.6" = internal constant [3 x i8] c"%s\00"
@"nl_.7" = internal constant [2 x i8] c"\0a\00"
@"str_.8" = internal constant [8 x i8] c"Tamanho\00"
@"nl_.9" = internal constant [2 x i8] c"\0a\00"
@"nl_.10" = internal constant [2 x i8] c"\0a\00"
@"nl_.11" = internal constant [2 x i8] c"\0a\00"