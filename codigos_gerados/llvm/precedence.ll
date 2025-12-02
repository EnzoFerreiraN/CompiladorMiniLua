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
  call void @"minilua_print_number"(double %"res.1")
  %".8" = bitcast [2 x i8]* @"nl_.1" to i8*
  %".9" = call i32 (i8*, ...) @"printf"(i8* %".8")
  %"a.2" = load double, double* %"a"
  %"b.2" = load double, double* %"b"
  %"addtmp.1" = fadd double %"a.2", %"b.2"
  %"c.2" = load double, double* %"c"
  %"multmp.1" = fmul double %"addtmp.1", %"c.2"
  store double %"multmp.1", double* %"res"
  %"res.2" = load double, double* %"res"
  call void @"minilua_print_number"(double %"res.2")
  %".12" = bitcast [2 x i8]* @"nl_.2" to i8*
  %".13" = call i32 (i8*, ...) @"printf"(i8* %".12")
  %"a.3" = load double, double* %"a"
  %"b.3" = load double, double* %"b"
  %"powtmp" = call double @"pow"(double %"b.3", double 0x4000000000000000)
  %"multmp.2" = fmul double %"a.3", %"powtmp"
  store double %"multmp.2", double* %"res"
  %"res.3" = load double, double* %"res"
  call void @"minilua_print_number"(double %"res.3")
  %".16" = bitcast [2 x i8]* @"nl_.3" to i8*
  %".17" = call i32 (i8*, ...) @"printf"(i8* %".16")
  ret i32 0
}

@"nl_.1" = internal constant [2 x i8] c"\0a\00"
@"nl_.2" = internal constant [2 x i8] c"\0a\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"