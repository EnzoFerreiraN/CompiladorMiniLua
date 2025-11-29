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

define i32 @"main"()
{
entry:
  %".2" = bitcast [41 x i8]* @"str_.1" to i8*
  %".3" = bitcast [3 x i8]* @"fmt_.2" to i8*
  %".4" = call i32 (i8*, ...) @"printf"(i8* %".3", i8* %".2")
  %".5" = bitcast [2 x i8]* @"nl_.3" to i8*
  %".6" = call i32 (i8*, ...) @"printf"(i8* %".5")
  %"a" = alloca double
  store double 0x4024000000000000, double* %"a"
  %"b" = alloca double
  store double 0x4008000000000000, double* %"b"
  %".9" = bitcast [13 x i8]* @"str_.4" to i8*
  %"a.1" = load double, double* %"a"
  %"b.1" = load double, double* %"b"
  %"addtmp" = fadd double %"a.1", %"b.1"
  %".10" = bitcast [4 x i8]* @"fmt_.5" to i8*
  %".11" = call i32 (i8*, ...) @"printf"(i8* %".10", i8* %".9")
  call void @"minilua_print_number"(double %"addtmp")
  %".13" = bitcast [2 x i8]* @"nl_.6" to i8*
  %".14" = call i32 (i8*, ...) @"printf"(i8* %".13")
  %".15" = bitcast [18 x i8]* @"str_.7" to i8*
  %"a.2" = load double, double* %"a"
  %"b.2" = load double, double* %"b"
  %"subtmp" = fsub double %"a.2", %"b.2"
  %".16" = bitcast [4 x i8]* @"fmt_.8" to i8*
  %".17" = call i32 (i8*, ...) @"printf"(i8* %".16", i8* %".15")
  call void @"minilua_print_number"(double %"subtmp")
  %".19" = bitcast [2 x i8]* @"nl_.9" to i8*
  %".20" = call i32 (i8*, ...) @"printf"(i8* %".19")
  %".21" = bitcast [22 x i8]* @"str_.10" to i8*
  %"a.3" = load double, double* %"a"
  %"b.3" = load double, double* %"b"
  %"multmp" = fmul double %"a.3", %"b.3"
  %".22" = bitcast [4 x i8]* @"fmt_.11" to i8*
  %".23" = call i32 (i8*, ...) @"printf"(i8* %".22", i8* %".21")
  call void @"minilua_print_number"(double %"multmp")
  %".25" = bitcast [2 x i8]* @"nl_.12" to i8*
  %".26" = call i32 (i8*, ...) @"printf"(i8* %".25")
  %".27" = bitcast [16 x i8]* @"str_.13" to i8*
  %"a.4" = load double, double* %"a"
  %"b.4" = load double, double* %"b"
  %"divtmp" = fdiv double %"a.4", %"b.4"
  %".28" = bitcast [4 x i8]* @"fmt_.14" to i8*
  %".29" = call i32 (i8*, ...) @"printf"(i8* %".28", i8* %".27")
  call void @"minilua_print_number"(double %"divtmp")
  %".31" = bitcast [2 x i8]* @"nl_.15" to i8*
  %".32" = call i32 (i8*, ...) @"printf"(i8* %".31")
  %".33" = bitcast [25 x i8]* @"str_.16" to i8*
  %"a.5" = load double, double* %"a"
  %"b.5" = load double, double* %"b"
  %"divtmp.1" = fdiv double %"a.5", %"b.5"
  %"floortmp" = call double @"floor"(double %"divtmp.1")
  %".34" = bitcast [4 x i8]* @"fmt_.17" to i8*
  %".35" = call i32 (i8*, ...) @"printf"(i8* %".34", i8* %".33")
  call void @"minilua_print_number"(double %"floortmp")
  %".37" = bitcast [2 x i8]* @"nl_.18" to i8*
  %".38" = call i32 (i8*, ...) @"printf"(i8* %".37")
  %".39" = bitcast [15 x i8]* @"str_.19" to i8*
  %"a.6" = load double, double* %"a"
  %"b.6" = load double, double* %"b"
  %"modtmp" = call double @"fmod"(double %"a.6", double %"b.6")
  %".40" = bitcast [4 x i8]* @"fmt_.20" to i8*
  %".41" = call i32 (i8*, ...) @"printf"(i8* %".40", i8* %".39")
  call void @"minilua_print_number"(double %"modtmp")
  %".43" = bitcast [2 x i8]* @"nl_.21" to i8*
  %".44" = call i32 (i8*, ...) @"printf"(i8* %".43")
  %".45" = bitcast [22 x i8]* @"str_.22" to i8*
  %"a.7" = load double, double* %"a"
  %"b.7" = load double, double* %"b"
  %"powtmp" = call double @"pow"(double %"a.7", double %"b.7")
  %".46" = bitcast [4 x i8]* @"fmt_.23" to i8*
  %".47" = call i32 (i8*, ...) @"printf"(i8* %".46", i8* %".45")
  call void @"minilua_print_number"(double %"powtmp")
  %".49" = bitcast [2 x i8]* @"nl_.24" to i8*
  %".50" = call i32 (i8*, ...) @"printf"(i8* %".49")
  %".51" = bitcast [17 x i8]* @"str_.25" to i8*
  %"a.8" = load double, double* %"a"
  %"b.8" = load double, double* %"b"
  %"gttmp" = fcmp ogt double %"a.8", %"b.8"
  %".52" = bitcast [4 x i8]* @"fmt_.26" to i8*
  %".53" = call i32 (i8*, ...) @"printf"(i8* %".52", i8* %".51")
  %".54" = bitcast [3 x i8]* @"fmt_.27" to i8*
  %".55" = call i32 (i8*, ...) @"printf"(i8* %".54", i1 %"gttmp")
  %".56" = bitcast [2 x i8]* @"nl_.28" to i8*
  %".57" = call i32 (i8*, ...) @"printf"(i8* %".56")
  %".58" = bitcast [18 x i8]* @"str_.29" to i8*
  %"a.9" = load double, double* %"a"
  %"b.9" = load double, double* %"b"
  %"lttmp" = fcmp olt double %"a.9", %"b.9"
  %".59" = bitcast [4 x i8]* @"fmt_.30" to i8*
  %".60" = call i32 (i8*, ...) @"printf"(i8* %".59", i8* %".58")
  %".61" = bitcast [3 x i8]* @"fmt_.31" to i8*
  %".62" = call i32 (i8*, ...) @"printf"(i8* %".61", i1 %"lttmp")
  %".63" = bitcast [2 x i8]* @"nl_.32" to i8*
  %".64" = call i32 (i8*, ...) @"printf"(i8* %".63")
  %".65" = bitcast [19 x i8]* @"str_.33" to i8*
  %"a.10" = load double, double* %"a"
  %"eqtmp" = fcmp oeq double %"a.10", 0x4024000000000000
  %".66" = bitcast [4 x i8]* @"fmt_.34" to i8*
  %".67" = call i32 (i8*, ...) @"printf"(i8* %".66", i8* %".65")
  %".68" = bitcast [3 x i8]* @"fmt_.35" to i8*
  %".69" = call i32 (i8*, ...) @"printf"(i8* %".68", i1 %"eqtmp")
  %".70" = bitcast [2 x i8]* @"nl_.36" to i8*
  %".71" = call i32 (i8*, ...) @"printf"(i8* %".70")
  %".72" = bitcast [18 x i8]* @"str_.37" to i8*
  %"a.11" = load double, double* %"a"
  %"b.10" = load double, double* %"b"
  %"netmp" = fcmp one double %"a.11", %"b.10"
  %".73" = bitcast [4 x i8]* @"fmt_.38" to i8*
  %".74" = call i32 (i8*, ...) @"printf"(i8* %".73", i8* %".72")
  %".75" = bitcast [3 x i8]* @"fmt_.39" to i8*
  %".76" = call i32 (i8*, ...) @"printf"(i8* %".75", i1 %"netmp")
  %".77" = bitcast [2 x i8]* @"nl_.40" to i8*
  %".78" = call i32 (i8*, ...) @"printf"(i8* %".77")
  %".79" = bitcast [19 x i8]* @"str_.41" to i8*
  %"a.12" = load double, double* %"a"
  %"getmp" = fcmp oge double %"a.12", 0x4024000000000000
  %".80" = bitcast [4 x i8]* @"fmt_.42" to i8*
  %".81" = call i32 (i8*, ...) @"printf"(i8* %".80", i8* %".79")
  %".82" = bitcast [3 x i8]* @"fmt_.43" to i8*
  %".83" = call i32 (i8*, ...) @"printf"(i8* %".82", i1 %"getmp")
  %".84" = bitcast [2 x i8]* @"nl_.44" to i8*
  %".85" = call i32 (i8*, ...) @"printf"(i8* %".84")
  %".86" = bitcast [18 x i8]* @"str_.45" to i8*
  %"b.11" = load double, double* %"b"
  %"a.13" = load double, double* %"a"
  %"letmp" = fcmp ole double %"b.11", %"a.13"
  %".87" = bitcast [4 x i8]* @"fmt_.46" to i8*
  %".88" = call i32 (i8*, ...) @"printf"(i8* %".87", i8* %".86")
  %".89" = bitcast [3 x i8]* @"fmt_.47" to i8*
  %".90" = call i32 (i8*, ...) @"printf"(i8* %".89", i1 %"letmp")
  %".91" = bitcast [2 x i8]* @"nl_.48" to i8*
  %".92" = call i32 (i8*, ...) @"printf"(i8* %".91")
  %"t" = alloca i1
  store i1 1, i1* %"t"
  %"f" = alloca i1
  store i1 0, i1* %"f"
  %".95" = bitcast [26 x i8]* @"str_.49" to i8*
  %"t.1" = load i1, i1* %"t"
  %".96" = uitofp i1 %"t.1" to double
  br i1 %"t.1", label %"and_right", label %"and_merge"
and_right:
  %"f.1" = load i1, i1* %"f"
  %".98" = uitofp i1 %"f.1" to double
  br label %"and_merge"
and_merge:
  %"andtmp" = phi  double [%".96", %"entry"], [%".98", %"and_right"]
  %".100" = bitcast [4 x i8]* @"fmt_.50" to i8*
  %".101" = call i32 (i8*, ...) @"printf"(i8* %".100", i8* %".95")
  call void @"minilua_print_number"(double %"andtmp")
  %".103" = bitcast [2 x i8]* @"nl_.51" to i8*
  %".104" = call i32 (i8*, ...) @"printf"(i8* %".103")
  %".105" = bitcast [24 x i8]* @"str_.52" to i8*
  %"t.2" = load i1, i1* %"t"
  %".106" = uitofp i1 %"t.2" to double
  br i1 %"t.2", label %"or_merge", label %"or_right"
or_right:
  %"f.2" = load i1, i1* %"f"
  %".108" = uitofp i1 %"f.2" to double
  br label %"or_merge"
or_merge:
  %"ortmp" = phi  double [%".106", %"and_merge"], [%".108", %"or_right"]
  %".110" = bitcast [4 x i8]* @"fmt_.53" to i8*
  %".111" = call i32 (i8*, ...) @"printf"(i8* %".110", i8* %".105")
  call void @"minilua_print_number"(double %"ortmp")
  %".113" = bitcast [2 x i8]* @"nl_.54" to i8*
  %".114" = call i32 (i8*, ...) @"printf"(i8* %".113")
  %".115" = bitcast [20 x i8]* @"str_.55" to i8*
  %"t.3" = load i1, i1* %"t"
  %"nottmp" = xor i1 %"t.3", 1
  %".116" = uitofp i1 %"nottmp" to double
  %".117" = bitcast [4 x i8]* @"fmt_.56" to i8*
  %".118" = call i32 (i8*, ...) @"printf"(i8* %".117", i8* %".115")
  call void @"minilua_print_number"(double %".116")
  %".120" = bitcast [2 x i8]* @"nl_.57" to i8*
  %".121" = call i32 (i8*, ...) @"printf"(i8* %".120")
  %".122" = bitcast [20 x i8]* @"str_.58" to i8*
  %"f.3" = load i1, i1* %"f"
  %"nottmp.1" = xor i1 %"f.3", 1
  %".123" = uitofp i1 %"nottmp.1" to double
  %".124" = bitcast [4 x i8]* @"fmt_.59" to i8*
  %".125" = call i32 (i8*, ...) @"printf"(i8* %".124", i8* %".122")
  call void @"minilua_print_number"(double %".123")
  %".127" = bitcast [2 x i8]* @"nl_.60" to i8*
  %".128" = call i32 (i8*, ...) @"printf"(i8* %".127")
  %".129" = bitcast [25 x i8]* @"str_.61" to i8*
  %"multmp.1" = fmul double 0x4008000000000000, 0x4010000000000000
  %"addtmp.1" = fadd double 0x4000000000000000, %"multmp.1"
  %".130" = bitcast [4 x i8]* @"fmt_.62" to i8*
  %".131" = call i32 (i8*, ...) @"printf"(i8* %".130", i8* %".129")
  call void @"minilua_print_number"(double %"addtmp.1")
  %".133" = bitcast [2 x i8]* @"nl_.63" to i8*
  %".134" = call i32 (i8*, ...) @"printf"(i8* %".133")
  %".135" = bitcast [27 x i8]* @"str_.64" to i8*
  %"addtmp.2" = fadd double 0x4000000000000000, 0x4008000000000000
  %"multmp.2" = fmul double %"addtmp.2", 0x4010000000000000
  %".136" = bitcast [4 x i8]* @"fmt_.65" to i8*
  %".137" = call i32 (i8*, ...) @"printf"(i8* %".136", i8* %".135")
  call void @"minilua_print_number"(double %"multmp.2")
  %".139" = bitcast [2 x i8]* @"nl_.66" to i8*
  %".140" = call i32 (i8*, ...) @"printf"(i8* %".139")
  %".141" = bitcast [43 x i8]* @"str_.67" to i8*
  %".142" = uitofp i1 1 to double
  br i1 1, label %"or_merge.1", label %"or_right.1"
or_right.1:
  %".144" = uitofp i1 0 to double
  br i1 0, label %"and_right.1", label %"and_merge.1"
or_merge.1:
  %"ortmp.1" = phi  double [%".142", %"or_merge"], [%"andtmp.1", %"and_merge.1"]
  %".149" = bitcast [4 x i8]* @"fmt_.68" to i8*
  %".150" = call i32 (i8*, ...) @"printf"(i8* %".149", i8* %".141")
  call void @"minilua_print_number"(double %"ortmp.1")
  %".152" = bitcast [2 x i8]* @"nl_.69" to i8*
  %".153" = call i32 (i8*, ...) @"printf"(i8* %".152")
  %".154" = bitcast [46 x i8]* @"str_.70" to i8*
  %".155" = uitofp i1 1 to double
  br i1 1, label %"or_merge.2", label %"or_right.2"
and_right.1:
  %".146" = uitofp i1 0 to double
  br label %"and_merge.1"
and_merge.1:
  %"andtmp.1" = phi  double [%".144", %"or_right.1"], [%".146", %"and_right.1"]
  br label %"or_merge.1"
or_right.2:
  %".157" = uitofp i1 0 to double
  br label %"or_merge.2"
or_merge.2:
  %"ortmp.2" = phi  double [%".155", %"or_merge.1"], [%".157", %"or_right.2"]
  %".159" = fcmp one double %"ortmp.2",              0x0
  br i1 %".159", label %"and_right.2", label %"and_merge.2"
and_right.2:
  %".161" = uitofp i1 0 to double
  br label %"and_merge.2"
and_merge.2:
  %"andtmp.2" = phi  double [%"ortmp.2", %"or_merge.2"], [%".161", %"and_right.2"]
  %".163" = bitcast [4 x i8]* @"fmt_.71" to i8*
  %".164" = call i32 (i8*, ...) @"printf"(i8* %".163", i8* %".154")
  call void @"minilua_print_number"(double %"andtmp.2")
  %".166" = bitcast [2 x i8]* @"nl_.72" to i8*
  %".167" = call i32 (i8*, ...) @"printf"(i8* %".166")
  ret i32 0
}

