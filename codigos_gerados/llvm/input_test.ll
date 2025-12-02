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
  %".2" = bitcast [33 x i8]* @"str_.1" to i8*
  %".3" = bitcast [3 x i8]* @"fmt_.2" to i8*
  %".4" = call i32 (i8*, ...) @"printf"(i8* %".3", i8* %".2")
  %".5" = bitcast [2 x i8]* @"nl_.3" to i8*
  %".6" = call i32 (i8*, ...) @"printf"(i8* %".5")
  %".7" = bitcast [18 x i8]* @"str_.4" to i8*
  %".8" = bitcast [3 x i8]* @"fmt_.5" to i8*
  %".9" = call i32 (i8*, ...) @"printf"(i8* %".8", i8* %".7")
  %".10" = bitcast [2 x i8]* @"nl_.6" to i8*
  %".11" = call i32 (i8*, ...) @"printf"(i8* %".10")
  %"n" = alloca double
  store double              0x0, double* %"n"
  %".13" = alloca double
  %".14" = bitcast [4 x i8]* @"fmt_in_num_.7" to i8*
  %".15" = call i32 (i8*, ...) @"scanf"(i8* %".14", double* %".13")
  %"input_num" = load double, double* %".13"
  store double %"input_num", double* %"n"
  %".17" = bitcast [14 x i8]* @"str_.8" to i8*
  %"n.1" = load double, double* %"n"
  %".18" = bitcast [4 x i8]* @"fmt_.9" to i8*
  %".19" = call i32 (i8*, ...) @"printf"(i8* %".18", i8* %".17")
  %".20" = fptosi double %"n.1" to i64
  %".21" = sitofp i64 %".20" to double
  %"is_int" = fcmp oeq double %"n.1", %".21"
  br i1 %"is_int", label %"print_int", label %"print_float"
print_int:
  %".23" = bitcast [5 x i8]* @"fmt_int_.10" to i8*
  %".24" = call i32 (i8*, ...) @"printf"(i8* %".23", i64 %".20")
  br label %"print_merge"
print_float:
  %".26" = bitcast [6 x i8]* @"fmt_flt_.11" to i8*
  %".27" = call i32 (i8*, ...) @"printf"(i8* %".26", double %"n.1")
  br label %"print_merge"
print_merge:
  %".29" = bitcast [2 x i8]* @"nl_.12" to i8*
  %".30" = call i32 (i8*, ...) @"printf"(i8* %".29")
  %".31" = bitcast [11 x i8]* @"str_.13" to i8*
  %"n.2" = load double, double* %"n"
  %"multmp" = fmul double %"n.2", 0x4000000000000000
  %".32" = bitcast [4 x i8]* @"fmt_.14" to i8*
  %".33" = call i32 (i8*, ...) @"printf"(i8* %".32", i8* %".31")
  %".34" = fptosi double %"multmp" to i64
  %".35" = sitofp i64 %".34" to double
  %"is_int.1" = fcmp oeq double %"multmp", %".35"
  br i1 %"is_int.1", label %"print_int.1", label %"print_float.1"
print_int.1:
  %".37" = bitcast [5 x i8]* @"fmt_int_.15" to i8*
  %".38" = call i32 (i8*, ...) @"printf"(i8* %".37", i64 %".34")
  br label %"print_merge.1"
print_float.1:
  %".40" = bitcast [6 x i8]* @"fmt_flt_.16" to i8*
  %".41" = call i32 (i8*, ...) @"printf"(i8* %".40", double %"multmp")
  br label %"print_merge.1"
print_merge.1:
  %".43" = bitcast [2 x i8]* @"nl_.17" to i8*
  %".44" = call i32 (i8*, ...) @"printf"(i8* %".43")
  ret i32 0
}

@"str_.1" = internal constant [33 x i8] c"=== Teste 6: Entrada e Saida ===\00"
@"fmt_.2" = internal constant [3 x i8] c"%s\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"str_.4" = internal constant [18 x i8] c"Digite um numero:\00"
@"fmt_.5" = internal constant [3 x i8] c"%s\00"
@"nl_.6" = internal constant [2 x i8] c"\0a\00"
@"fmt_in_num_.7" = internal constant [4 x i8] c"%lf\00"
@"str_.8" = internal constant [14 x i8] c"Voce digitou:\00"
@"fmt_.9" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.10" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.11" = internal constant [6 x i8] c"%.14g\00"
@"nl_.12" = internal constant [2 x i8] c"\0a\00"
@"str_.13" = internal constant [11 x i8] c"O dobro e:\00"
@"fmt_.14" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.15" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.16" = internal constant [6 x i8] c"%.14g\00"
@"nl_.17" = internal constant [2 x i8] c"\0a\00"