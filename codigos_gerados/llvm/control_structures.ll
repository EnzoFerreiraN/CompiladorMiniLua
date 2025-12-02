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
  %".2" = bitcast [40 x i8]* @"str_.1" to i8*
  %".3" = bitcast [3 x i8]* @"fmt_.2" to i8*
  %".4" = call i32 (i8*, ...) @"printf"(i8* %".3", i8* %".2")
  %".5" = bitcast [2 x i8]* @"nl_.3" to i8*
  %".6" = call i32 (i8*, ...) @"printf"(i8* %".5")
  %"x" = alloca double
  store double 0x4024000000000000, double* %"x"
  %".8" = bitcast [20 x i8]* @"str_.4" to i8*
  %".9" = bitcast [3 x i8]* @"fmt_.5" to i8*
  %".10" = call i32 (i8*, ...) @"printf"(i8* %".9", i8* %".8")
  %".11" = bitcast [2 x i8]* @"nl_.6" to i8*
  %".12" = call i32 (i8*, ...) @"printf"(i8* %".11")
  %"x.1" = load double, double* %"x"
  %"lttmp" = fcmp olt double %"x.1", 0x4014000000000000
  br i1 %"lttmp", label %"then_0", label %"else_0"
if_merge:
  %".40" = bitcast [33 x i8]* @"str_.19" to i8*
  %".41" = bitcast [3 x i8]* @"fmt_.20" to i8*
  %".42" = call i32 (i8*, ...) @"printf"(i8* %".41", i8* %".40")
  %".43" = bitcast [2 x i8]* @"nl_.21" to i8*
  %".44" = call i32 (i8*, ...) @"printf"(i8* %".43")
  %"i" = alloca double
  store double 0x3ff0000000000000, double* %"i"
  br label %"while_cond"
then_0:
  %".14" = bitcast [18 x i8]* @"str_.7" to i8*
  %".15" = bitcast [3 x i8]* @"fmt_.8" to i8*
  %".16" = call i32 (i8*, ...) @"printf"(i8* %".15", i8* %".14")
  %".17" = bitcast [2 x i8]* @"nl_.9" to i8*
  %".18" = call i32 (i8*, ...) @"printf"(i8* %".17")
  br label %"if_merge"
else_0:
  %"x.2" = load double, double* %"x"
  %"gttmp" = fcmp ogt double %"x.2", 0x402e000000000000
  br i1 %"gttmp", label %"then_1", label %"else_1"
then_1:
  %".21" = bitcast [19 x i8]* @"str_.10" to i8*
  %".22" = bitcast [3 x i8]* @"fmt_.11" to i8*
  %".23" = call i32 (i8*, ...) @"printf"(i8* %".22", i8* %".21")
  %".24" = bitcast [2 x i8]* @"nl_.12" to i8*
  %".25" = call i32 (i8*, ...) @"printf"(i8* %".24")
  br label %"if_merge"
else_1:
  %"x.3" = load double, double* %"x"
  %"eqtmp" = fcmp oeq double %"x.3", 0x4024000000000000
  br i1 %"eqtmp", label %"then_2", label %"else_2"
then_2:
  %".28" = bitcast [18 x i8]* @"str_.13" to i8*
  %".29" = bitcast [3 x i8]* @"fmt_.14" to i8*
  %".30" = call i32 (i8*, ...) @"printf"(i8* %".29", i8* %".28")
  %".31" = bitcast [2 x i8]* @"nl_.15" to i8*
  %".32" = call i32 (i8*, ...) @"printf"(i8* %".31")
  br label %"if_merge"
else_2:
  %".34" = bitcast [17 x i8]* @"str_.16" to i8*
  %".35" = bitcast [3 x i8]* @"fmt_.17" to i8*
  %".36" = call i32 (i8*, ...) @"printf"(i8* %".35", i8* %".34")
  %".37" = bitcast [2 x i8]* @"nl_.18" to i8*
  %".38" = call i32 (i8*, ...) @"printf"(i8* %".37")
  br label %"if_merge"
while_cond:
  %"i.1" = load double, double* %"i"
  %"letmp" = fcmp ole double %"i.1", 0x4014000000000000
  br i1 %"letmp", label %"while_body", label %"while_merge"
while_body:
  %"i.2" = load double, double* %"i"
  %".48" = fptosi double %"i.2" to i64
  %".49" = sitofp i64 %".48" to double
  %"is_int" = fcmp oeq double %"i.2", %".49"
  br i1 %"is_int", label %"print_int", label %"print_float"
