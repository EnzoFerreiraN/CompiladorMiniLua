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
  %"a" = alloca double
  store double 0x4024000000000000, double* %"a"
  %"b" = alloca double
  store double 0x4008000000000000, double* %"b"
  %"c" = alloca double
  store double              0x0, double* %"c"
  %"a.1" = load double, double* %"a"
  %"b.1" = load double, double* %"b"
  %"divtmp" = fdiv double %"a.1", %"b.1"
  call void @"minilua_print_number"(double %"divtmp")
  %".6" = bitcast [2 x i8]* @"nl_.1" to i8*
  %".7" = call i32 (i8*, ...) @"printf"(i8* %".6")
  ret i32 0
}

@"nl_.1" = internal constant [2 x i8] c"\0a\00"