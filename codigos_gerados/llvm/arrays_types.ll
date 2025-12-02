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
  call void @"minilua_print_number"(double %"elem_val")
  %".22" = bitcast [2 x i8]* @"nl_.1" to i8*
  %".23" = call i32 (i8*, ...) @"printf"(i8* %".22")
  %"arr_ptr.3" = load i8*, i8** %"arrInt"
  %".24" = fptosi double 0x4000000000000000 to i32
  call void @"minilua_check_index"(i32 %".24")
  %"idx_adj.3" = sub i32 %".24", 1
  %".26" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.3")
  %".27" = bitcast i8* %".26" to double*
  %"elem_ptr.3" = getelementptr double, double* %".27", i32 %"idx_adj.3"
  %"elem_val.1" = load double, double* %"elem_ptr.3"
  call void @"minilua_print_number"(double %"elem_val.1")
  %".29" = bitcast [2 x i8]* @"nl_.2" to i8*
  %".30" = call i32 (i8*, ...) @"printf"(i8* %".29")
  %"arrStr" = alloca i8*
  store i8* null, i8** %"arrStr"
  %".32" = call i8* @"minilua_new_array"(i32 4)
  store i8* %".32", i8** %"arrStr"
  %".34" = bitcast [6 x i8]* @"str_.3" to i8*
  %"arr_ptr.4" = load i8*, i8** %"arrStr"
  %".35" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".35")
  %"idx_adj.4" = sub i32 %".35", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.4", i32 %"idx_adj.4")
  %".38" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.4")
  %".39" = bitcast i8* %".38" to i8**
  %"elem_ptr.4" = getelementptr i8*, i8** %".39", i32 %"idx_adj.4"
  store i8* %".34", i8** %"elem_ptr.4"
  %".41" = bitcast [6 x i8]* @"str_.4" to i8*
  %"arr_ptr.5" = load i8*, i8** %"arrStr"
  %".42" = fptosi double 0x4000000000000000 to i32
  call void @"minilua_check_index"(i32 %".42")
  %"idx_adj.5" = sub i32 %".42", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.5", i32 %"idx_adj.5")
  %".45" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.5")
  %".46" = bitcast i8* %".45" to i8**
  %"elem_ptr.5" = getelementptr i8*, i8** %".46", i32 %"idx_adj.5"
  store i8* %".41", i8** %"elem_ptr.5"
  %"arr_ptr.6" = load i8*, i8** %"arrStr"
  %".48" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".48")
  %"idx_adj.6" = sub i32 %".48", 1
  %".50" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.6")
  %".51" = bitcast i8* %".50" to i8**
  %"elem_ptr.6" = getelementptr i8*, i8** %".51", i32 %"idx_adj.6"
  %"elem_val.2" = load i8*, i8** %"elem_ptr.6"
  %"is_null" = icmp eq i8* %"elem_val.2", null
  %".52" = bitcast [1 x i8]* @"empty_string_const" to i8*
  %"safe_str" = select  i1 %"is_null", i8* %".52", i8* %"elem_val.2"
  %".53" = bitcast [2 x i8]* @"str_.5" to i8*
  %"len1" = call i32 @"strlen"(i8* %"safe_str")
  %"len2" = call i32 @"strlen"(i8* %".53")
  %"total_len" = add i32 %"len1", %"len2"
  %".54" = add i32 %"total_len", 1
  %"new_str_void" = call i8* @"malloc"(i32 %".54")
  %".55" = call i8* @"strcpy"(i8* %"new_str_void", i8* %"safe_str")
  %".56" = call i8* @"strcat"(i8* %"new_str_void", i8* %".53")
  %"arr_ptr.7" = load i8*, i8** %"arrStr"
  %".57" = fptosi double 0x4000000000000000 to i32
  call void @"minilua_check_index"(i32 %".57")
  %"idx_adj.7" = sub i32 %".57", 1
  %".59" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.7")
  %".60" = bitcast i8* %".59" to i8**
  %"elem_ptr.7" = getelementptr i8*, i8** %".60", i32 %"idx_adj.7"
  %"elem_val.3" = load i8*, i8** %"elem_ptr.7"
  %"is_null.1" = icmp eq i8* %"elem_val.3", null
  %".61" = bitcast [1 x i8]* @"empty_string_const" to i8*
  %"safe_str.1" = select  i1 %"is_null.1", i8* %".61", i8* %"elem_val.3"
  %"len1.1" = call i32 @"strlen"(i8* %"new_str_void")
  %"len2.1" = call i32 @"strlen"(i8* %"safe_str.1")
  %"total_len.1" = add i32 %"len1.1", %"len2.1"
  %".62" = add i32 %"total_len.1", 1
  %"new_str_void.1" = call i8* @"malloc"(i32 %".62")
  %".63" = call i8* @"strcpy"(i8* %"new_str_void.1", i8* %"new_str_void")
  %".64" = call i8* @"strcat"(i8* %"new_str_void.1", i8* %"safe_str.1")
  %".65" = bitcast [3 x i8]* @"fmt_.6" to i8*
  %".66" = call i32 (i8*, ...) @"printf"(i8* %".65", i8* %"new_str_void.1")
  %".67" = bitcast [2 x i8]* @"nl_.7" to i8*
  %".68" = call i32 (i8*, ...) @"printf"(i8* %".67")
  %"s" = alloca i8*
  %".69" = bitcast [8 x i8]* @"str_.8" to i8*
  store i8* %".69", i8** %"s"
  %"l" = alloca double
  %"s.1" = load i8*, i8** %"s"
  %"len" = call i32 @"strlen"(i8* %"s.1")
  %".71" = sitofp i32 %"len" to double
  store double %".71", double* %"l"
  %"l.1" = load double, double* %"l"
  call void @"minilua_print_number"(double %"l.1")
  %".74" = bitcast [2 x i8]* @"nl_.9" to i8*
  %".75" = call i32 (i8*, ...) @"printf"(i8* %".74")
  %"n" = alloca double
  store double 0x4024000000000000, double* %"n"
  %"n.1" = load double, double* %"n"
  call void @"minilua_print_number"(double %"n.1")
  %".78" = bitcast [2 x i8]* @"nl_.10" to i8*
  %".79" = call i32 (i8*, ...) @"printf"(i8* %".78")
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
  %".84" = bitcast [2 x i8]* @"nl_.11" to i8*
  %".85" = call i32 (i8*, ...) @"printf"(i8* %".84")
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