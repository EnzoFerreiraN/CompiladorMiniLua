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
  store double 0x403e000000000000, double* %"x"
  %"y" = alloca double
  store double 0x4034000000000000, double* %"y"
  %"x.1" = load double, double* %"x"
  %"y.1" = load double, double* %"y"
  %"gttmp" = fcmp ogt double %"x.1", %"y.1"
  br i1 %"gttmp", label %"then_0", label %"else_0"
if_merge:
  %"count" = alloca double
  store double              0x0, double* %"count"
  br label %"while_cond"
then_0:
  %".5" = bitcast [14 x i8]* @"str_.1" to i8*
  %".6" = bitcast [3 x i8]* @"fmt_.2" to i8*
  %".7" = call i32 (i8*, ...) @"printf"(i8* %".6", i8* %".5")
  %".8" = bitcast [2 x i8]* @"nl_.3" to i8*
  %".9" = call i32 (i8*, ...) @"printf"(i8* %".8")
  br label %"if_merge"
else_0:
  %"x.2" = load double, double* %"x"
  %"y.2" = load double, double* %"y"
  %"lttmp" = fcmp olt double %"x.2", %"y.2"
  br i1 %"lttmp", label %"then_1", label %"else_1"
then_1:
  %".12" = bitcast [14 x i8]* @"str_.4" to i8*
  %".13" = bitcast [3 x i8]* @"fmt_.5" to i8*
  %".14" = call i32 (i8*, ...) @"printf"(i8* %".13", i8* %".12")
  %".15" = bitcast [2 x i8]* @"nl_.6" to i8*
  %".16" = call i32 (i8*, ...) @"printf"(i8* %".15")
  br label %"if_merge"
else_1:
  %".18" = bitcast [12 x i8]* @"str_.7" to i8*
  %".19" = bitcast [3 x i8]* @"fmt_.8" to i8*
  %".20" = call i32 (i8*, ...) @"printf"(i8* %".19", i8* %".18")
  %".21" = bitcast [2 x i8]* @"nl_.9" to i8*
  %".22" = call i32 (i8*, ...) @"printf"(i8* %".21")
  br label %"if_merge"
while_cond:
  %"count.1" = load double, double* %"count"
  %"lttmp.1" = fcmp olt double %"count.1", 0x4014000000000000
  br i1 %"lttmp.1", label %"while_body", label %"while_merge"
while_body:
  %".27" = bitcast [7 x i8]* @"str_.10" to i8*
  %"count.2" = load double, double* %"count"
  %".28" = bitcast [4 x i8]* @"fmt_.11" to i8*
  %".29" = call i32 (i8*, ...) @"printf"(i8* %".28", i8* %".27")
  %".30" = fptosi double %"count.2" to i64
  %".31" = sitofp i64 %".30" to double
  %"is_int" = fcmp oeq double %"count.2", %".31"
  br i1 %"is_int", label %"print_int", label %"print_float"
while_merge:
  %"i" = alloca double
  store double              0x0, double* %"i"
  %"i.1" = alloca double
  store double 0x3ff0000000000000, double* %"i.1"
  br label %"for_cond"
print_int:
  %".33" = bitcast [5 x i8]* @"fmt_int_.12" to i8*
  %".34" = call i32 (i8*, ...) @"printf"(i8* %".33", i64 %".30")
  br label %"print_merge"
print_float:
  %".36" = bitcast [6 x i8]* @"fmt_flt_.13" to i8*
  %".37" = call i32 (i8*, ...) @"printf"(i8* %".36", double %"count.2")
  br label %"print_merge"
print_merge:
  %".39" = bitcast [2 x i8]* @"nl_.14" to i8*
  %".40" = call i32 (i8*, ...) @"printf"(i8* %".39")
  %"count.3" = load double, double* %"count"
  %"addtmp" = fadd double %"count.3", 0x3ff0000000000000
  store double %"addtmp", double* %"count"
  br label %"while_cond"
for_cond:
  %"i.2" = load double, double* %"i.1"
  %"step_ge_0" = fcmp oge double 0x3ff0000000000000,              0x0
  %"cond_le" = fcmp ole double %"i.2", 0x4024000000000000
  %"cond_ge" = fcmp oge double %"i.2", 0x4024000000000000
  %"forcond" = select  i1 %"step_ge_0", i1 %"cond_le", i1 %"cond_ge"
  br i1 %"forcond", label %"for_body", label %"for_merge"
for_body:
  %".47" = bitcast [11 x i8]* @"str_.15" to i8*
  %"i.3" = load double, double* %"i.1"
  %".48" = bitcast [4 x i8]* @"fmt_.16" to i8*
  %".49" = call i32 (i8*, ...) @"printf"(i8* %".48", i8* %".47")
  %".50" = fptosi double %"i.3" to i64
  %".51" = sitofp i64 %".50" to double
  %"is_int.1" = fcmp oeq double %"i.3", %".51"
  br i1 %"is_int.1", label %"print_int.1", label %"print_float.1"
for_merge:
  ret i32 0
print_int.1:
  %".53" = bitcast [5 x i8]* @"fmt_int_.17" to i8*
  %".54" = call i32 (i8*, ...) @"printf"(i8* %".53", i64 %".50")
  br label %"print_merge.1"
print_float.1:
  %".56" = bitcast [6 x i8]* @"fmt_flt_.18" to i8*
  %".57" = call i32 (i8*, ...) @"printf"(i8* %".56", double %"i.3")
  br label %"print_merge.1"
print_merge.1:
  %".59" = bitcast [2 x i8]* @"nl_.19" to i8*
  %".60" = call i32 (i8*, ...) @"printf"(i8* %".59")
  %"i.4" = load double, double* %"i.1"
  %"nextval" = fadd double %"i.4", 0x3ff0000000000000
  store double %"nextval", double* %"i.1"
  br label %"for_cond"
}

@"str_.1" = internal constant [14 x i8] c"x maior que y\00"
@"fmt_.2" = internal constant [3 x i8] c"%s\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"str_.4" = internal constant [14 x i8] c"x menor que y\00"
@"fmt_.5" = internal constant [3 x i8] c"%s\00"
@"nl_.6" = internal constant [2 x i8] c"\0a\00"
@"str_.7" = internal constant [12 x i8] c"x igual a y\00"
@"fmt_.8" = internal constant [3 x i8] c"%s\00"
@"nl_.9" = internal constant [2 x i8] c"\0a\00"
@"str_.10" = internal constant [7 x i8] c"Count:\00"
@"fmt_.11" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.12" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.13" = internal constant [6 x i8] c"%.14g\00"
@"nl_.14" = internal constant [2 x i8] c"\0a\00"
@"str_.15" = internal constant [11 x i8] c"Countdown:\00"
@"fmt_.16" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.17" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.18" = internal constant [6 x i8] c"%.14g\00"
@"nl_.19" = internal constant [2 x i8] c"\0a\00"