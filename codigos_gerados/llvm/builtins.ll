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
  %"s" = alloca i8*
  %".2" = bitcast [6 x i8]* @"str_.1" to i8*
  store i8* %".2", i8** %"s"
  %"l" = alloca double
  store double              0x0, double* %"l"
  %"s.1" = load i8*, i8** %"s"
  %"len" = call i32 @"strlen"(i8* %"s.1")
  %".5" = sitofp i32 %"len" to double
  store double %".5", double* %"l"
  %"l.1" = load double, double* %"l"
  call void @"minilua_print_number"(double %"l.1")
  %".8" = bitcast [2 x i8]* @"nl_.2" to i8*
  %".9" = call i32 (i8*, ...) @"printf"(i8* %".8")
  %"a" = alloca i8*
  store i8* null, i8** %"a"
  %".11" = call i8* @"minilua_new_array"(i32 8)
  store i8* %".11", i8** %"a"
  %"al" = alloca double
  store double              0x0, double* %"al"
  %"a.1" = load i8*, i8** %"a"
  %"arr_len" = call i32 @"minilua_array_length"(i8* %"a.1")
  %".14" = sitofp i32 %"arr_len" to double
  store double %".14", double* %"al"
  %"al.1" = load double, double* %"al"
  call void @"minilua_print_number"(double %"al.1")
  %".17" = bitcast [2 x i8]* @"nl_.3" to i8*
  %".18" = call i32 (i8*, ...) @"printf"(i8* %".17")
  ret i32 0
}

@"str_.1" = internal constant [6 x i8] c"hello\00"
@"nl_.2" = internal constant [2 x i8] c"\0a\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"