@"str_.1" = internal constant [41 x i8] c"=== Teste 2: Operadores e Expressoes ===\00"
@"fmt_.2" = internal constant [3 x i8] c"%s\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"str_.4" = internal constant [13 x i8] c"Soma (10+3):\00"
@"fmt_.5" = internal constant [4 x i8] c"%s \00"
@"nl_.6" = internal constant [2 x i8] c"\0a\00"
@"str_.7" = internal constant [18 x i8] c"Subtracao (10-3):\00"
@"fmt_.8" = internal constant [4 x i8] c"%s \00"
@"nl_.9" = internal constant [2 x i8] c"\0a\00"
@"str_.10" = internal constant [22 x i8] c"Multiplicacao (10*3):\00"
@"fmt_.11" = internal constant [4 x i8] c"%s \00"
@"nl_.12" = internal constant [2 x i8] c"\0a\00"
@"str_.13" = internal constant [16 x i8] c"Divisao (10/3):\00"
@"fmt_.14" = internal constant [4 x i8] c"%s \00"
@"nl_.15" = internal constant [2 x i8] c"\0a\00"
@"str_.16" = internal constant [25 x i8] c"Divisao Inteira (10//3):\00"
@"fmt_.17" = internal constant [4 x i8] c"%s \00"
@"nl_.18" = internal constant [2 x i8] c"\0a\00"
@"str_.19" = internal constant [15 x i8] c"Modulo (10%3):\00"
@"fmt_.20" = internal constant [4 x i8] c"%s \00"
@"nl_.21" = internal constant [2 x i8] c"\0a\00"
@"str_.22" = internal constant [22 x i8] c"Exponenciacao (10^3):\00"
@"fmt_.23" = internal constant [4 x i8] c"%s \00"
@"nl_.24" = internal constant [2 x i8] c"\0a\00"
@"str_.25" = internal constant [17 x i8] c"10 > 3 (true/1):\00"
@"fmt_.26" = internal constant [4 x i8] c"%s \00"
@"fmt_.27" = internal constant [3 x i8] c"%d\00"
@"nl_.28" = internal constant [2 x i8] c"\0a\00"
@"str_.29" = internal constant [18 x i8] c"10 < 3 (false/0):\00"
@"fmt_.30" = internal constant [4 x i8] c"%s \00"
@"fmt_.31" = internal constant [3 x i8] c"%d\00"
@"nl_.32" = internal constant [2 x i8] c"\0a\00"
@"str_.33" = internal constant [19 x i8] c"10 == 10 (true/1):\00"
@"fmt_.34" = internal constant [4 x i8] c"%s \00"
@"fmt_.35" = internal constant [3 x i8] c"%d\00"
@"nl_.36" = internal constant [2 x i8] c"\0a\00"
@"str_.37" = internal constant [18 x i8] c"10 ~= 3 (true/1):\00"
@"fmt_.38" = internal constant [4 x i8] c"%s \00"
@"fmt_.39" = internal constant [3 x i8] c"%d\00"
@"nl_.40" = internal constant [2 x i8] c"\0a\00"
@"str_.41" = internal constant [19 x i8] c"10 >= 10 (true/1):\00"
@"fmt_.42" = internal constant [4 x i8] c"%s \00"
@"fmt_.43" = internal constant [3 x i8] c"%d\00"
@"nl_.44" = internal constant [2 x i8] c"\0a\00"
@"str_.45" = internal constant [18 x i8] c"3 <= 10 (true/1):\00"
@"fmt_.46" = internal constant [4 x i8] c"%s \00"
@"fmt_.47" = internal constant [3 x i8] c"%d\00"
@"nl_.48" = internal constant [2 x i8] c"\0a\00"
@"str_.49" = internal constant [26 x i8] c"true and false (false/0):\00"
@"fmt_.50" = internal constant [4 x i8] c"%s \00"
@"nl_.51" = internal constant [2 x i8] c"\0a\00"
@"str_.52" = internal constant [24 x i8] c"true or false (true/1):\00"
@"fmt_.53" = internal constant [4 x i8] c"%s \00"
@"nl_.54" = internal constant [2 x i8] c"\0a\00"
@"str_.55" = internal constant [20 x i8] c"not true (false/0):\00"
@"fmt_.56" = internal constant [4 x i8] c"%s \00"
@"nl_.57" = internal constant [2 x i8] c"\0a\00"
@"str_.58" = internal constant [20 x i8] c"not false (true/1):\00"
@"fmt_.59" = internal constant [4 x i8] c"%s \00"
@"nl_.60" = internal constant [2 x i8] c"\0a\00"
@"str_.61" = internal constant [25 x i8] c"2 + 3 * 4 (esperado 14):\00"
@"fmt_.62" = internal constant [4 x i8] c"%s \00"
@"nl_.63" = internal constant [2 x i8] c"\0a\00"
@"str_.64" = internal constant [27 x i8] c"(2 + 3) * 4 (esperado 20):\00"
@"fmt_.65" = internal constant [4 x i8] c"%s \00"
@"nl_.66" = internal constant [2 x i8] c"\0a\00"
@"str_.67" = internal constant [43 x i8] c"true or false and false (esperado 1/true):\00"
@"fmt_.68" = internal constant [4 x i8] c"%s \00"
@"nl_.69" = internal constant [2 x i8] c"\0a\00"
@"str_.70" = internal constant [46 x i8] c"(true or false) and false (esperado 0/false):\00"
@"fmt_.71" = internal constant [4 x i8] c"%s \00"
@"nl_.72" = internal constant [2 x i8] c"\0a\00"