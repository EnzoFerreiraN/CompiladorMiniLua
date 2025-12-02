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
  %".2" = bitcast [26 x i8]* @"str_.1" to i8*
  %".3" = bitcast [3 x i8]* @"fmt_.2" to i8*
  %".4" = call i32 (i8*, ...) @"printf"(i8* %".3", i8* %".2")
  %".5" = bitcast [2 x i8]* @"nl_.3" to i8*
  %".6" = call i32 (i8*, ...) @"printf"(i8* %".5")
  %"pi" = alloca double
  store double 0x400921fb54442eea, double* %"pi"
  %".8" = bitcast [27 x i8]* @"str_.4" to i8*
  %"pi.1" = load double, double* %"pi"
  %".9" = bitcast [4 x i8]* @"fmt_.5" to i8*
  %".10" = call i32 (i8*, ...) @"printf"(i8* %".9", i8* %".8")
  call void @"minilua_print_number"(double %"pi.1")
  %".12" = bitcast [2 x i8]* @"nl_.6" to i8*
  %".13" = call i32 (i8*, ...) @"printf"(i8* %".12")
  %"small" = alloca double
  store double 0x3f202e4b6ce5dc68, double* %"small"
  %".15" = bitcast [31 x i8]* @"str_.7" to i8*
  %"small.1" = load double, double* %"small"
  %".16" = bitcast [4 x i8]* @"fmt_.8" to i8*
  %".17" = call i32 (i8*, ...) @"printf"(i8* %".16", i8* %".15")
  call void @"minilua_print_number"(double %"small.1")
  %".19" = bitcast [2 x i8]* @"nl_.9" to i8*
  %".20" = call i32 (i8*, ...) @"printf"(i8* %".19")
  %"large" = alloca double
  store double 0x40c81cd6e631f8a1, double* %"large"
  %".22" = bitcast [30 x i8]* @"str_.10" to i8*
  %"large.1" = load double, double* %"large"
  %".23" = bitcast [4 x i8]* @"fmt_.11" to i8*
  %".24" = call i32 (i8*, ...) @"printf"(i8* %".23", i8* %".22")
  call void @"minilua_print_number"(double %"large.1")
  %".26" = bitcast [2 x i8]* @"nl_.12" to i8*
  %".27" = call i32 (i8*, ...) @"printf"(i8* %".26")
  ret i32 0
}

@"str_.1" = internal constant [26 x i8] c"=== Teste de Precisao ===\00"
@"fmt_.2" = internal constant [3 x i8] c"%s\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"str_.4" = internal constant [27 x i8] c"Pi (esperado ~3.14159...):\00"
@"fmt_.5" = internal constant [4 x i8] c"%s \00"
@"nl_.6" = internal constant [2 x i8] c"\0a\00"
@"str_.7" = internal constant [31 x i8] c"Pequeno (esperado 0.00012345):\00"
@"fmt_.8" = internal constant [4 x i8] c"%s \00"
@"nl_.9" = internal constant [2 x i8] c"\0a\00"
@"str_.10" = internal constant [30 x i8] c"Grande (esperado 12345.6789):\00"
@"fmt_.11" = internal constant [4 x i8] c"%s \00"
@"nl_.12" = internal constant [2 x i8] c"\0a\00"