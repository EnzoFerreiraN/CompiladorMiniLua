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
  %".13" = fptosi double %"res.1" to i64
  %".14" = sitofp i64 %".13" to double
  %"is_int" = fcmp oeq double %"res.1", %".14"
  br i1 %"is_int", label %"print_int", label %"print_float"
print_int:
  %".16" = bitcast [5 x i8]* @"fmt_int_.6" to i8*
  %".17" = call i32 (i8*, ...) @"printf"(i8* %".16", i64 %".13")
  br label %"print_merge"
print_float:
  %".19" = bitcast [6 x i8]* @"fmt_flt_.7" to i8*
  %".20" = call i32 (i8*, ...) @"printf"(i8* %".19", double %"res.1")
  br label %"print_merge"
print_merge:
  %".22" = bitcast [2 x i8]* @"nl_.8" to i8*
  %".23" = call i32 (i8*, ...) @"printf"(i8* %".22")
  %".24" = bitcast [28 x i8]* @"str_.9" to i8*
  %".25" = call double @"fatorial"(double 0x4014000000000000)
  %".26" = bitcast [4 x i8]* @"fmt_.10" to i8*
  %".27" = call i32 (i8*, ...) @"printf"(i8* %".26", i8* %".24")
  %".28" = fptosi double %".25" to i64
  %".29" = sitofp i64 %".28" to double
  %"is_int.1" = fcmp oeq double %".25", %".29"
  br i1 %"is_int.1", label %"print_int.1", label %"print_float.1"
print_int.1:
  %".31" = bitcast [5 x i8]* @"fmt_int_.11" to i8*
  %".32" = call i32 (i8*, ...) @"printf"(i8* %".31", i64 %".28")
  br label %"print_merge.1"
print_float.1:
  %".34" = bitcast [6 x i8]* @"fmt_flt_.12" to i8*
  %".35" = call i32 (i8*, ...) @"printf"(i8* %".34", double %".25")
  br label %"print_merge.1"
print_merge.1:
  %".37" = bitcast [2 x i8]* @"nl_.13" to i8*
  %".38" = call i32 (i8*, ...) @"printf"(i8* %".37")
  %".39" = bitcast [29 x i8]* @"str_.14" to i8*
  %".40" = call double @"fatorial"(double 0x401c000000000000)
  %".41" = bitcast [4 x i8]* @"fmt_.15" to i8*
  %".42" = call i32 (i8*, ...) @"printf"(i8* %".41", i8* %".39")
  %".43" = fptosi double %".40" to i64
  %".44" = sitofp i64 %".43" to double
  %"is_int.2" = fcmp oeq double %".40", %".44"
  br i1 %"is_int.2", label %"print_int.2", label %"print_float.2"
print_int.2:
  %".46" = bitcast [5 x i8]* @"fmt_int_.16" to i8*
  %".47" = call i32 (i8*, ...) @"printf"(i8* %".46", i64 %".43")
  br label %"print_merge.2"
print_float.2:
  %".49" = bitcast [6 x i8]* @"fmt_flt_.17" to i8*
  %".50" = call i32 (i8*, ...) @"printf"(i8* %".49", double %".40")
  br label %"print_merge.2"
print_merge.2:
  %".52" = bitcast [2 x i8]* @"nl_.18" to i8*
  %".53" = call i32 (i8*, ...) @"printf"(i8* %".52")
  %".54" = bitcast [29 x i8]* @"str_.19" to i8*
  %".55" = call double @"fibonacci"(double 0x4024000000000000)
  %".56" = bitcast [4 x i8]* @"fmt_.20" to i8*
  %".57" = call i32 (i8*, ...) @"printf"(i8* %".56", i8* %".54")
  %".58" = fptosi double %".55" to i64
  %".59" = sitofp i64 %".58" to double
  %"is_int.3" = fcmp oeq double %".55", %".59"
  br i1 %"is_int.3", label %"print_int.3", label %"print_float.3"
print_int.3:
  %".61" = bitcast [5 x i8]* @"fmt_int_.21" to i8*
  %".62" = call i32 (i8*, ...) @"printf"(i8* %".61", i64 %".58")
  br label %"print_merge.3"
