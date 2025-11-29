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

define i32 @"main"()
{
entry:
  %"x" = alloca double
  store double 0x4024000000000000, double* %"x"
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
  %".30" = bitcast [5 x i8]* @"fmt_.12" to i8*
  %".31" = call i32 (i8*, ...) @"printf"(i8* %".30", double %"count.2")
  %".32" = bitcast [2 x i8]* @"nl_.13" to i8*
  %".33" = call i32 (i8*, ...) @"printf"(i8* %".32")
  %"count.3" = load double, double* %"count"
  %"addtmp" = fadd double %"count.3", 0x3ff0000000000000
  store double %"addtmp", double* %"count"
  br label %"while_cond"
while_merge:
  %"i" = alloca double
  store double              0x0, double* %"i"
  %"i.1" = alloca double
  store double 0x3ff0000000000000, double* %"i.1"
  br label %"for_cond"
for_cond:
  %"i.2" = load double, double* %"i.1"
  %"step_ge_0" = fcmp oge double 0x3ff0000000000000,              0x0
  %"cond_le" = fcmp ole double %"i.2", 0x4024000000000000
  %"cond_ge" = fcmp oge double %"i.2", 0x4024000000000000
  %"forcond" = select  i1 %"step_ge_0", i1 %"cond_le", i1 %"cond_ge"
  br i1 %"forcond", label %"for_body", label %"for_merge"
for_body:
  %".40" = bitcast [11 x i8]* @"str_.14" to i8*
  %"i.3" = load double, double* %"i.1"
  %".41" = bitcast [4 x i8]* @"fmt_.15" to i8*
  %".42" = call i32 (i8*, ...) @"printf"(i8* %".41", i8* %".40")
  %".43" = bitcast [5 x i8]* @"fmt_.16" to i8*
  %".44" = call i32 (i8*, ...) @"printf"(i8* %".43", double %"i.3")
  %".45" = bitcast [2 x i8]* @"nl_.17" to i8*
  %".46" = call i32 (i8*, ...) @"printf"(i8* %".45")
  %"i.4" = load double, double* %"i.1"
  %"nextval" = fadd double %"i.4", 0x3ff0000000000000
  store double %"nextval", double* %"i.1"
  br label %"for_cond"
for_merge:
  ret i32 0
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
@"fmt_.12" = internal constant [5 x i8] c"%.2f\00"
@"nl_.13" = internal constant [2 x i8] c"\0a\00"
@"str_.14" = internal constant [11 x i8] c"Countdown:\00"
@"fmt_.15" = internal constant [4 x i8] c"%s \00"
@"fmt_.16" = internal constant [5 x i8] c"%.2f\00"
@"nl_.17" = internal constant [2 x i8] c"\0a\00"