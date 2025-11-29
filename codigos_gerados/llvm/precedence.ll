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
  %"a" = alloca double
  store double 0x4000000000000000, double* %"a"
  %"b" = alloca double
  store double 0x4008000000000000, double* %"b"
  %"c" = alloca double
  store double 0x4010000000000000, double* %"c"
  %"res" = alloca double
  store double              0x0, double* %"res"
  %"a.1" = load double, double* %"a"
  %"b.1" = load double, double* %"b"
  %"c.1" = load double, double* %"c"
  %"multmp" = fmul double %"b.1", %"c.1"
  %"addtmp" = fadd double %"a.1", %"multmp"
  store double %"addtmp", double* %"res"
  %"res.1" = load double, double* %"res"
  %".7" = bitcast [5 x i8]* @"fmt_.1" to i8*
  %".8" = call i32 (i8*, ...) @"printf"(i8* %".7", double %"res.1")
  %".9" = bitcast [2 x i8]* @"nl_.2" to i8*
  %".10" = call i32 (i8*, ...) @"printf"(i8* %".9")
  %"a.2" = load double, double* %"a"
  %"b.2" = load double, double* %"b"
  %"addtmp.1" = fadd double %"a.2", %"b.2"
  %"c.2" = load double, double* %"c"
  %"multmp.1" = fmul double %"addtmp.1", %"c.2"
  store double %"multmp.1", double* %"res"
  %"res.2" = load double, double* %"res"
  %".12" = bitcast [5 x i8]* @"fmt_.3" to i8*
  %".13" = call i32 (i8*, ...) @"printf"(i8* %".12", double %"res.2")
  %".14" = bitcast [2 x i8]* @"nl_.4" to i8*
  %".15" = call i32 (i8*, ...) @"printf"(i8* %".14")
  %"a.3" = load double, double* %"a"
  %"b.3" = load double, double* %"b"
  %"powtmp" = call double @"pow"(double %"b.3", double 0x4000000000000000)
  %"multmp.2" = fmul double %"a.3", %"powtmp"
  store double %"multmp.2", double* %"res"
  %"res.3" = load double, double* %"res"
  %".17" = bitcast [5 x i8]* @"fmt_.5" to i8*
  %".18" = call i32 (i8*, ...) @"printf"(i8* %".17", double %"res.3")
  %".19" = bitcast [2 x i8]* @"nl_.6" to i8*
  %".20" = call i32 (i8*, ...) @"printf"(i8* %".19")
  ret i32 0
}

@"fmt_.1" = internal constant [5 x i8] c"%.2f\00"
@"nl_.2" = internal constant [2 x i8] c"\0a\00"
@"fmt_.3" = internal constant [5 x i8] c"%.2f\00"
@"nl_.4" = internal constant [2 x i8] c"\0a\00"
@"fmt_.5" = internal constant [5 x i8] c"%.2f\00"
@"nl_.6" = internal constant [2 x i8] c"\0a\00"