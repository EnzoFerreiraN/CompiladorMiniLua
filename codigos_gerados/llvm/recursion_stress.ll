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
  %".8" = sitofp i1 %"gttmp" to double
  br i1 %"gttmp", label %"and_right", label %"and_merge"
and_right:
  %"n.3" = load double, double* %"n.1"
  %"eqtmp.1" = fcmp oeq double %"n.3",              0x0
  %".10" = sitofp i1 %"eqtmp.1" to double
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
  %".11" = bitcast [5 x i8]* @"fmt_.6" to i8*
  %".12" = call i32 (i8*, ...) @"printf"(i8* %".11", double %".8")
  %".13" = bitcast [2 x i8]* @"nl_.7" to i8*
  %".14" = call i32 (i8*, ...) @"printf"(i8* %".13")
  %".15" = bitcast [12 x i8]* @"str_.8" to i8*
  %".16" = call double @"ackermann"(double 0x3ff0000000000000, double 0x4000000000000000)
  %".17" = bitcast [4 x i8]* @"fmt_.9" to i8*
  %".18" = call i32 (i8*, ...) @"printf"(i8* %".17", i8* %".15")
  %".19" = bitcast [5 x i8]* @"fmt_.10" to i8*
  %".20" = call i32 (i8*, ...) @"printf"(i8* %".19", double %".16")
  %".21" = bitcast [2 x i8]* @"nl_.11" to i8*
  %".22" = call i32 (i8*, ...) @"printf"(i8* %".21")
  %".23" = bitcast [12 x i8]* @"str_.12" to i8*
  %".24" = call double @"ackermann"(double 0x4000000000000000, double 0x4000000000000000)
  %".25" = bitcast [4 x i8]* @"fmt_.13" to i8*
  %".26" = call i32 (i8*, ...) @"printf"(i8* %".25", i8* %".23")
  %".27" = bitcast [5 x i8]* @"fmt_.14" to i8*
  %".28" = call i32 (i8*, ...) @"printf"(i8* %".27", double %".24")
  %".29" = bitcast [2 x i8]* @"nl_.15" to i8*
  %".30" = call i32 (i8*, ...) @"printf"(i8* %".29")
  %".31" = bitcast [25 x i8]* @"str_.16" to i8*
  %".32" = bitcast [3 x i8]* @"fmt_.17" to i8*
  %".33" = call i32 (i8*, ...) @"printf"(i8* %".32", i8* %".31")
  %".34" = bitcast [2 x i8]* @"nl_.18" to i8*
  %".35" = call i32 (i8*, ...) @"printf"(i8* %".34")
  %".36" = bitcast [12 x i8]* @"str_.19" to i8*
  %".37" = call double @"ackermann"(double 0x4008000000000000, double 0x4000000000000000)
  %".38" = bitcast [4 x i8]* @"fmt_.20" to i8*
  %".39" = call i32 (i8*, ...) @"printf"(i8* %".38", i8* %".36")
  %".40" = bitcast [5 x i8]* @"fmt_.21" to i8*
  %".41" = call i32 (i8*, ...) @"printf"(i8* %".40", double %".37")
  %".42" = bitcast [2 x i8]* @"nl_.22" to i8*
  %".43" = call i32 (i8*, ...) @"printf"(i8* %".42")
  %".44" = bitcast [26 x i8]* @"str_.23" to i8*
  %".45" = bitcast [3 x i8]* @"fmt_.24" to i8*
  %".46" = call i32 (i8*, ...) @"printf"(i8* %".45", i8* %".44")
  %".47" = bitcast [2 x i8]* @"nl_.25" to i8*
  %".48" = call i32 (i8*, ...) @"printf"(i8* %".47")
  %".49" = bitcast [10 x i8]* @"str_.26" to i8*
  %".50" = call double @"fib_recursive"(double 0x4024000000000000)
  %".51" = bitcast [4 x i8]* @"fmt_.27" to i8*
  %".52" = call i32 (i8*, ...) @"printf"(i8* %".51", i8* %".49")
  %".53" = bitcast [5 x i8]* @"fmt_.28" to i8*
  %".54" = call i32 (i8*, ...) @"printf"(i8* %".53", double %".50")
  %".55" = bitcast [2 x i8]* @"nl_.29" to i8*
  %".56" = call i32 (i8*, ...) @"printf"(i8* %".55")
  ret i32 0
}

@"str_.1" = internal constant [25 x i8] c"Ackermann Function Test:\00"
@"fmt_.2" = internal constant [3 x i8] c"%s\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"str_.4" = internal constant [12 x i8] c"ack(0, 0) =\00"
@"fmt_.5" = internal constant [4 x i8] c"%s \00"
@"fmt_.6" = internal constant [5 x i8] c"%.2f\00"
@"nl_.7" = internal constant [2 x i8] c"\0a\00"
@"str_.8" = internal constant [12 x i8] c"ack(1, 2) =\00"
@"fmt_.9" = internal constant [4 x i8] c"%s \00"
@"fmt_.10" = internal constant [5 x i8] c"%.2f\00"
@"nl_.11" = internal constant [2 x i8] c"\0a\00"
@"str_.12" = internal constant [12 x i8] c"ack(2, 2) =\00"
@"fmt_.13" = internal constant [4 x i8] c"%s \00"
@"fmt_.14" = internal constant [5 x i8] c"%.2f\00"
@"nl_.15" = internal constant [2 x i8] c"\0a\00"
@"str_.16" = internal constant [25 x i8] c"Calculating ack(3, 2)...\00"
@"fmt_.17" = internal constant [3 x i8] c"%s\00"
@"nl_.18" = internal constant [2 x i8] c"\0a\00"
@"str_.19" = internal constant [12 x i8] c"ack(3, 2) =\00"
@"fmt_.20" = internal constant [4 x i8] c"%s \00"
@"fmt_.21" = internal constant [5 x i8] c"%.2f\00"
@"nl_.22" = internal constant [2 x i8] c"\0a\00"
@"str_.23" = internal constant [26 x i8] c"Fibonacci Recursive Test:\00"
@"fmt_.24" = internal constant [3 x i8] c"%s\00"
@"nl_.25" = internal constant [2 x i8] c"\0a\00"
@"str_.26" = internal constant [10 x i8] c"fib(10) =\00"
@"fmt_.27" = internal constant [4 x i8] c"%s \00"
@"fmt_.28" = internal constant [5 x i8] c"%.2f\00"
@"nl_.29" = internal constant [2 x i8] c"\0a\00"