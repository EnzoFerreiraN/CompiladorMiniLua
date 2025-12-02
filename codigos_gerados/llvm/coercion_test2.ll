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
  store double 0x4024000000000000, double* %"a"
  %"b" = alloca double
  store double 0x4008000000000000, double* %"b"
  %"c" = alloca double
  store double              0x0, double* %"c"
  %"a.1" = load double, double* %"a"
  %"b.1" = load double, double* %"b"
  %"divtmp" = fdiv double %"a.1", %"b.1"
  %".5" = fptosi double %"divtmp" to i64
  %".6" = sitofp i64 %".5" to double
  %"is_int" = fcmp oeq double %"divtmp", %".6"
  br i1 %"is_int", label %"print_int", label %"print_float"
print_int:
  %".8" = bitcast [5 x i8]* @"fmt_int_.1" to i8*
  %".9" = call i32 (i8*, ...) @"printf"(i8* %".8", i64 %".5")
  br label %"print_merge"
print_float:
  %".11" = bitcast [6 x i8]* @"fmt_flt_.2" to i8*
  %".12" = call i32 (i8*, ...) @"printf"(i8* %".11", double %"divtmp")
  br label %"print_merge"
print_merge:
  %".14" = bitcast [2 x i8]* @"nl_.3" to i8*
  %".15" = call i32 (i8*, ...) @"printf"(i8* %".14")
  ret i32 0
}

@"fmt_int_.1" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.2" = internal constant [6 x i8] c"%.14g\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"