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

define double @"ackermann"(double %"m", double %"n")
{
entry:
  %"m.1" = alloca double
  store double %"m", double* %"m.1"
  %"n.1" = alloca double
  store double %"n", double* %"n.1"
  %"m.2" = load double, double* %"m.1"
  %"eqtmp" = fcmp oeq double %"m.2",              0x0
  br i1 %"eqtmp", label %"then_0", label %"else_0"
if_merge:
  ret double              0x0
then_0:
  %"n.2" = load double, double* %"n.1"
  %"addtmp" = fadd double %"n.2", 0x3ff0000000000000
  ret double %"addtmp"
else_0:
  %"m.3" = load double, double* %"m.1"
  %"gttmp" = fcmp ogt double %"m.3",              0x0
  %".8" = uitofp i1 %"gttmp" to double
  br i1 %"gttmp", label %"and_right", label %"and_merge"
and_right:
  %"n.3" = load double, double* %"n.1"
  %"eqtmp.1" = fcmp oeq double %"n.3",              0x0
  %".10" = uitofp i1 %"eqtmp.1" to double
  br label %"and_merge"
and_merge:
  %"andtmp" = phi  double [%".8", %"else_0"], [%".10", %"and_right"]
  %".12" = fcmp one double %"andtmp",              0x0
  br i1 %".12", label %"then_1", label %"else_1"
then_1:
  %"m.4" = load double, double* %"m.1"
  %"subtmp" = fsub double %"m.4", 0x3ff0000000000000
  %".14" = call double @"ackermann"(double %"subtmp", double 0x3ff0000000000000)
  ret double %".14"
else_1:
  %"m.5" = load double, double* %"m.1"
  %"subtmp.1" = fsub double %"m.5", 0x3ff0000000000000
  %"m.6" = load double, double* %"m.1"
  %"n.4" = load double, double* %"n.1"
  %"subtmp.2" = fsub double %"n.4", 0x3ff0000000000000
  %".16" = call double @"ackermann"(double %"m.6", double %"subtmp.2")
  %".17" = call double @"ackermann"(double %"subtmp.1", double %".16")
  ret double %".17"
}

define double @"fib_recursive"(double %"n")
{
entry:
  %"n.1" = alloca double
  store double %"n", double* %"n.1"
  %"n.2" = load double, double* %"n.1"
  %"letmp" = fcmp ole double %"n.2", 0x3ff0000000000000
  br i1 %"letmp", label %"then_0", label %"else_0"
if_merge:
  %"n.4" = load double, double* %"n.1"
  %"subtmp" = fsub double %"n.4", 0x3ff0000000000000
  %".7" = call double @"fib_recursive"(double %"subtmp")
  %"n.5" = load double, double* %"n.1"
  %"subtmp.1" = fsub double %"n.5", 0x4000000000000000
  %".8" = call double @"fib_recursive"(double %"subtmp.1")
  %"addtmp" = fadd double %".7", %".8"
  ret double %"addtmp"
then_0:
  %"n.3" = load double, double* %"n.1"
  ret double %"n.3"
else_0:
  br label %"if_merge"
}

