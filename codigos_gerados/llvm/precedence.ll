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
  %".7" = fptosi double %"res.1" to i64
  %".8" = sitofp i64 %".7" to double
  %"is_int" = fcmp oeq double %"res.1", %".8"
  br i1 %"is_int", label %"print_int", label %"print_float"
print_int:
  %".10" = bitcast [5 x i8]* @"fmt_int_.1" to i8*
  %".11" = call i32 (i8*, ...) @"printf"(i8* %".10", i64 %".7")
  br label %"print_merge"
print_float:
  %".13" = bitcast [6 x i8]* @"fmt_flt_.2" to i8*
  %".14" = call i32 (i8*, ...) @"printf"(i8* %".13", double %"res.1")
  br label %"print_merge"
print_merge:
  %".16" = bitcast [2 x i8]* @"nl_.3" to i8*
  %".17" = call i32 (i8*, ...) @"printf"(i8* %".16")
  %"a.2" = load double, double* %"a"
  %"b.2" = load double, double* %"b"
  %"addtmp.1" = fadd double %"a.2", %"b.2"
  %"c.2" = load double, double* %"c"
  %"multmp.1" = fmul double %"addtmp.1", %"c.2"
  store double %"multmp.1", double* %"res"
  %"res.2" = load double, double* %"res"
  %".19" = fptosi double %"res.2" to i64
  %".20" = sitofp i64 %".19" to double
  %"is_int.1" = fcmp oeq double %"res.2", %".20"
  br i1 %"is_int.1", label %"print_int.1", label %"print_float.1"
print_int.1:
  %".22" = bitcast [5 x i8]* @"fmt_int_.4" to i8*
  %".23" = call i32 (i8*, ...) @"printf"(i8* %".22", i64 %".19")
  br label %"print_merge.1"
print_float.1:
  %".25" = bitcast [6 x i8]* @"fmt_flt_.5" to i8*
  %".26" = call i32 (i8*, ...) @"printf"(i8* %".25", double %"res.2")
  br label %"print_merge.1"
print_merge.1:
  %".28" = bitcast [2 x i8]* @"nl_.6" to i8*
  %".29" = call i32 (i8*, ...) @"printf"(i8* %".28")
  %"a.3" = load double, double* %"a"
  %"b.3" = load double, double* %"b"
  %"powtmp" = call double @"pow"(double %"b.3", double 0x4000000000000000)
  %"multmp.2" = fmul double %"a.3", %"powtmp"
  store double %"multmp.2", double* %"res"
  %"res.3" = load double, double* %"res"
  %".31" = fptosi double %"res.3" to i64
  %".32" = sitofp i64 %".31" to double
  %"is_int.2" = fcmp oeq double %"res.3", %".32"
  br i1 %"is_int.2", label %"print_int.2", label %"print_float.2"
print_int.2:
  %".34" = bitcast [5 x i8]* @"fmt_int_.7" to i8*
  %".35" = call i32 (i8*, ...) @"printf"(i8* %".34", i64 %".31")
  br label %"print_merge.2"
print_float.2:
  %".37" = bitcast [6 x i8]* @"fmt_flt_.8" to i8*
  %".38" = call i32 (i8*, ...) @"printf"(i8* %".37", double %"res.3")
  br label %"print_merge.2"
print_merge.2:
  %".40" = bitcast [2 x i8]* @"nl_.9" to i8*
  %".41" = call i32 (i8*, ...) @"printf"(i8* %".40")
  ret i32 0
}

@"fmt_int_.1" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.2" = internal constant [6 x i8] c"%.14g\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.4" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.5" = internal constant [6 x i8] c"%.14g\00"
@"nl_.6" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.7" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.8" = internal constant [6 x i8] c"%.14g\00"
@"nl_.9" = internal constant [2 x i8] c"\0a\00"