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

define double @"factorial"(double %"n")
{
entry:
  %"n.1" = alloca double
  store double %"n", double* %"n.1"
  %"n.2" = load double, double* %"n.1"
  %"letmp" = fcmp ole double %"n.2", 0x3ff0000000000000
  br i1 %"letmp", label %"then_0", label %"else_0"
if_merge:
  ret double              0x0
then_0:
  ret double 0x3ff0000000000000
else_0:
  %"n.3" = load double, double* %"n.1"
  %"n.4" = load double, double* %"n.1"
  %"subtmp" = fsub double %"n.4", 0x3ff0000000000000
  %".6" = call double @"factorial"(double %"subtmp")
  %"multmp" = fmul double %"n.3", %".6"
  ret double %"multmp"
}

define i32 @"main"()
{
entry:
  %"num" = alloca double
  store double 0x4010000000000000, double* %"num"
  %"result" = alloca double
  store double              0x0, double* %"result"
  %"num.1" = load double, double* %"num"
  %".4" = call double @"factorial"(double %"num.1")
  store double %".4", double* %"result"
  %".6" = bitcast [12 x i8]* @"str_.1" to i8*
  %"num.2" = load double, double* %"num"
  %".7" = bitcast [3 x i8]* @"str_.2" to i8*
  %"result.1" = load double, double* %"result"
  %".8" = bitcast [4 x i8]* @"fmt_.3" to i8*
  %".9" = call i32 (i8*, ...) @"printf"(i8* %".8", i8* %".6")
  call void @"minilua_print_number"(double %"num.2")
  %".11" = bitcast [2 x i8]* @"sp_.4" to i8*
  %".12" = call i32 (i8*, ...) @"printf"(i8* %".11")
  %".13" = bitcast [4 x i8]* @"fmt_.5" to i8*
  %".14" = call i32 (i8*, ...) @"printf"(i8* %".13", i8* %".7")
  call void @"minilua_print_number"(double %"result.1")
  %".16" = bitcast [2 x i8]* @"nl_.6" to i8*
  %".17" = call i32 (i8*, ...) @"printf"(i8* %".16")
  ret i32 0
}

@"str_.1" = internal constant [12 x i8] c"Fatorial de\00"
@"str_.2" = internal constant [3 x i8] c"eh\00"
@"fmt_.3" = internal constant [4 x i8] c"%s \00"
@"sp_.4" = internal constant [2 x i8] c" \00"
@"fmt_.5" = internal constant [4 x i8] c"%s \00"
@"nl_.6" = internal constant [2 x i8] c"\0a\00"