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
  %"x" = alloca double
  store double 0x4024000000000000, double* %"x"
  %"x.1" = load double, double* %"x"
  call void @"minilua_print_number"(double %"x.1")
  %".4" = bitcast [2 x i8]* @"nl_.1" to i8*
  %".5" = call i32 (i8*, ...) @"printf"(i8* %".4")
  %"x.2" = alloca double
  store double 0x4034000000000000, double* %"x.2"
  %"x.3" = load double, double* %"x.2"
  call void @"minilua_print_number"(double %"x.3")
  %".8" = bitcast [2 x i8]* @"nl_.2" to i8*
  %".9" = call i32 (i8*, ...) @"printf"(i8* %".8")
  %"x.4" = alloca double
  store double 0x403e000000000000, double* %"x.4"
  %"x.5" = load double, double* %"x.4"
  call void @"minilua_print_number"(double %"x.5")
  %".12" = bitcast [2 x i8]* @"nl_.3" to i8*
  %".13" = call i32 (i8*, ...) @"printf"(i8* %".12")
  %"x.6" = load double, double* %"x.2"
  call void @"minilua_print_number"(double %"x.6")
  %".15" = bitcast [2 x i8]* @"nl_.4" to i8*
  %".16" = call i32 (i8*, ...) @"printf"(i8* %".15")
  %"x.7" = load double, double* %"x"
  call void @"minilua_print_number"(double %"x.7")
  %".18" = bitcast [2 x i8]* @"nl_.5" to i8*
  %".19" = call i32 (i8*, ...) @"printf"(i8* %".18")
  ret i32 0
}

@"nl_.1" = internal constant [2 x i8] c"\0a\00"
@"nl_.2" = internal constant [2 x i8] c"\0a\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"nl_.4" = internal constant [2 x i8] c"\0a\00"
@"nl_.5" = internal constant [2 x i8] c"\0a\00"