while_merge:
  %".61" = bitcast [22 x i8]* @"str_.25" to i8*
  %".62" = bitcast [3 x i8]* @"fmt_.26" to i8*
  %".63" = call i32 (i8*, ...) @"printf"(i8* %".62", i8* %".61")
  %".64" = bitcast [2 x i8]* @"nl_.27" to i8*
  %".65" = call i32 (i8*, ...) @"printf"(i8* %".64")
  %"j" = alloca double
  store double 0x3ff0000000000000, double* %"j"
  br label %"for_cond"
print_int:
  %".51" = bitcast [5 x i8]* @"fmt_int_.22" to i8*
  %".52" = call i32 (i8*, ...) @"printf"(i8* %".51", i64 %".48")
  br label %"print_merge"
print_float:
  %".54" = bitcast [6 x i8]* @"fmt_flt_.23" to i8*
  %".55" = call i32 (i8*, ...) @"printf"(i8* %".54", double %"i.2")
  br label %"print_merge"
print_merge:
  %".57" = bitcast [2 x i8]* @"nl_.24" to i8*
  %".58" = call i32 (i8*, ...) @"printf"(i8* %".57")
  %"i.3" = load double, double* %"i"
  %"addtmp" = fadd double %"i.3", 0x3ff0000000000000
  store double %"addtmp", double* %"i"
  br label %"while_cond"
for_cond:
  %"j.1" = load double, double* %"j"
  %"step_ge_0" = fcmp oge double 0x3ff0000000000000,              0x0
  %"cond_le" = fcmp ole double %"j.1", 0x4014000000000000
  %"cond_ge" = fcmp oge double %"j.1", 0x4014000000000000
  %"forcond" = select  i1 %"step_ge_0", i1 %"cond_le", i1 %"cond_ge"
  br i1 %"forcond", label %"for_body", label %"for_merge"
for_body:
  %"j.2" = load double, double* %"j"
  %".69" = fptosi double %"j.2" to i64
  %".70" = sitofp i64 %".69" to double
  %"is_int.1" = fcmp oeq double %"j.2", %".70"
  br i1 %"is_int.1", label %"print_int.1", label %"print_float.1"
for_merge:
  %".82" = bitcast [41 x i8]* @"str_.31" to i8*
  %".83" = bitcast [3 x i8]* @"fmt_.32" to i8*
  %".84" = call i32 (i8*, ...) @"printf"(i8* %".83", i8* %".82")
  %".85" = bitcast [2 x i8]* @"nl_.33" to i8*
  %".86" = call i32 (i8*, ...) @"printf"(i8* %".85")
  %"k" = alloca double
  store double              0x0, double* %"k"
  br label %"for_cond.1"
print_int.1:
  %".72" = bitcast [5 x i8]* @"fmt_int_.28" to i8*
  %".73" = call i32 (i8*, ...) @"printf"(i8* %".72", i64 %".69")
  br label %"print_merge.1"
print_float.1:
  %".75" = bitcast [6 x i8]* @"fmt_flt_.29" to i8*
  %".76" = call i32 (i8*, ...) @"printf"(i8* %".75", double %"j.2")
  br label %"print_merge.1"
print_merge.1:
  %".78" = bitcast [2 x i8]* @"nl_.30" to i8*
  %".79" = call i32 (i8*, ...) @"printf"(i8* %".78")
  %"j.3" = load double, double* %"j"
  %"nextval" = fadd double %"j.3", 0x3ff0000000000000
  store double %"nextval", double* %"j"
  br label %"for_cond"
for_cond.1:
  %"k.1" = load double, double* %"k"
  %"step_ge_0.1" = fcmp oge double 0x4000000000000000,              0x0
  %"cond_le.1" = fcmp ole double %"k.1", 0x4024000000000000
  %"cond_ge.1" = fcmp oge double %"k.1", 0x4024000000000000
  %"forcond.1" = select  i1 %"step_ge_0.1", i1 %"cond_le.1", i1 %"cond_ge.1"
  br i1 %"forcond.1", label %"for_body.1", label %"for_merge.1"
for_body.1:
  %"k.2" = load double, double* %"k"
  %".90" = fptosi double %"k.2" to i64
  %".91" = sitofp i64 %".90" to double
  %"is_int.2" = fcmp oeq double %"k.2", %".91"
  br i1 %"is_int.2", label %"print_int.2", label %"print_float.2"
