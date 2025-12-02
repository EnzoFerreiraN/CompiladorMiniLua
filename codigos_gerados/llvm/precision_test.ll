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
  %".11" = fptosi double %"pi.1" to i64
  %".12" = sitofp i64 %".11" to double
  %"is_int" = fcmp oeq double %"pi.1", %".12"
  br i1 %"is_int", label %"print_int", label %"print_float"
print_int:
  %".14" = bitcast [5 x i8]* @"fmt_int_.6" to i8*
  %".15" = call i32 (i8*, ...) @"printf"(i8* %".14", i64 %".11")
  br label %"print_merge"
print_float:
  %".17" = bitcast [6 x i8]* @"fmt_flt_.7" to i8*
  %".18" = call i32 (i8*, ...) @"printf"(i8* %".17", double %"pi.1")
  br label %"print_merge"
print_merge:
  %".20" = bitcast [2 x i8]* @"nl_.8" to i8*
  %".21" = call i32 (i8*, ...) @"printf"(i8* %".20")
  %"small" = alloca double
  store double 0x3f202e4b6ce5dc68, double* %"small"
  %".23" = bitcast [31 x i8]* @"str_.9" to i8*
  %"small.1" = load double, double* %"small"
  %".24" = bitcast [4 x i8]* @"fmt_.10" to i8*
  %".25" = call i32 (i8*, ...) @"printf"(i8* %".24", i8* %".23")
  %".26" = fptosi double %"small.1" to i64
  %".27" = sitofp i64 %".26" to double
  %"is_int.1" = fcmp oeq double %"small.1", %".27"
  br i1 %"is_int.1", label %"print_int.1", label %"print_float.1"
print_int.1:
  %".29" = bitcast [5 x i8]* @"fmt_int_.11" to i8*
  %".30" = call i32 (i8*, ...) @"printf"(i8* %".29", i64 %".26")
  br label %"print_merge.1"
print_float.1:
  %".32" = bitcast [6 x i8]* @"fmt_flt_.12" to i8*
  %".33" = call i32 (i8*, ...) @"printf"(i8* %".32", double %"small.1")
  br label %"print_merge.1"
print_merge.1:
  %".35" = bitcast [2 x i8]* @"nl_.13" to i8*
  %".36" = call i32 (i8*, ...) @"printf"(i8* %".35")
  %"large" = alloca double
  store double 0x40c81cd6e631f8a1, double* %"large"
  %".38" = bitcast [30 x i8]* @"str_.14" to i8*
  %"large.1" = load double, double* %"large"
  %".39" = bitcast [4 x i8]* @"fmt_.15" to i8*
  %".40" = call i32 (i8*, ...) @"printf"(i8* %".39", i8* %".38")
  %".41" = fptosi double %"large.1" to i64
  %".42" = sitofp i64 %".41" to double
  %"is_int.2" = fcmp oeq double %"large.1", %".42"
  br i1 %"is_int.2", label %"print_int.2", label %"print_float.2"
print_int.2:
  %".44" = bitcast [5 x i8]* @"fmt_int_.16" to i8*
  %".45" = call i32 (i8*, ...) @"printf"(i8* %".44", i64 %".41")
  br label %"print_merge.2"
print_float.2:
  %".47" = bitcast [6 x i8]* @"fmt_flt_.17" to i8*
  %".48" = call i32 (i8*, ...) @"printf"(i8* %".47", double %"large.1")
  br label %"print_merge.2"
print_merge.2:
  %".50" = bitcast [2 x i8]* @"nl_.18" to i8*
  %".51" = call i32 (i8*, ...) @"printf"(i8* %".50")
  ret i32 0
}

@"str_.1" = internal constant [26 x i8] c"=== Teste de Precisao ===\00"
@"fmt_.2" = internal constant [3 x i8] c"%s\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"str_.4" = internal constant [27 x i8] c"Pi (esperado ~3.14159...):\00"
@"fmt_.5" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.6" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.7" = internal constant [6 x i8] c"%.14g\00"
@"nl_.8" = internal constant [2 x i8] c"\0a\00"
@"str_.9" = internal constant [31 x i8] c"Pequeno (esperado 0.00012345):\00"
@"fmt_.10" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.11" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.12" = internal constant [6 x i8] c"%.14g\00"
@"nl_.13" = internal constant [2 x i8] c"\0a\00"
@"str_.14" = internal constant [30 x i8] c"Grande (esperado 12345.6789):\00"
@"fmt_.15" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.16" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.17" = internal constant [6 x i8] c"%.14g\00"
@"nl_.18" = internal constant [2 x i8] c"\0a\00"