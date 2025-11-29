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
  %".7" = bitcast [5 x i8]* @"fmt_.2" to i8*
  %".8" = call i32 (i8*, ...) @"printf"(i8* %".7", double %"l.1")
  %".9" = bitcast [2 x i8]* @"nl_.3" to i8*
  %".10" = call i32 (i8*, ...) @"printf"(i8* %".9")
  %"a" = alloca double*
  store double* null, double** %"a"
  %".12" = call i8* @"malloc"(i32 800)
  %".13" = bitcast i8* %".12" to double*
  store double* %".13", double** %"a"
  %"al" = alloca double
  store double              0x0, double* %"al"
  store double 0x4059000000000000, double* %"al"
  %"al.1" = load double, double* %"al"
  %".17" = bitcast [5 x i8]* @"fmt_.4" to i8*
  %".18" = call i32 (i8*, ...) @"printf"(i8* %".17", double %"al.1")
  %".19" = bitcast [2 x i8]* @"nl_.5" to i8*
  %".20" = call i32 (i8*, ...) @"printf"(i8* %".19")
  ret i32 0
}

@"str_.1" = internal constant [6 x i8] c"hello\00"
@"fmt_.2" = internal constant [5 x i8] c"%.2f\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"fmt_.4" = internal constant [5 x i8] c"%.2f\00"
@"nl_.5" = internal constant [2 x i8] c"\0a\00"