for_merge.1:
  %".103" = bitcast [17 x i8]* @"str_.37" to i8*
  %".104" = bitcast [3 x i8]* @"fmt_.38" to i8*
  %".105" = call i32 (i8*, ...) @"printf"(i8* %".104", i8* %".103")
  %".106" = bitcast [2 x i8]* @"nl_.39" to i8*
  %".107" = call i32 (i8*, ...) @"printf"(i8* %".106")
  %"global_var" = alloca double
  store double 0x4059000000000000, double* %"global_var"
  %"local_var" = alloca double
  store double 0x4049000000000000, double* %"local_var"
  %".110" = bitcast [27 x i8]* @"str_.40" to i8*
  %"global_var.1" = load double, double* %"global_var"
  %".111" = bitcast [4 x i8]* @"fmt_.41" to i8*
  %".112" = call i32 (i8*, ...) @"printf"(i8* %".111", i8* %".110")
  %".113" = fptosi double %"global_var.1" to i64
  %".114" = sitofp i64 %".113" to double
  %"is_int.3" = fcmp oeq double %"global_var.1", %".114"
  br i1 %"is_int.3", label %"print_int.3", label %"print_float.3"
print_int.2:
  %".93" = bitcast [5 x i8]* @"fmt_int_.34" to i8*
  %".94" = call i32 (i8*, ...) @"printf"(i8* %".93", i64 %".90")
  br label %"print_merge.2"
print_float.2:
  %".96" = bitcast [6 x i8]* @"fmt_flt_.35" to i8*
  %".97" = call i32 (i8*, ...) @"printf"(i8* %".96", double %"k.2")
  br label %"print_merge.2"
print_merge.2:
  %".99" = bitcast [2 x i8]* @"nl_.36" to i8*
  %".100" = call i32 (i8*, ...) @"printf"(i8* %".99")
  %"k.3" = load double, double* %"k"
  %"nextval.1" = fadd double %"k.3", 0x4000000000000000
  store double %"nextval.1", double* %"k"
  br label %"for_cond.1"
print_int.3:
  %".116" = bitcast [5 x i8]* @"fmt_int_.42" to i8*
  %".117" = call i32 (i8*, ...) @"printf"(i8* %".116", i64 %".113")
  br label %"print_merge.3"
print_float.3:
  %".119" = bitcast [6 x i8]* @"fmt_flt_.43" to i8*
  %".120" = call i32 (i8*, ...) @"printf"(i8* %".119", double %"global_var.1")
  br label %"print_merge.3"
print_merge.3:
  %".122" = bitcast [2 x i8]* @"nl_.44" to i8*
  %".123" = call i32 (i8*, ...) @"printf"(i8* %".122")
  %".124" = bitcast [26 x i8]* @"str_.45" to i8*
  %"local_var.1" = load double, double* %"local_var"
  %".125" = bitcast [4 x i8]* @"fmt_.46" to i8*
  %".126" = call i32 (i8*, ...) @"printf"(i8* %".125", i8* %".124")
  %".127" = fptosi double %"local_var.1" to i64
  %".128" = sitofp i64 %".127" to double
  %"is_int.4" = fcmp oeq double %"local_var.1", %".128"
  br i1 %"is_int.4", label %"print_int.4", label %"print_float.4"
print_int.4:
  %".130" = bitcast [5 x i8]* @"fmt_int_.47" to i8*
  %".131" = call i32 (i8*, ...) @"printf"(i8* %".130", i64 %".127")
  br label %"print_merge.4"
print_float.4:
  %".133" = bitcast [6 x i8]* @"fmt_flt_.48" to i8*
  %".134" = call i32 (i8*, ...) @"printf"(i8* %".133", double %"local_var.1")
  br label %"print_merge.4"
print_merge.4:
  %".136" = bitcast [2 x i8]* @"nl_.49" to i8*
  %".137" = call i32 (i8*, ...) @"printf"(i8* %".136")
  %"global_var.2" = alloca double
  store double 0x4069000000000000, double* %"global_var.2"
  %".139" = bitcast [34 x i8]* @"str_.50" to i8*
  %"global_var.3" = load double, double* %"global_var.2"
  %".140" = bitcast [4 x i8]* @"fmt_.51" to i8*
  %".141" = call i32 (i8*, ...) @"printf"(i8* %".140", i8* %".139")
  %".142" = fptosi double %"global_var.3" to i64
  %".143" = sitofp i64 %".142" to double
  %"is_int.5" = fcmp oeq double %"global_var.3", %".143"
  br i1 %"is_int.5", label %"print_int.5", label %"print_float.5"
print_int.5:
  %".145" = bitcast [5 x i8]* @"fmt_int_.52" to i8*
  %".146" = call i32 (i8*, ...) @"printf"(i8* %".145", i64 %".142")
  br label %"print_merge.5"
