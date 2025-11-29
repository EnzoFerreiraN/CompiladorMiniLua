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

define double @"add"(double %"a", double %"b")
{
entry:
  %"a.1" = alloca double
  store double %"a", double* %"a.1"
  %"b.1" = alloca double
  store double %"b", double* %"b.1"
  %"a.2" = load double, double* %"a.1"
  %"b.2" = load double, double* %"b.1"
  %"addtmp" = fadd double %"a.2", %"b.2"
  ret double %"addtmp"
}

define i32 @"main"()
{
entry:
  %"x" = alloca double
  store double 0x4024000000000000, double* %"x"
  %"y" = alloca double
  store double 0x4034000000000000, double* %"y"
  %"z" = alloca double
  store double              0x0, double* %"z"
  %"x.1" = load double, double* %"x"
  %"y.1" = load double, double* %"y"
  %".5" = call double @"add"(double %"x.1", double %"y.1")
  store double %".5", double* %"z"
  %"z.1" = load double, double* %"z"
  %".7" = bitcast [5 x i8]* @"fmt_.1" to i8*
  %".8" = call i32 (i8*, ...) @"printf"(i8* %".7", double %"z.1")
  %".9" = bitcast [2 x i8]* @"nl_.2" to i8*
  %".10" = call i32 (i8*, ...) @"printf"(i8* %".9")
  ret i32 0
}

@"fmt_.1" = internal constant [5 x i8] c"%.2f\00"
@"nl_.2" = internal constant [2 x i8] c"\0a\00"