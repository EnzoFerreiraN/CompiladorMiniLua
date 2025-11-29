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

define double @"soma"(double %"a", double %"b")
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

define double @"fatorial"(double %"n")
{
entry:
  %"n.1" = alloca double
  store double %"n", double* %"n.1"
  %"n.2" = load double, double* %"n.1"
  %"letmp" = fcmp ole double %"n.2", 0x3ff0000000000000
  br i1 %"letmp", label %"then_0", label %"else_0"
if_merge:
  ret double              0x0
then_0:
  ret double 0x3ff0000000000000
else_0:
  %"n.3" = load double, double* %"n.1"
  %"n.4" = load double, double* %"n.1"
  %"subtmp" = fsub double %"n.4", 0x3ff0000000000000
  %".6" = call double @"fatorial"(double %"subtmp")
  %"multmp" = fmul double %"n.3", %".6"
  ret double %"multmp"
}

define double @"fibonacci"(double %"n")
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
  %".7" = call double @"fibonacci"(double %"subtmp")
  %"n.5" = load double, double* %"n.1"
  %"subtmp.1" = fsub double %"n.5", 0x4000000000000000
  %".8" = call double @"fibonacci"(double %"subtmp.1")
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
  %"res" = alloca double
  store double              0x0, double* %"res"
  %".8" = call double @"soma"(double 0x4024000000000000, double 0x4034000000000000)
  store double %".8", double* %"res"
  %".10" = bitcast [14 x i8]* @"str_.4" to i8*
  %"res.1" = load double, double* %"res"
  %".11" = bitcast [4 x i8]* @"fmt_.5" to i8*
  %".12" = call i32 (i8*, ...) @"printf"(i8* %".11", i8* %".10")
  %".13" = bitcast [5 x i8]* @"fmt_.6" to i8*
  %".14" = call i32 (i8*, ...) @"printf"(i8* %".13", double %"res.1")
  %".15" = bitcast [2 x i8]* @"nl_.7" to i8*
  %".16" = call i32 (i8*, ...) @"printf"(i8* %".15")
  %".17" = bitcast [28 x i8]* @"str_.8" to i8*
  %".18" = call double @"fatorial"(double 0x4014000000000000)
  %".19" = bitcast [4 x i8]* @"fmt_.9" to i8*
  %".20" = call i32 (i8*, ...) @"printf"(i8* %".19", i8* %".17")
  %".21" = bitcast [5 x i8]* @"fmt_.10" to i8*
  %".22" = call i32 (i8*, ...) @"printf"(i8* %".21", double %".18")
  %".23" = bitcast [2 x i8]* @"nl_.11" to i8*
  %".24" = call i32 (i8*, ...) @"printf"(i8* %".23")
  %".25" = bitcast [29 x i8]* @"str_.12" to i8*
  %".26" = call double @"fatorial"(double 0x401c000000000000)
  %".27" = bitcast [4 x i8]* @"fmt_.13" to i8*
  %".28" = call i32 (i8*, ...) @"printf"(i8* %".27", i8* %".25")
  %".29" = bitcast [5 x i8]* @"fmt_.14" to i8*
  %".30" = call i32 (i8*, ...) @"printf"(i8* %".29", double %".26")
  %".31" = bitcast [2 x i8]* @"nl_.15" to i8*
  %".32" = call i32 (i8*, ...) @"printf"(i8* %".31")
  %".33" = bitcast [29 x i8]* @"str_.16" to i8*
  %".34" = call double @"fibonacci"(double 0x4024000000000000)
  %".35" = bitcast [4 x i8]* @"fmt_.17" to i8*
  %".36" = call i32 (i8*, ...) @"printf"(i8* %".35", i8* %".33")
  %".37" = bitcast [5 x i8]* @"fmt_.18" to i8*
  %".38" = call i32 (i8*, ...) @"printf"(i8* %".37", double %".34")
  %".39" = bitcast [2 x i8]* @"nl_.19" to i8*
  %".40" = call i32 (i8*, ...) @"printf"(i8* %".39")
  %"a" = alloca double
  store double 0x4059000000000000, double* %"a"
  %"b" = alloca double
  store double 0x4069000000000000, double* %"b"
  %".43" = bitcast [35 x i8]* @"str_.20" to i8*
  %"a.1" = load double, double* %"a"
  %"b.1" = load double, double* %"b"
  %".44" = bitcast [4 x i8]* @"fmt_.21" to i8*
  %".45" = call i32 (i8*, ...) @"printf"(i8* %".44", i8* %".43")
  %".46" = bitcast [6 x i8]* @"fmt_.22" to i8*
  %".47" = call i32 (i8*, ...) @"printf"(i8* %".46", double %"a.1")
  %".48" = bitcast [5 x i8]* @"fmt_.23" to i8*
  %".49" = call i32 (i8*, ...) @"printf"(i8* %".48", double %"b.1")
  %".50" = bitcast [2 x i8]* @"nl_.24" to i8*
  %".51" = call i32 (i8*, ...) @"printf"(i8* %".50")
  %".52" = bitcast [22 x i8]* @"str_.25" to i8*
  %"a.2" = load double, double* %"a"
  %"b.2" = load double, double* %"b"
  %".53" = call double @"soma"(double %"a.2", double %"b.2")
  %".54" = bitcast [4 x i8]* @"fmt_.26" to i8*
  %".55" = call i32 (i8*, ...) @"printf"(i8* %".54", i8* %".52")
  %".56" = bitcast [5 x i8]* @"fmt_.27" to i8*
  %".57" = call i32 (i8*, ...) @"printf"(i8* %".56", double %".53")
  %".58" = bitcast [2 x i8]* @"nl_.28" to i8*
  %".59" = call i32 (i8*, ...) @"printf"(i8* %".58")
  %".60" = bitcast [50 x i8]* @"str_.29" to i8*
  %"a.3" = load double, double* %"a"
  %"b.3" = load double, double* %"b"
  %".61" = bitcast [4 x i8]* @"fmt_.30" to i8*
  %".62" = call i32 (i8*, ...) @"printf"(i8* %".61", i8* %".60")
  %".63" = bitcast [6 x i8]* @"fmt_.31" to i8*
  %".64" = call i32 (i8*, ...) @"printf"(i8* %".63", double %"a.3")
  %".65" = bitcast [5 x i8]* @"fmt_.32" to i8*
  %".66" = call i32 (i8*, ...) @"printf"(i8* %".65", double %"b.3")
  %".67" = bitcast [2 x i8]* @"nl_.33" to i8*
  %".68" = call i32 (i8*, ...) @"printf"(i8* %".67")
  ret i32 0
}

