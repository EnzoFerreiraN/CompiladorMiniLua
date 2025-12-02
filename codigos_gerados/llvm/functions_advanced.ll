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

declare void @"minilua_check_index"(i32 %".1")

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
  call void @"minilua_print_number"(double %"res.1")
  %".14" = bitcast [2 x i8]* @"nl_.6" to i8*
  %".15" = call i32 (i8*, ...) @"printf"(i8* %".14")
  %".16" = bitcast [28 x i8]* @"str_.7" to i8*
  %".17" = call double @"fatorial"(double 0x4014000000000000)
  %".18" = bitcast [4 x i8]* @"fmt_.8" to i8*
  %".19" = call i32 (i8*, ...) @"printf"(i8* %".18", i8* %".16")
  call void @"minilua_print_number"(double %".17")
  %".21" = bitcast [2 x i8]* @"nl_.9" to i8*
  %".22" = call i32 (i8*, ...) @"printf"(i8* %".21")
  %".23" = bitcast [29 x i8]* @"str_.10" to i8*
  %".24" = call double @"fatorial"(double 0x401c000000000000)
  %".25" = bitcast [4 x i8]* @"fmt_.11" to i8*
  %".26" = call i32 (i8*, ...) @"printf"(i8* %".25", i8* %".23")
  call void @"minilua_print_number"(double %".24")
  %".28" = bitcast [2 x i8]* @"nl_.12" to i8*
  %".29" = call i32 (i8*, ...) @"printf"(i8* %".28")
  %".30" = bitcast [29 x i8]* @"str_.13" to i8*
  %".31" = call double @"fibonacci"(double 0x4024000000000000)
  %".32" = bitcast [4 x i8]* @"fmt_.14" to i8*
  %".33" = call i32 (i8*, ...) @"printf"(i8* %".32", i8* %".30")
  call void @"minilua_print_number"(double %".31")
  %".35" = bitcast [2 x i8]* @"nl_.15" to i8*
  %".36" = call i32 (i8*, ...) @"printf"(i8* %".35")
  %"a" = alloca double
  store double 0x4059000000000000, double* %"a"
  %"b" = alloca double
  store double 0x4069000000000000, double* %"b"
  %".39" = bitcast [35 x i8]* @"str_.16" to i8*
  %"a.1" = load double, double* %"a"
  %"b.1" = load double, double* %"b"
  %".40" = bitcast [4 x i8]* @"fmt_.17" to i8*
  %".41" = call i32 (i8*, ...) @"printf"(i8* %".40", i8* %".39")
  call void @"minilua_print_number"(double %"a.1")
  %".43" = bitcast [2 x i8]* @"sp_.18" to i8*
  %".44" = call i32 (i8*, ...) @"printf"(i8* %".43")
  call void @"minilua_print_number"(double %"b.1")
  %".46" = bitcast [2 x i8]* @"nl_.19" to i8*
  %".47" = call i32 (i8*, ...) @"printf"(i8* %".46")
  %".48" = bitcast [22 x i8]* @"str_.20" to i8*
  %"a.2" = load double, double* %"a"
  %"b.2" = load double, double* %"b"
  %".49" = call double @"soma"(double %"a.2", double %"b.2")
  %".50" = bitcast [4 x i8]* @"fmt_.21" to i8*
  %".51" = call i32 (i8*, ...) @"printf"(i8* %".50", i8* %".48")
  call void @"minilua_print_number"(double %".49")
  %".53" = bitcast [2 x i8]* @"nl_.22" to i8*
  %".54" = call i32 (i8*, ...) @"printf"(i8* %".53")
  %".55" = bitcast [50 x i8]* @"str_.23" to i8*
  %"a.3" = load double, double* %"a"
  %"b.3" = load double, double* %"b"
  %".56" = bitcast [4 x i8]* @"fmt_.24" to i8*
  %".57" = call i32 (i8*, ...) @"printf"(i8* %".56", i8* %".55")
  call void @"minilua_print_number"(double %"a.3")
  %".59" = bitcast [2 x i8]* @"sp_.25" to i8*
  %".60" = call i32 (i8*, ...) @"printf"(i8* %".59")
  call void @"minilua_print_number"(double %"b.3")
  %".62" = bitcast [2 x i8]* @"nl_.26" to i8*
  %".63" = call i32 (i8*, ...) @"printf"(i8* %".62")
  ret i32 0
}

@"str_.1" = internal constant [25 x i8] c"=== Teste 5: Funcoes ===\00"
@"fmt_.2" = internal constant [3 x i8] c"%s\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"str_.4" = internal constant [14 x i8] c"Soma(10, 20):\00"
@"fmt_.5" = internal constant [4 x i8] c"%s \00"
@"nl_.6" = internal constant [2 x i8] c"\0a\00"
@"str_.7" = internal constant [28 x i8] c"Fatorial(5) (esperado 120):\00"
@"fmt_.8" = internal constant [4 x i8] c"%s \00"
@"nl_.9" = internal constant [2 x i8] c"\0a\00"
@"str_.10" = internal constant [29 x i8] c"Fatorial(7) (esperado 5040):\00"
@"fmt_.11" = internal constant [4 x i8] c"%s \00"
@"nl_.12" = internal constant [2 x i8] c"\0a\00"
@"str_.13" = internal constant [29 x i8] c"Fibonacci(10) (esperado 55):\00"
@"fmt_.14" = internal constant [4 x i8] c"%s \00"
@"nl_.15" = internal constant [2 x i8] c"\0a\00"
@"str_.16" = internal constant [35 x i8] c"Variaveis locais antes da chamada:\00"
@"fmt_.17" = internal constant [4 x i8] c"%s \00"
@"sp_.18" = internal constant [2 x i8] c" \00"
@"nl_.19" = internal constant [2 x i8] c"\0a\00"
@"str_.20" = internal constant [22 x i8] c"Resultado soma(a, b):\00"
@"fmt_.21" = internal constant [4 x i8] c"%s \00"
@"nl_.22" = internal constant [2 x i8] c"\0a\00"
@"str_.23" = internal constant [50 x i8] c"Variaveis locais apos chamada (devem ser iguais):\00"
@"fmt_.24" = internal constant [4 x i8] c"%s \00"
@"sp_.25" = internal constant [2 x i8] c" \00"
@"nl_.26" = internal constant [2 x i8] c"\0a\00"