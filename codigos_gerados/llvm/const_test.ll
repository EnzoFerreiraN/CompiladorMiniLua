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
  %"PI" = alloca double
  store double 0x400921f9f01b866e, double* %"PI"
  %"PI.1" = load double, double* %"PI"
  %".3" = bitcast [5 x i8]* @"fmt_.1" to i8*
  %".4" = call i32 (i8*, ...) @"printf"(i8* %".3", double %"PI.1")
  %".5" = bitcast [2 x i8]* @"nl_.2" to i8*
  %".6" = call i32 (i8*, ...) @"printf"(i8* %".5")
  %"MAX" = alloca double
  store double 0x4059000000000000, double* %"MAX"
  %"MAX.1" = load double, double* %"MAX"
  %".8" = bitcast [5 x i8]* @"fmt_.3" to i8*
  %".9" = call i32 (i8*, ...) @"printf"(i8* %".8", double %"MAX.1")
  %".10" = bitcast [2 x i8]* @"nl_.4" to i8*
  %".11" = call i32 (i8*, ...) @"printf"(i8* %".10")
  %"MAX.2" = load double, double* %"MAX"
  %"gttmp" = fcmp ogt double %"MAX.2", 0x4049000000000000
  br i1 %"gttmp", label %"then_0", label %"else_0"
if_merge:
  ret i32 0
then_0:
  %".13" = bitcast [9 x i8]* @"str_.5" to i8*
  %".14" = bitcast [3 x i8]* @"fmt_.6" to i8*
  %".15" = call i32 (i8*, ...) @"printf"(i8* %".14", i8* %".13")
  %".16" = bitcast [2 x i8]* @"nl_.7" to i8*
  %".17" = call i32 (i8*, ...) @"printf"(i8* %".16")
  br label %"if_merge"
else_0:
  br label %"if_merge"
}

@"fmt_.1" = internal constant [5 x i8] c"%.2f\00"
@"nl_.2" = internal constant [2 x i8] c"\0a\00"
@"fmt_.3" = internal constant [5 x i8] c"%.2f\00"
@"nl_.4" = internal constant [2 x i8] c"\0a\00"
@"str_.5" = internal constant [9 x i8] c"MAX > 50\00"
@"fmt_.6" = internal constant [3 x i8] c"%s\00"
@"nl_.7" = internal constant [2 x i8] c"\0a\00"