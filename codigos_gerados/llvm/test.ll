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

define double @"add"(double %"a", double %"b")
{
entry:
  %"a.1" = alloca double
  store double %"a", double* %"a.1"
  %"b.1" = alloca double
  store double %"b", double* %"b.1"
  %"a.2" = load double, double* %"a.1"
  %"b.2" = load double, double* %"b.1"
  %"addtmp" = fadd double %"a.2", %"b.2"
  ret double %"addtmp"
}

define i32 @"main"()
{
entry:
  %"x" = alloca double
  store double 0x4024000000000000, double* %"x"
  %"y" = alloca double
  store double 0x4034000000000000, double* %"y"
  %"z" = alloca double
  store double              0x0, double* %"z"
  %"x.1" = load double, double* %"x"
  %"y.1" = load double, double* %"y"
  %".5" = call double @"add"(double %"x.1", double %"y.1")
  store double %".5", double* %"z"
  %"z.1" = load double, double* %"z"
  %".7" = fptosi double %"z.1" to i64
  %".8" = sitofp i64 %".7" to double
  %"is_int" = fcmp oeq double %"z.1", %".8"
  br i1 %"is_int", label %"print_int", label %"print_float"
print_int:
  %".10" = bitcast [5 x i8]* @"fmt_int_.1" to i8*
  %".11" = call i32 (i8*, ...) @"printf"(i8* %".10", i64 %".7")
  br label %"print_merge"
print_float:
  %".13" = bitcast [6 x i8]* @"fmt_flt_.2" to i8*
  %".14" = call i32 (i8*, ...) @"printf"(i8* %".13", double %"z.1")
  br label %"print_merge"
print_merge:
  %".16" = bitcast [2 x i8]* @"nl_.3" to i8*
  %".17" = call i32 (i8*, ...) @"printf"(i8* %".16")
  ret i32 0
}

@"fmt_int_.1" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.2" = internal constant [6 x i8] c"%.14g\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"