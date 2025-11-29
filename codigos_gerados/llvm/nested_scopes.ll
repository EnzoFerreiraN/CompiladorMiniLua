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

define i32 @"main"()
{
entry:
  %"x" = alloca double
  store double 0x4024000000000000, double* %"x"
  %"x.1" = load double, double* %"x"
  %".3" = bitcast [5 x i8]* @"fmt_.1" to i8*
  %".4" = call i32 (i8*, ...) @"printf"(i8* %".3", double %"x.1")
  %".5" = bitcast [2 x i8]* @"nl_.2" to i8*
  %".6" = call i32 (i8*, ...) @"printf"(i8* %".5")
  %"x.2" = alloca double
  store double 0x4034000000000000, double* %"x.2"
  %"x.3" = load double, double* %"x.2"
  %".8" = bitcast [5 x i8]* @"fmt_.3" to i8*
  %".9" = call i32 (i8*, ...) @"printf"(i8* %".8", double %"x.3")
  %".10" = bitcast [2 x i8]* @"nl_.4" to i8*
  %".11" = call i32 (i8*, ...) @"printf"(i8* %".10")
  %"x.4" = alloca double
  store double 0x403e000000000000, double* %"x.4"
  %"x.5" = load double, double* %"x.4"
  %".13" = bitcast [5 x i8]* @"fmt_.5" to i8*
  %".14" = call i32 (i8*, ...) @"printf"(i8* %".13", double %"x.5")
  %".15" = bitcast [2 x i8]* @"nl_.6" to i8*
  %".16" = call i32 (i8*, ...) @"printf"(i8* %".15")
  %"x.6" = load double, double* %"x.2"
  %".17" = bitcast [5 x i8]* @"fmt_.7" to i8*
  %".18" = call i32 (i8*, ...) @"printf"(i8* %".17", double %"x.6")
  %".19" = bitcast [2 x i8]* @"nl_.8" to i8*
  %".20" = call i32 (i8*, ...) @"printf"(i8* %".19")
  %"x.7" = load double, double* %"x"
  %".21" = bitcast [5 x i8]* @"fmt_.9" to i8*
  %".22" = call i32 (i8*, ...) @"printf"(i8* %".21", double %"x.7")
  %".23" = bitcast [2 x i8]* @"nl_.10" to i8*
  %".24" = call i32 (i8*, ...) @"printf"(i8* %".23")
  ret i32 0
}

@"fmt_.1" = internal constant [5 x i8] c"%.2f\00"
@"nl_.2" = internal constant [2 x i8] c"\0a\00"
@"fmt_.3" = internal constant [5 x i8] c"%.2f\00"
@"nl_.4" = internal constant [2 x i8] c"\0a\00"
@"fmt_.5" = internal constant [5 x i8] c"%.2f\00"
@"nl_.6" = internal constant [2 x i8] c"\0a\00"
@"fmt_.7" = internal constant [5 x i8] c"%.2f\00"
@"nl_.8" = internal constant [2 x i8] c"\0a\00"
@"fmt_.9" = internal constant [5 x i8] c"%.2f\00"
@"nl_.10" = internal constant [2 x i8] c"\0a\00"