print_float.5:
  %".148" = bitcast [6 x i8]* @"fmt_flt_.53" to i8*
  %".149" = call i32 (i8*, ...) @"printf"(i8* %".148", double %"global_var.3")
  br label %"print_merge.5"
print_merge.5:
  %".151" = bitcast [2 x i8]* @"nl_.54" to i8*
  %".152" = call i32 (i8*, ...) @"printf"(i8* %".151")
  %".153" = bitcast [25 x i8]* @"str_.55" to i8*
  %"global_var.4" = load double, double* %"global_var"
  %".154" = bitcast [4 x i8]* @"fmt_.56" to i8*
  %".155" = call i32 (i8*, ...) @"printf"(i8* %".154", i8* %".153")
  %".156" = fptosi double %"global_var.4" to i64
  %".157" = sitofp i64 %".156" to double
  %"is_int.6" = fcmp oeq double %"global_var.4", %".157"
  br i1 %"is_int.6", label %"print_int.6", label %"print_float.6"
print_int.6:
  %".159" = bitcast [5 x i8]* @"fmt_int_.57" to i8*
  %".160" = call i32 (i8*, ...) @"printf"(i8* %".159", i64 %".156")
  br label %"print_merge.6"
print_float.6:
  %".162" = bitcast [6 x i8]* @"fmt_flt_.58" to i8*
  %".163" = call i32 (i8*, ...) @"printf"(i8* %".162", double %"global_var.4")
  br label %"print_merge.6"
print_merge.6:
  %".165" = bitcast [2 x i8]* @"nl_.59" to i8*
  %".166" = call i32 (i8*, ...) @"printf"(i8* %".165")
  %".167" = bitcast [22 x i8]* @"str_.60" to i8*
  %".168" = bitcast [3 x i8]* @"fmt_.61" to i8*
  %".169" = call i32 (i8*, ...) @"printf"(i8* %".168", i8* %".167")
  %".170" = bitcast [2 x i8]* @"nl_.62" to i8*
  %".171" = call i32 (i8*, ...) @"printf"(i8* %".170")
  %"n" = alloca double
  store double              0x0, double* %"n"
  br label %"while_cond.1"
while_cond.1:
  %"n.1" = load double, double* %"n"
  %"lttmp.1" = fcmp olt double %"n.1", 0x4008000000000000
  br i1 %"lttmp.1", label %"while_body.1", label %"while_merge.1"
while_body.1:
  %".175" = bitcast [13 x i8]* @"str_.63" to i8*
  %"n.2" = load double, double* %"n"
  %".176" = bitcast [4 x i8]* @"fmt_.64" to i8*
  %".177" = call i32 (i8*, ...) @"printf"(i8* %".176", i8* %".175")
  %".178" = fptosi double %"n.2" to i64
  %".179" = sitofp i64 %".178" to double
  %"is_int.7" = fcmp oeq double %"n.2", %".179"
  br i1 %"is_int.7", label %"print_int.7", label %"print_float.7"
while_merge.1:
  ret i32 0
print_int.7:
  %".181" = bitcast [5 x i8]* @"fmt_int_.65" to i8*
  %".182" = call i32 (i8*, ...) @"printf"(i8* %".181", i64 %".178")
  br label %"print_merge.7"
print_float.7:
  %".184" = bitcast [6 x i8]* @"fmt_flt_.66" to i8*
  %".185" = call i32 (i8*, ...) @"printf"(i8* %".184", double %"n.2")
  br label %"print_merge.7"
print_merge.7:
  %".187" = bitcast [2 x i8]* @"nl_.67" to i8*
  %".188" = call i32 (i8*, ...) @"printf"(i8* %".187")
  %"n.3" = load double, double* %"n"
  %"eqtmp.1" = fcmp oeq double %"n.3", 0x3ff0000000000000
  br i1 %"eqtmp.1", label %"then_0.1", label %"else_0.1"
if_merge.1:
  %"n.4" = load double, double* %"n"
  %"addtmp.1" = fadd double %"n.4", 0x3ff0000000000000
  store double %"addtmp.1", double* %"n"
  br label %"while_cond.1"
then_0.1:
  %".190" = bitcast [11 x i8]* @"str_.68" to i8*
  %".191" = bitcast [3 x i8]* @"fmt_.69" to i8*
  %".192" = call i32 (i8*, ...) @"printf"(i8* %".191", i8* %".190")
  %".193" = bitcast [2 x i8]* @"nl_.70" to i8*
  %".194" = call i32 (i8*, ...) @"printf"(i8* %".193")
  br label %"if_merge.1"