@"str_.1" = internal constant [25 x i8] c"=== Teste 5: Funcoes ===\00"
@"fmt_.2" = internal constant [3 x i8] c"%s\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"str_.4" = internal constant [14 x i8] c"Soma(10, 20):\00"
@"fmt_.5" = internal constant [4 x i8] c"%s \00"
@"fmt_.6" = internal constant [5 x i8] c"%.2f\00"
@"nl_.7" = internal constant [2 x i8] c"\0a\00"
@"str_.8" = internal constant [28 x i8] c"Fatorial(5) (esperado 120):\00"
@"fmt_.9" = internal constant [4 x i8] c"%s \00"
@"fmt_.10" = internal constant [5 x i8] c"%.2f\00"
@"nl_.11" = internal constant [2 x i8] c"\0a\00"
@"str_.12" = internal constant [29 x i8] c"Fatorial(7) (esperado 5040):\00"
@"fmt_.13" = internal constant [4 x i8] c"%s \00"
@"fmt_.14" = internal constant [5 x i8] c"%.2f\00"
@"nl_.15" = internal constant [2 x i8] c"\0a\00"
@"str_.16" = internal constant [29 x i8] c"Fibonacci(10) (esperado 55):\00"
@"fmt_.17" = internal constant [4 x i8] c"%s \00"
@"fmt_.18" = internal constant [5 x i8] c"%.2f\00"
@"nl_.19" = internal constant [2 x i8] c"\0a\00"
@"str_.20" = internal constant [35 x i8] c"Variaveis locais antes da chamada:\00"
@"fmt_.21" = internal constant [4 x i8] c"%s \00"
@"fmt_.22" = internal constant [6 x i8] c"%.2f \00"
@"fmt_.23" = internal constant [5 x i8] c"%.2f\00"
@"nl_.24" = internal constant [2 x i8] c"\0a\00"
@"str_.25" = internal constant [22 x i8] c"Resultado soma(a, b):\00"
@"fmt_.26" = internal constant [4 x i8] c"%s \00"
@"fmt_.27" = internal constant [5 x i8] c"%.2f\00"
@"nl_.28" = internal constant [2 x i8] c"\0a\00"
@"str_.29" = internal constant [50 x i8] c"Variaveis locais apos chamada (devem ser iguais):\00"
@"fmt_.30" = internal constant [4 x i8] c"%s \00"
@"fmt_.31" = internal constant [6 x i8] c"%.2f \00"
@"fmt_.32" = internal constant [5 x i8] c"%.2f\00"
@"nl_.33" = internal constant [2 x i8] c"\0a\00"