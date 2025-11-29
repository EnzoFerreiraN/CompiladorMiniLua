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
  %"arr" = alloca i8*
  store i8* null, i8** %"arr"
  %".3" = call i8* @"minilua_new_array"(i32 8)
  store i8* %".3", i8** %"arr"
  %"arr_ptr" = load i8*, i8** %"arr"
  %".5" = fptosi double 0x3ff0000000000000 to i32
  %"idx_adj" = sub i32 %".5", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr", i32 %"idx_adj")
  %".7" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr")
  %".8" = bitcast i8* %".7" to double*
  %"elem_ptr" = getelementptr double, double* %".8", i32 %"idx_adj"
  store double 0x4024000000000000, double* %"elem_ptr"
  %"arr_ptr.1" = load i8*, i8** %"arr"
  %".10" = fptosi double 0x4018000000000000 to i32
  %"idx_adj.1" = sub i32 %".10", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.1", i32 %"idx_adj.1")
  %".12" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.1")
  %".13" = bitcast i8* %".12" to double*
  %"elem_ptr.1" = getelementptr double, double* %".13", i32 %"idx_adj.1"
  store double 0x4034000000000000, double* %"elem_ptr.1"
  %"arr_ptr.2" = load i8*, i8** %"arr"
  %".15" = fptosi double 0x3ff0000000000000 to i32
  %"idx_adj.2" = sub i32 %".15", 1
  %".16" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.2")
  %".17" = bitcast i8* %".16" to double*
  %"elem_ptr.2" = getelementptr double, double* %".17", i32 %"idx_adj.2"
  %"elem_val" = load double, double* %"elem_ptr.2"
  call void @"minilua_print_number"(double %"elem_val")
  %".19" = bitcast [2 x i8]* @"nl_.1" to i8*
  %".20" = call i32 (i8*, ...) @"printf"(i8* %".19")
  %"arr_ptr.3" = load i8*, i8** %"arr"
  %".21" = fptosi double 0x4018000000000000 to i32
  %"idx_adj.3" = sub i32 %".21", 1
  %".22" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.3")
  %".23" = bitcast i8* %".22" to double*
  %"elem_ptr.3" = getelementptr double, double* %".23", i32 %"idx_adj.3"
  %"elem_val.1" = load double, double* %"elem_ptr.3"
  call void @"minilua_print_number"(double %"elem_val.1")
  %".25" = bitcast [2 x i8]* @"nl_.2" to i8*
  %".26" = call i32 (i8*, ...) @"printf"(i8* %".25")
  %"arr.1" = load i8*, i8** %"arr"
  %"arr_len" = call i32 @"minilua_array_length"(i8* %"arr.1")
  %".27" = sitofp i32 %"arr_len" to double
  call void @"minilua_print_number"(double %".27")
  %".29" = bitcast [2 x i8]* @"nl_.3" to i8*
  %".30" = call i32 (i8*, ...) @"printf"(i8* %".29")
  ret i32 0
}

@"nl_.1" = internal constant [2 x i8] c"\0a\00"
@"nl_.2" = internal constant [2 x i8] c"\0a\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"