print_float.3:
  %".64" = bitcast [6 x i8]* @"fmt_flt_.22" to i8*
  %".65" = call i32 (i8*, ...) @"printf"(i8* %".64", double %".55")
  br label %"print_merge.3"
print_merge.3:
  %".67" = bitcast [2 x i8]* @"nl_.23" to i8*
  %".68" = call i32 (i8*, ...) @"printf"(i8* %".67")
  %"a" = alloca double
  store double 0x4059000000000000, double* %"a"
  %"b" = alloca double
  store double 0x4069000000000000, double* %"b"
  %".71" = bitcast [35 x i8]* @"str_.24" to i8*
  %"a.1" = load double, double* %"a"
  %"b.1" = load double, double* %"b"
  %".72" = bitcast [4 x i8]* @"fmt_.25" to i8*
  %".73" = call i32 (i8*, ...) @"printf"(i8* %".72", i8* %".71")
  %".74" = fptosi double %"a.1" to i64
  %".75" = sitofp i64 %".74" to double
  %"is_int.4" = fcmp oeq double %"a.1", %".75"
  br i1 %"is_int.4", label %"print_int.4", label %"print_float.4"
print_int.4:
  %".77" = bitcast [5 x i8]* @"fmt_int_.26" to i8*
  %".78" = call i32 (i8*, ...) @"printf"(i8* %".77", i64 %".74")
  br label %"print_merge.4"
print_float.4:
  %".80" = bitcast [6 x i8]* @"fmt_flt_.27" to i8*
  %".81" = call i32 (i8*, ...) @"printf"(i8* %".80", double %"a.1")
  br label %"print_merge.4"
print_merge.4:
  %".83" = bitcast [2 x i8]* @"sp_.28" to i8*
  %".84" = call i32 (i8*, ...) @"printf"(i8* %".83")
  %".85" = fptosi double %"b.1" to i64
  %".86" = sitofp i64 %".85" to double
  %"is_int.5" = fcmp oeq double %"b.1", %".86"
  br i1 %"is_int.5", label %"print_int.5", label %"print_float.5"
print_int.5:
  %".88" = bitcast [5 x i8]* @"fmt_int_.29" to i8*
  %".89" = call i32 (i8*, ...) @"printf"(i8* %".88", i64 %".85")
  br label %"print_merge.5"
print_float.5:
  %".91" = bitcast [6 x i8]* @"fmt_flt_.30" to i8*
  %".92" = call i32 (i8*, ...) @"printf"(i8* %".91", double %"b.1")
  br label %"print_merge.5"
print_merge.5:
  %".94" = bitcast [2 x i8]* @"nl_.31" to i8*
  %".95" = call i32 (i8*, ...) @"printf"(i8* %".94")
  %".96" = bitcast [22 x i8]* @"str_.32" to i8*
  %"a.2" = load double, double* %"a"
  %"b.2" = load double, double* %"b"
  %".97" = call double @"soma"(double %"a.2", double %"b.2")
  %".98" = bitcast [4 x i8]* @"fmt_.33" to i8*
  %".99" = call i32 (i8*, ...) @"printf"(i8* %".98", i8* %".96")
  %".100" = fptosi double %".97" to i64
  %".101" = sitofp i64 %".100" to double
  %"is_int.6" = fcmp oeq double %".97", %".101"
  br i1 %"is_int.6", label %"print_int.6", label %"print_float.6"
print_int.6:
  %".103" = bitcast [5 x i8]* @"fmt_int_.34" to i8*
  %".104" = call i32 (i8*, ...) @"printf"(i8* %".103", i64 %".100")
  br label %"print_merge.6"
print_float.6:
  %".106" = bitcast [6 x i8]* @"fmt_flt_.35" to i8*
  %".107" = call i32 (i8*, ...) @"printf"(i8* %".106", double %".97")
  br label %"print_merge.6"
print_merge.6:
  %".109" = bitcast [2 x i8]* @"nl_.36" to i8*
  %".110" = call i32 (i8*, ...) @"printf"(i8* %".109")
  %".111" = bitcast [50 x i8]* @"str_.37" to i8*
  %"a.3" = load double, double* %"a"
  %"b.3" = load double, double* %"b"
  %".112" = bitcast [4 x i8]* @"fmt_.38" to i8*
  %".113" = call i32 (i8*, ...) @"printf"(i8* %".112", i8* %".111")
  %".114" = fptosi double %"a.3" to i64
  %".115" = sitofp i64 %".114" to double
  %"is_int.7" = fcmp oeq double %"a.3", %".115"
  br i1 %"is_int.7", label %"print_int.7", label %"print_float.7"