else_0.1:
  br label %"if_merge.1"
}

@"str_.1" = internal constant [40 x i8] c"=== Teste 3: Estruturas de Controle ===\00"
@"fmt_.2" = internal constant [3 x i8] c"%s\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"str_.4" = internal constant [20 x i8] c"Testando If (x=10):\00"
@"fmt_.5" = internal constant [3 x i8] c"%s\00"
@"nl_.6" = internal constant [2 x i8] c"\0a\00"
@"str_.7" = internal constant [18 x i8] c"x < 5 (Incorreto)\00"
@"fmt_.8" = internal constant [3 x i8] c"%s\00"
@"nl_.9" = internal constant [2 x i8] c"\0a\00"
@"str_.10" = internal constant [19 x i8] c"x > 15 (Incorreto)\00"
@"fmt_.11" = internal constant [3 x i8] c"%s\00"
@"nl_.12" = internal constant [2 x i8] c"\0a\00"
@"str_.13" = internal constant [18 x i8] c"x == 10 (Correto)\00"
@"fmt_.14" = internal constant [3 x i8] c"%s\00"
@"nl_.15" = internal constant [2 x i8] c"\0a\00"
@"str_.16" = internal constant [17 x i8] c"Else (Incorreto)\00"
@"fmt_.17" = internal constant [3 x i8] c"%s\00"
@"nl_.18" = internal constant [2 x i8] c"\0a\00"
@"str_.19" = internal constant [33 x i8] c"Testando While (contagem 1 a 5):\00"
@"fmt_.20" = internal constant [3 x i8] c"%s\00"
@"nl_.21" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.22" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.23" = internal constant [6 x i8] c"%.14g\00"
@"nl_.24" = internal constant [2 x i8] c"\0a\00"
@"str_.25" = internal constant [22 x i8] c"Testando For (1 a 5):\00"
@"fmt_.26" = internal constant [3 x i8] c"%s\00"
@"nl_.27" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.28" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.29" = internal constant [6 x i8] c"%.14g\00"
@"nl_.30" = internal constant [2 x i8] c"\0a\00"
@"str_.31" = internal constant [41 x i8] c"Testando For com passo (0 a 10 passo 2):\00"
@"fmt_.32" = internal constant [3 x i8] c"%s\00"
@"nl_.33" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.34" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.35" = internal constant [6 x i8] c"%.14g\00"
@"nl_.36" = internal constant [2 x i8] c"\0a\00"
@"str_.37" = internal constant [17 x i8] c"Testando Escopo:\00"
@"fmt_.38" = internal constant [3 x i8] c"%s\00"
@"nl_.39" = internal constant [2 x i8] c"\0a\00"
@"str_.40" = internal constant [27 x i8] c"Dentro do escopo - global:\00"
@"fmt_.41" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.42" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.43" = internal constant [6 x i8] c"%.14g\00"
@"nl_.44" = internal constant [2 x i8] c"\0a\00"
@"str_.45" = internal constant [26 x i8] c"Dentro do escopo - local:\00"
@"fmt_.46" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.47" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.48" = internal constant [6 x i8] c"%.14g\00"
@"nl_.49" = internal constant [2 x i8] c"\0a\00"
@"str_.50" = internal constant [34 x i8] c"Dentro do escopo - global shadow:\00"
@"fmt_.51" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.52" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.53" = internal constant [6 x i8] c"%.14g\00"
@"nl_.54" = internal constant [2 x i8] c"\0a\00"
@"str_.55" = internal constant [25 x i8] c"Fora do escopo - global:\00"
@"fmt_.56" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.57" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.58" = internal constant [6 x i8] c"%.14g\00"
@"nl_.59" = internal constant [2 x i8] c"\0a\00"
@"str_.60" = internal constant [22 x i8] c"Testando Aninhamento:\00"
@"fmt_.61" = internal constant [3 x i8] c"%s\00"
@"nl_.62" = internal constant [2 x i8] c"\0a\00"
@"str_.63" = internal constant [13 x i8] c"Ciclo While:\00"
@"fmt_.64" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.65" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.66" = internal constant [6 x i8] c"%.14g\00"
@"nl_.67" = internal constant [2 x i8] c"\0a\00"
@"str_.68" = internal constant [11 x i8] c"  -> n e 1\00"
@"fmt_.69" = internal constant [3 x i8] c"%s\00"
@"nl_.70" = internal constant [2 x i8] c"\0a\00"