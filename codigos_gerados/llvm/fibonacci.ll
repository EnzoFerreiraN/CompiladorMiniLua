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

define double @"fib"(double %"n")
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
  %"n.3" = load double, double* %"n.1"
  ret double %"n.3"
else_0:
  %"n.4" = load double, double* %"n.1"
  %"subtmp" = fsub double %"n.4", 0x3ff0000000000000
  %".6" = call double @"fib"(double %"subtmp")
  %"n.5" = load double, double* %"n.1"
  %"subtmp.1" = fsub double %"n.5", 0x4000000000000000
  %".7" = call double @"fib"(double %"subtmp.1")
  %"addtmp" = fadd double %".6", %".7"
  ret double %"addtmp"
}

define i32 @"main"()
{
entry:
  %"n" = alloca double
  store double 0x4024000000000000, double* %"n"
  %"n.1" = load double, double* %"n"
  %".3" = call double @"fib"(double %"n.1")
  %".4" = bitcast [5 x i8]* @"fmt_.1" to i8*
  %".5" = call i32 (i8*, ...) @"printf"(i8* %".4", double %".3")
  %".6" = bitcast [2 x i8]* @"nl_.2" to i8*
  %".7" = call i32 (i8*, ...) @"printf"(i8* %".6")
  ret i32 0
}

@"fmt_.1" = internal constant [5 x i8] c"%.2f\00"
@"nl_.2" = internal constant [2 x i8] c"\0a\00"