define i32 @"main"()
{
entry:
  %".2" = bitcast [25 x i8]* @"str_.1" to i8*
  %".3" = bitcast [3 x i8]* @"fmt_.2" to i8*
  %".4" = call i32 (i8*, ...) @"printf"(i8* %".3", i8* %".2")
  %".5" = bitcast [2 x i8]* @"nl_.3" to i8*
  %".6" = call i32 (i8*, ...) @"printf"(i8* %".5")
  %".7" = bitcast [12 x i8]* @"str_.4" to i8*
  %".8" = call double @"ackermann"(double              0x0, double              0x0)
  %".9" = bitcast [4 x i8]* @"fmt_.5" to i8*
  %".10" = call i32 (i8*, ...) @"printf"(i8* %".9", i8* %".7")
  %".11" = fptosi double %".8" to i64
  %".12" = sitofp i64 %".11" to double
  %"is_int" = fcmp oeq double %".8", %".12"
  br i1 %"is_int", label %"print_int", label %"print_float"
print_int:
  %".14" = bitcast [5 x i8]* @"fmt_int_.6" to i8*
  %".15" = call i32 (i8*, ...) @"printf"(i8* %".14", i64 %".11")
  br label %"print_merge"
print_float:
  %".17" = bitcast [6 x i8]* @"fmt_flt_.7" to i8*
  %".18" = call i32 (i8*, ...) @"printf"(i8* %".17", double %".8")
  br label %"print_merge"
print_merge:
  %".20" = bitcast [2 x i8]* @"nl_.8" to i8*
  %".21" = call i32 (i8*, ...) @"printf"(i8* %".20")
  %".22" = bitcast [12 x i8]* @"str_.9" to i8*
  %".23" = call double @"ackermann"(double 0x3ff0000000000000, double 0x4000000000000000)
  %".24" = bitcast [4 x i8]* @"fmt_.10" to i8*
  %".25" = call i32 (i8*, ...) @"printf"(i8* %".24", i8* %".22")
  %".26" = fptosi double %".23" to i64
  %".27" = sitofp i64 %".26" to double
  %"is_int.1" = fcmp oeq double %".23", %".27"
  br i1 %"is_int.1", label %"print_int.1", label %"print_float.1"
print_int.1:
  %".29" = bitcast [5 x i8]* @"fmt_int_.11" to i8*
  %".30" = call i32 (i8*, ...) @"printf"(i8* %".29", i64 %".26")
  br label %"print_merge.1"
print_float.1:
  %".32" = bitcast [6 x i8]* @"fmt_flt_.12" to i8*
  %".33" = call i32 (i8*, ...) @"printf"(i8* %".32", double %".23")
  br label %"print_merge.1"
print_merge.1:
  %".35" = bitcast [2 x i8]* @"nl_.13" to i8*
  %".36" = call i32 (i8*, ...) @"printf"(i8* %".35")
  %".37" = bitcast [12 x i8]* @"str_.14" to i8*
  %".38" = call double @"ackermann"(double 0x4000000000000000, double 0x4000000000000000)
  %".39" = bitcast [4 x i8]* @"fmt_.15" to i8*
  %".40" = call i32 (i8*, ...) @"printf"(i8* %".39", i8* %".37")
  %".41" = fptosi double %".38" to i64
  %".42" = sitofp i64 %".41" to double
  %"is_int.2" = fcmp oeq double %".38", %".42"
  br i1 %"is_int.2", label %"print_int.2", label %"print_float.2"
print_int.2:
  %".44" = bitcast [5 x i8]* @"fmt_int_.16" to i8*
  %".45" = call i32 (i8*, ...) @"printf"(i8* %".44", i64 %".41")
  br label %"print_merge.2"
print_float.2:
  %".47" = bitcast [6 x i8]* @"fmt_flt_.17" to i8*
  %".48" = call i32 (i8*, ...) @"printf"(i8* %".47", double %".38")
  br label %"print_merge.2"
print_merge.2:
  %".50" = bitcast [2 x i8]* @"nl_.18" to i8*
  %".51" = call i32 (i8*, ...) @"printf"(i8* %".50")
  %".52" = bitcast [25 x i8]* @"str_.19" to i8*
  %".53" = bitcast [3 x i8]* @"fmt_.20" to i8*
  %".54" = call i32 (i8*, ...) @"printf"(i8* %".53", i8* %".52")
  %".55" = bitcast [2 x i8]* @"nl_.21" to i8*
  %".56" = call i32 (i8*, ...) @"printf"(i8* %".55")
  %".57" = bitcast [12 x i8]* @"str_.22" to i8*
  %".58" = call double @"ackermann"(double 0x4008000000000000, double 0x4000000000000000)
  %".59" = bitcast [4 x i8]* @"fmt_.23" to i8*
  %".60" = call i32 (i8*, ...) @"printf"(i8* %".59", i8* %".57")
  %".61" = fptosi double %".58" to i64
  %".62" = sitofp i64 %".61" to double
  %"is_int.3" = fcmp oeq double %".58", %".62"
  br i1 %"is_int.3", label %"print_int.3", label %"print_float.3"
print_int.3:
  %".64" = bitcast [5 x i8]* @"fmt_int_.24" to i8*
  %".65" = call i32 (i8*, ...) @"printf"(i8* %".64", i64 %".61")
  br label %"print_merge.3"
print_float.3:
  %".67" = bitcast [6 x i8]* @"fmt_flt_.25" to i8*
  %".68" = call i32 (i8*, ...) @"printf"(i8* %".67", double %".58")
  br label %"print_merge.3"
print_merge.3:
  %".70" = bitcast [2 x i8]* @"nl_.26" to i8*
  %".71" = call i32 (i8*, ...) @"printf"(i8* %".70")
  %".72" = bitcast [26 x i8]* @"str_.27" to i8*
  %".73" = bitcast [3 x i8]* @"fmt_.28" to i8*
  %".74" = call i32 (i8*, ...) @"printf"(i8* %".73", i8* %".72")
  %".75" = bitcast [2 x i8]* @"nl_.29" to i8*
  %".76" = call i32 (i8*, ...) @"printf"(i8* %".75")
  %".77" = bitcast [10 x i8]* @"str_.30" to i8*
  %".78" = call double @"fib_recursive"(double 0x4024000000000000)
  %".79" = bitcast [4 x i8]* @"fmt_.31" to i8*
  %".80" = call i32 (i8*, ...) @"printf"(i8* %".79", i8* %".77")
  %".81" = fptosi double %".78" to i64
  %".82" = sitofp i64 %".81" to double
  %"is_int.4" = fcmp oeq double %".78", %".82"
  br i1 %"is_int.4", label %"print_int.4", label %"print_float.4"
print_int.4:
  %".84" = bitcast [5 x i8]* @"fmt_int_.32" to i8*
  %".85" = call i32 (i8*, ...) @"printf"(i8* %".84", i64 %".81")
  br label %"print_merge.4"
print_float.4:
  %".87" = bitcast [6 x i8]* @"fmt_flt_.33" to i8*
  %".88" = call i32 (i8*, ...) @"printf"(i8* %".87", double %".78")
  br label %"print_merge.4"
print_merge.4:
  %".90" = bitcast [2 x i8]* @"nl_.34" to i8*
  %".91" = call i32 (i8*, ...) @"printf"(i8* %".90")
  ret i32 0
}

