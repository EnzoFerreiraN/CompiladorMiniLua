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
  %"PI" = alloca double
  store double 0x400921f9f01b866e, double* %"PI"
  %"PI.1" = load double, double* %"PI"
  %".3" = fptosi double %"PI.1" to i64
  %".4" = sitofp i64 %".3" to double
  %"is_int" = fcmp oeq double %"PI.1", %".4"
  br i1 %"is_int", label %"print_int", label %"print_float"
print_int:
  %".6" = bitcast [5 x i8]* @"fmt_int_.1" to i8*
  %".7" = call i32 (i8*, ...) @"printf"(i8* %".6", i64 %".3")
  br label %"print_merge"
print_float:
  %".9" = bitcast [6 x i8]* @"fmt_flt_.2" to i8*
  %".10" = call i32 (i8*, ...) @"printf"(i8* %".9", double %"PI.1")
  br label %"print_merge"
print_merge:
  %".12" = bitcast [2 x i8]* @"nl_.3" to i8*
  %".13" = call i32 (i8*, ...) @"printf"(i8* %".12")
  %"MAX" = alloca double
  store double 0x4059000000000000, double* %"MAX"
  %"MAX.1" = load double, double* %"MAX"
  %".15" = fptosi double %"MAX.1" to i64
  %".16" = sitofp i64 %".15" to double
  %"is_int.1" = fcmp oeq double %"MAX.1", %".16"
  br i1 %"is_int.1", label %"print_int.1", label %"print_float.1"
print_int.1:
  %".18" = bitcast [5 x i8]* @"fmt_int_.4" to i8*
  %".19" = call i32 (i8*, ...) @"printf"(i8* %".18", i64 %".15")
  br label %"print_merge.1"
print_float.1:
  %".21" = bitcast [6 x i8]* @"fmt_flt_.5" to i8*
  %".22" = call i32 (i8*, ...) @"printf"(i8* %".21", double %"MAX.1")
  br label %"print_merge.1"
print_merge.1:
  %".24" = bitcast [2 x i8]* @"nl_.6" to i8*
  %".25" = call i32 (i8*, ...) @"printf"(i8* %".24")
  %"MAX.2" = load double, double* %"MAX"
  %"gttmp" = fcmp ogt double %"MAX.2", 0x4049000000000000
  br i1 %"gttmp", label %"then_0", label %"else_0"
if_merge:
  ret i32 0
then_0:
  %".27" = bitcast [9 x i8]* @"str_.7" to i8*
  %".28" = bitcast [3 x i8]* @"fmt_.8" to i8*
  %".29" = call i32 (i8*, ...) @"printf"(i8* %".28", i8* %".27")
  %".30" = bitcast [2 x i8]* @"nl_.9" to i8*
  %".31" = call i32 (i8*, ...) @"printf"(i8* %".30")
  br label %"if_merge"
else_0:
  br label %"if_merge"
}

@"fmt_int_.1" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.2" = internal constant [6 x i8] c"%.14g\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.4" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.5" = internal constant [6 x i8] c"%.14g\00"
@"nl_.6" = internal constant [2 x i8] c"\0a\00"
@"str_.7" = internal constant [9 x i8] c"MAX > 50\00"
@"fmt_.8" = internal constant [3 x i8] c"%s\00"
@"nl_.9" = internal constant [2 x i8] c"\0a\00"