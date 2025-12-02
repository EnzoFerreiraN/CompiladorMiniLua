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
  %".7" = fptosi double %"l.1" to i64
  %".8" = sitofp i64 %".7" to double
  %"is_int" = fcmp oeq double %"l.1", %".8"
  br i1 %"is_int", label %"print_int", label %"print_float"
print_int:
  %".10" = bitcast [5 x i8]* @"fmt_int_.2" to i8*
  %".11" = call i32 (i8*, ...) @"printf"(i8* %".10", i64 %".7")
  br label %"print_merge"
print_float:
  %".13" = bitcast [6 x i8]* @"fmt_flt_.3" to i8*
  %".14" = call i32 (i8*, ...) @"printf"(i8* %".13", double %"l.1")
  br label %"print_merge"
print_merge:
  %".16" = bitcast [2 x i8]* @"nl_.4" to i8*
  %".17" = call i32 (i8*, ...) @"printf"(i8* %".16")
  %"a" = alloca i8*
  store i8* null, i8** %"a"
  %".19" = call i8* @"minilua_new_array"(i32 8)
  store i8* %".19", i8** %"a"
  %"al" = alloca double
  store double              0x0, double* %"al"
  %"a.1" = load i8*, i8** %"a"
  %"arr_len" = call i32 @"minilua_array_length"(i8* %"a.1")
  %".22" = sitofp i32 %"arr_len" to double
  store double %".22", double* %"al"
  %"al.1" = load double, double* %"al"
  %".24" = fptosi double %"al.1" to i64
  %".25" = sitofp i64 %".24" to double
  %"is_int.1" = fcmp oeq double %"al.1", %".25"
  br i1 %"is_int.1", label %"print_int.1", label %"print_float.1"
print_int.1:
  %".27" = bitcast [5 x i8]* @"fmt_int_.5" to i8*
  %".28" = call i32 (i8*, ...) @"printf"(i8* %".27", i64 %".24")
  br label %"print_merge.1"
print_float.1:
  %".30" = bitcast [6 x i8]* @"fmt_flt_.6" to i8*
  %".31" = call i32 (i8*, ...) @"printf"(i8* %".30", double %"al.1")
  br label %"print_merge.1"
print_merge.1:
  %".33" = bitcast [2 x i8]* @"nl_.7" to i8*
  %".34" = call i32 (i8*, ...) @"printf"(i8* %".33")
  ret i32 0
}

@"str_.1" = internal constant [6 x i8] c"hello\00"
@"fmt_int_.2" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.3" = internal constant [6 x i8] c"%.14g\00"
@"nl_.4" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.5" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.6" = internal constant [6 x i8] c"%.14g\00"
@"nl_.7" = internal constant [2 x i8] c"\0a\00"