@"str_.1" = internal constant [25 x i8] c"Ackermann Function Test:\00"
@"fmt_.2" = internal constant [3 x i8] c"%s\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"str_.4" = internal constant [12 x i8] c"ack(0, 0) =\00"
@"fmt_.5" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.6" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.7" = internal constant [6 x i8] c"%.14g\00"
@"nl_.8" = internal constant [2 x i8] c"\0a\00"
@"str_.9" = internal constant [12 x i8] c"ack(1, 2) =\00"
@"fmt_.10" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.11" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.12" = internal constant [6 x i8] c"%.14g\00"
@"nl_.13" = internal constant [2 x i8] c"\0a\00"
@"str_.14" = internal constant [12 x i8] c"ack(2, 2) =\00"
@"fmt_.15" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.16" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.17" = internal constant [6 x i8] c"%.14g\00"
@"nl_.18" = internal constant [2 x i8] c"\0a\00"
@"str_.19" = internal constant [25 x i8] c"Calculating ack(3, 2)...\00"
@"fmt_.20" = internal constant [3 x i8] c"%s\00"
@"nl_.21" = internal constant [2 x i8] c"\0a\00"
@"str_.22" = internal constant [12 x i8] c"ack(3, 2) =\00"
@"fmt_.23" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.24" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.25" = internal constant [6 x i8] c"%.14g\00"
@"nl_.26" = internal constant [2 x i8] c"\0a\00"
@"str_.27" = internal constant [26 x i8] c"Fibonacci Recursive Test:\00"
@"fmt_.28" = internal constant [3 x i8] c"%s\00"
@"nl_.29" = internal constant [2 x i8] c"\0a\00"
@"str_.30" = internal constant [10 x i8] c"fib(10) =\00"
@"fmt_.31" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.32" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.33" = internal constant [6 x i8] c"%.14g\00"
@"nl_.34" = internal constant [2 x i8] c"\0a\00"