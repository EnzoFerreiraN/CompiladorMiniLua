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
  %"arr" = alloca i8*
  store i8* null, i8** %"arr"
  %".3" = call i8* @"minilua_new_array"(i32 8)
  store i8* %".3", i8** %"arr"
  %"arr_ptr" = load i8*, i8** %"arr"
  %".5" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".5")
  %"idx_adj" = sub i32 %".5", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr", i32 %"idx_adj")
  %".8" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr")
  %".9" = bitcast i8* %".8" to double*
  %"elem_ptr" = getelementptr double, double* %".9", i32 %"idx_adj"
  store double 0x4024000000000000, double* %"elem_ptr"
  %"arr_ptr.1" = load i8*, i8** %"arr"
  %".11" = fptosi double 0x4018000000000000 to i32
  call void @"minilua_check_index"(i32 %".11")
  %"idx_adj.1" = sub i32 %".11", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.1", i32 %"idx_adj.1")
  %".14" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.1")
  %".15" = bitcast i8* %".14" to double*
  %"elem_ptr.1" = getelementptr double, double* %".15", i32 %"idx_adj.1"
  store double 0x4034000000000000, double* %"elem_ptr.1"
  %"arr_ptr.2" = load i8*, i8** %"arr"
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
  %"arr_ptr.3" = load i8*, i8** %"arr"
  %".24" = fptosi double 0x4018000000000000 to i32
  call void @"minilua_check_index"(i32 %".24")
  %"idx_adj.3" = sub i32 %".24", 1
  %".26" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.3")
  %".27" = bitcast i8* %".26" to double*
  %"elem_ptr.3" = getelementptr double, double* %".27", i32 %"idx_adj.3"
  %"elem_val.1" = load double, double* %"elem_ptr.3"
  call void @"minilua_print_number"(double %"elem_val.1")
  %".29" = bitcast [2 x i8]* @"nl_.2" to i8*
  %".30" = call i32 (i8*, ...) @"printf"(i8* %".29")
  %"arr.1" = load i8*, i8** %"arr"
  %"arr_len" = call i32 @"minilua_array_length"(i8* %"arr.1")
  %".31" = sitofp i32 %"arr_len" to double
  call void @"minilua_print_number"(double %".31")
  %".33" = bitcast [2 x i8]* @"nl_.3" to i8*
  %".34" = call i32 (i8*, ...) @"printf"(i8* %".33")
  ret i32 0
}

@"nl_.1" = internal constant [2 x i8] c"\0a\00"
@"nl_.2" = internal constant [2 x i8] c"\0a\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"