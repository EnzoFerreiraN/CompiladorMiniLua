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
  %"x" = alloca double
  store double 0x4024000000000000, double* %"x"
  %"x.1" = load double, double* %"x"
  %".3" = fptosi double %"x.1" to i64
  %".4" = sitofp i64 %".3" to double
  %"is_int" = fcmp oeq double %"x.1", %".4"
  br i1 %"is_int", label %"print_int", label %"print_float"
print_int:
  %".6" = bitcast [5 x i8]* @"fmt_int_.1" to i8*
  %".7" = call i32 (i8*, ...) @"printf"(i8* %".6", i64 %".3")
  br label %"print_merge"
print_float:
  %".9" = bitcast [6 x i8]* @"fmt_flt_.2" to i8*
  %".10" = call i32 (i8*, ...) @"printf"(i8* %".9", double %"x.1")
  br label %"print_merge"
print_merge:
  %".12" = bitcast [2 x i8]* @"nl_.3" to i8*
  %".13" = call i32 (i8*, ...) @"printf"(i8* %".12")
  %"x.2" = alloca double
  store double 0x4034000000000000, double* %"x.2"
  %"x.3" = load double, double* %"x.2"
  %".15" = fptosi double %"x.3" to i64
  %".16" = sitofp i64 %".15" to double
  %"is_int.1" = fcmp oeq double %"x.3", %".16"
  br i1 %"is_int.1", label %"print_int.1", label %"print_float.1"
print_int.1:
  %".18" = bitcast [5 x i8]* @"fmt_int_.4" to i8*
  %".19" = call i32 (i8*, ...) @"printf"(i8* %".18", i64 %".15")
  br label %"print_merge.1"
print_float.1:
  %".21" = bitcast [6 x i8]* @"fmt_flt_.5" to i8*
  %".22" = call i32 (i8*, ...) @"printf"(i8* %".21", double %"x.3")
  br label %"print_merge.1"
print_merge.1:
  %".24" = bitcast [2 x i8]* @"nl_.6" to i8*
  %".25" = call i32 (i8*, ...) @"printf"(i8* %".24")
  %"x.4" = alloca double
  store double 0x403e000000000000, double* %"x.4"
  %"x.5" = load double, double* %"x.4"
  %".27" = fptosi double %"x.5" to i64
  %".28" = sitofp i64 %".27" to double
  %"is_int.2" = fcmp oeq double %"x.5", %".28"
  br i1 %"is_int.2", label %"print_int.2", label %"print_float.2"
print_int.2:
  %".30" = bitcast [5 x i8]* @"fmt_int_.7" to i8*
  %".31" = call i32 (i8*, ...) @"printf"(i8* %".30", i64 %".27")
  br label %"print_merge.2"
print_float.2:
  %".33" = bitcast [6 x i8]* @"fmt_flt_.8" to i8*
  %".34" = call i32 (i8*, ...) @"printf"(i8* %".33", double %"x.5")
  br label %"print_merge.2"
print_merge.2:
  %".36" = bitcast [2 x i8]* @"nl_.9" to i8*
  %".37" = call i32 (i8*, ...) @"printf"(i8* %".36")
  %"x.6" = load double, double* %"x.2"
  %".38" = fptosi double %"x.6" to i64
  %".39" = sitofp i64 %".38" to double
  %"is_int.3" = fcmp oeq double %"x.6", %".39"
  br i1 %"is_int.3", label %"print_int.3", label %"print_float.3"
print_int.3:
  %".41" = bitcast [5 x i8]* @"fmt_int_.10" to i8*
  %".42" = call i32 (i8*, ...) @"printf"(i8* %".41", i64 %".38")
  br label %"print_merge.3"
print_float.3:
  %".44" = bitcast [6 x i8]* @"fmt_flt_.11" to i8*
  %".45" = call i32 (i8*, ...) @"printf"(i8* %".44", double %"x.6")
  br label %"print_merge.3"
print_merge.3:
  %".47" = bitcast [2 x i8]* @"nl_.12" to i8*
  %".48" = call i32 (i8*, ...) @"printf"(i8* %".47")
  %"x.7" = load double, double* %"x"
  %".49" = fptosi double %"x.7" to i64
  %".50" = sitofp i64 %".49" to double
  %"is_int.4" = fcmp oeq double %"x.7", %".50"
  br i1 %"is_int.4", label %"print_int.4", label %"print_float.4"
print_int.4:
  %".52" = bitcast [5 x i8]* @"fmt_int_.13" to i8*
  %".53" = call i32 (i8*, ...) @"printf"(i8* %".52", i64 %".49")
  br label %"print_merge.4"
print_float.4:
  %".55" = bitcast [6 x i8]* @"fmt_flt_.14" to i8*
  %".56" = call i32 (i8*, ...) @"printf"(i8* %".55", double %"x.7")
  br label %"print_merge.4"
print_merge.4:
  %".58" = bitcast [2 x i8]* @"nl_.15" to i8*
  %".59" = call i32 (i8*, ...) @"printf"(i8* %".58")
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
@"fmt_int_.10" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.11" = internal constant [6 x i8] c"%.14g\00"
@"nl_.12" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.13" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.14" = internal constant [6 x i8] c"%.14g\00"
@"nl_.15" = internal constant [2 x i8] c"\0a\00"