print_int.7:
  %".117" = bitcast [5 x i8]* @"fmt_int_.39" to i8*
  %".118" = call i32 (i8*, ...) @"printf"(i8* %".117", i64 %".114")
  br label %"print_merge.7"
print_float.7:
  %".120" = bitcast [6 x i8]* @"fmt_flt_.40" to i8*
  %".121" = call i32 (i8*, ...) @"printf"(i8* %".120", double %"a.3")
  br label %"print_merge.7"
print_merge.7:
  %".123" = bitcast [2 x i8]* @"sp_.41" to i8*
  %".124" = call i32 (i8*, ...) @"printf"(i8* %".123")
  %".125" = fptosi double %"b.3" to i64
  %".126" = sitofp i64 %".125" to double
  %"is_int.8" = fcmp oeq double %"b.3", %".126"
  br i1 %"is_int.8", label %"print_int.8", label %"print_float.8"
print_int.8:
  %".128" = bitcast [5 x i8]* @"fmt_int_.42" to i8*
  %".129" = call i32 (i8*, ...) @"printf"(i8* %".128", i64 %".125")
  br label %"print_merge.8"
print_float.8:
  %".131" = bitcast [6 x i8]* @"fmt_flt_.43" to i8*
  %".132" = call i32 (i8*, ...) @"printf"(i8* %".131", double %"b.3")
  br label %"print_merge.8"
print_merge.8:
  %".134" = bitcast [2 x i8]* @"nl_.44" to i8*
  %".135" = call i32 (i8*, ...) @"printf"(i8* %".134")
  ret i32 0
}

@"str_.1" = internal constant [25 x i8] c"=== Teste 5: Funcoes ===\00"
@"fmt_.2" = internal constant [3 x i8] c"%s\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"str_.4" = internal constant [14 x i8] c"Soma(10, 20):\00"
@"fmt_.5" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.6" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.7" = internal constant [6 x i8] c"%.14g\00"
@"nl_.8" = internal constant [2 x i8] c"\0a\00"
@"str_.9" = internal constant [28 x i8] c"Fatorial(5) (esperado 120):\00"
@"fmt_.10" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.11" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.12" = internal constant [6 x i8] c"%.14g\00"
@"nl_.13" = internal constant [2 x i8] c"\0a\00"
@"str_.14" = internal constant [29 x i8] c"Fatorial(7) (esperado 5040):\00"
@"fmt_.15" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.16" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.17" = internal constant [6 x i8] c"%.14g\00"
@"nl_.18" = internal constant [2 x i8] c"\0a\00"
@"str_.19" = internal constant [29 x i8] c"Fibonacci(10) (esperado 55):\00"
@"fmt_.20" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.21" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.22" = internal constant [6 x i8] c"%.14g\00"
@"nl_.23" = internal constant [2 x i8] c"\0a\00"
@"str_.24" = internal constant [35 x i8] c"Variaveis locais antes da chamada:\00"
@"fmt_.25" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.26" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.27" = internal constant [6 x i8] c"%.14g\00"
@"sp_.28" = internal constant [2 x i8] c" \00"
@"fmt_int_.29" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.30" = internal constant [6 x i8] c"%.14g\00"
@"nl_.31" = internal constant [2 x i8] c"\0a\00"
@"str_.32" = internal constant [22 x i8] c"Resultado soma(a, b):\00"
@"fmt_.33" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.34" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.35" = internal constant [6 x i8] c"%.14g\00"
@"nl_.36" = internal constant [2 x i8] c"\0a\00"
@"str_.37" = internal constant [50 x i8] c"Variaveis locais apos chamada (devem ser iguais):\00"
@"fmt_.38" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.39" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.40" = internal constant [6 x i8] c"%.14g\00"
@"sp_.41" = internal constant [2 x i8] c" \00"
@"fmt_int_.42" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.43" = internal constant [6 x i8] c"%.14g\00"
@"nl_.44" = internal constant [2 x i8] c"\0a\00"