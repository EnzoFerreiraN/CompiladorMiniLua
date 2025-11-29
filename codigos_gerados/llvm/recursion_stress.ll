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

declare void @"minilua_print_number"(double %".1")

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
  call void @"minilua_print_number"(double %".8")
  %".12" = bitcast [2 x i8]* @"nl_.6" to i8*
  %".13" = call i32 (i8*, ...) @"printf"(i8* %".12")
  %".14" = bitcast [12 x i8]* @"str_.7" to i8*
  %".15" = call double @"ackermann"(double 0x3ff0000000000000, double 0x4000000000000000)
  %".16" = bitcast [4 x i8]* @"fmt_.8" to i8*
  %".17" = call i32 (i8*, ...) @"printf"(i8* %".16", i8* %".14")
  call void @"minilua_print_number"(double %".15")
  %".19" = bitcast [2 x i8]* @"nl_.9" to i8*
  %".20" = call i32 (i8*, ...) @"printf"(i8* %".19")
  %".21" = bitcast [12 x i8]* @"str_.10" to i8*
  %".22" = call double @"ackermann"(double 0x4000000000000000, double 0x4000000000000000)
  %".23" = bitcast [4 x i8]* @"fmt_.11" to i8*
  %".24" = call i32 (i8*, ...) @"printf"(i8* %".23", i8* %".21")
  call void @"minilua_print_number"(double %".22")
  %".26" = bitcast [2 x i8]* @"nl_.12" to i8*
  %".27" = call i32 (i8*, ...) @"printf"(i8* %".26")
  %".28" = bitcast [25 x i8]* @"str_.13" to i8*
  %".29" = bitcast [3 x i8]* @"fmt_.14" to i8*
  %".30" = call i32 (i8*, ...) @"printf"(i8* %".29", i8* %".28")
  %".31" = bitcast [2 x i8]* @"nl_.15" to i8*
  %".32" = call i32 (i8*, ...) @"printf"(i8* %".31")
  %".33" = bitcast [12 x i8]* @"str_.16" to i8*
  %".34" = call double @"ackermann"(double 0x4008000000000000, double 0x4000000000000000)
  %".35" = bitcast [4 x i8]* @"fmt_.17" to i8*
  %".36" = call i32 (i8*, ...) @"printf"(i8* %".35", i8* %".33")
  call void @"minilua_print_number"(double %".34")
  %".38" = bitcast [2 x i8]* @"nl_.18" to i8*
  %".39" = call i32 (i8*, ...) @"printf"(i8* %".38")
  %".40" = bitcast [26 x i8]* @"str_.19" to i8*
  %".41" = bitcast [3 x i8]* @"fmt_.20" to i8*
  %".42" = call i32 (i8*, ...) @"printf"(i8* %".41", i8* %".40")
  %".43" = bitcast [2 x i8]* @"nl_.21" to i8*
  %".44" = call i32 (i8*, ...) @"printf"(i8* %".43")
  %".45" = bitcast [10 x i8]* @"str_.22" to i8*
  %".46" = call double @"fib_recursive"(double 0x4024000000000000)
  %".47" = bitcast [4 x i8]* @"fmt_.23" to i8*
  %".48" = call i32 (i8*, ...) @"printf"(i8* %".47", i8* %".45")
  call void @"minilua_print_number"(double %".46")
  %".50" = bitcast [2 x i8]* @"nl_.24" to i8*
  %".51" = call i32 (i8*, ...) @"printf"(i8* %".50")
  ret i32 0
}

@"str_.1" = internal constant [25 x i8] c"Ackermann Function Test:\00"
@"fmt_.2" = internal constant [3 x i8] c"%s\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"str_.4" = internal constant [12 x i8] c"ack(0, 0) =\00"
@"fmt_.5" = internal constant [4 x i8] c"%s \00"
@"nl_.6" = internal constant [2 x i8] c"\0a\00"
@"str_.7" = internal constant [12 x i8] c"ack(1, 2) =\00"
@"fmt_.8" = internal constant [4 x i8] c"%s \00"
@"nl_.9" = internal constant [2 x i8] c"\0a\00"
@"str_.10" = internal constant [12 x i8] c"ack(2, 2) =\00"
@"fmt_.11" = internal constant [4 x i8] c"%s \00"
@"nl_.12" = internal constant [2 x i8] c"\0a\00"
@"str_.13" = internal constant [25 x i8] c"Calculating ack(3, 2)...\00"
@"fmt_.14" = internal constant [3 x i8] c"%s\00"
@"nl_.15" = internal constant [2 x i8] c"\0a\00"
@"str_.16" = internal constant [12 x i8] c"ack(3, 2) =\00"
@"fmt_.17" = internal constant [4 x i8] c"%s \00"
@"nl_.18" = internal constant [2 x i8] c"\0a\00"
@"str_.19" = internal constant [26 x i8] c"Fibonacci Recursive Test:\00"
@"fmt_.20" = internal constant [3 x i8] c"%s\00"
@"nl_.21" = internal constant [2 x i8] c"\0a\00"
@"str_.22" = internal constant [10 x i8] c"fib(10) =\00"
@"fmt_.23" = internal constant [4 x i8] c"%s \00"
@"nl_.24" = internal constant [2 x i8] c"\0a\00"