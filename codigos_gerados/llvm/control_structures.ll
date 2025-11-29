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
  %".48" = bitcast [5 x i8]* @"fmt_.22" to i8*
  %".49" = call i32 (i8*, ...) @"printf"(i8* %".48", double %"i.2")
  %".50" = bitcast [2 x i8]* @"nl_.23" to i8*
  %".51" = call i32 (i8*, ...) @"printf"(i8* %".50")
  %"i.3" = load double, double* %"i"
  %"addtmp" = fadd double %"i.3", 0x3ff0000000000000
  store double %"addtmp", double* %"i"
  br label %"while_cond"
while_merge:
  %".54" = bitcast [22 x i8]* @"str_.24" to i8*
  %".55" = bitcast [3 x i8]* @"fmt_.25" to i8*
  %".56" = call i32 (i8*, ...) @"printf"(i8* %".55", i8* %".54")
  %".57" = bitcast [2 x i8]* @"nl_.26" to i8*
  %".58" = call i32 (i8*, ...) @"printf"(i8* %".57")
  %"j" = alloca double
  store double 0x3ff0000000000000, double* %"j"
  br label %"for_cond"
for_cond:
  %"j.1" = load double, double* %"j"
  %"step_ge_0" = fcmp oge double 0x3ff0000000000000,              0x0
  %"cond_le" = fcmp ole double %"j.1", 0x4014000000000000
  %"cond_ge" = fcmp oge double %"j.1", 0x4014000000000000
  %"forcond" = select  i1 %"step_ge_0", i1 %"cond_le", i1 %"cond_ge"
  br i1 %"forcond", label %"for_body", label %"for_merge"
for_body:
  %"j.2" = load double, double* %"j"
  %".62" = bitcast [5 x i8]* @"fmt_.27" to i8*
  %".63" = call i32 (i8*, ...) @"printf"(i8* %".62", double %"j.2")
  %".64" = bitcast [2 x i8]* @"nl_.28" to i8*
  %".65" = call i32 (i8*, ...) @"printf"(i8* %".64")
  %"j.3" = load double, double* %"j"
  %"nextval" = fadd double %"j.3", 0x3ff0000000000000
  store double %"nextval", double* %"j"
  br label %"for_cond"
for_merge:
  %".68" = bitcast [41 x i8]* @"str_.29" to i8*
  %".69" = bitcast [3 x i8]* @"fmt_.30" to i8*
  %".70" = call i32 (i8*, ...) @"printf"(i8* %".69", i8* %".68")
  %".71" = bitcast [2 x i8]* @"nl_.31" to i8*
  %".72" = call i32 (i8*, ...) @"printf"(i8* %".71")
  %"k" = alloca double
  store double              0x0, double* %"k"
  br label %"for_cond.1"
for_cond.1:
  %"k.1" = load double, double* %"k"
  %"step_ge_0.1" = fcmp oge double 0x4000000000000000,              0x0
  %"cond_le.1" = fcmp ole double %"k.1", 0x4024000000000000
  %"cond_ge.1" = fcmp oge double %"k.1", 0x4024000000000000
  %"forcond.1" = select  i1 %"step_ge_0.1", i1 %"cond_le.1", i1 %"cond_ge.1"
  br i1 %"forcond.1", label %"for_body.1", label %"for_merge.1"
for_body.1:
  %"k.2" = load double, double* %"k"
  %".76" = bitcast [5 x i8]* @"fmt_.32" to i8*
  %".77" = call i32 (i8*, ...) @"printf"(i8* %".76", double %"k.2")
  %".78" = bitcast [2 x i8]* @"nl_.33" to i8*
  %".79" = call i32 (i8*, ...) @"printf"(i8* %".78")
  %"k.3" = load double, double* %"k"
  %"nextval.1" = fadd double %"k.3", 0x4000000000000000
  store double %"nextval.1", double* %"k"
  br label %"for_cond.1"
for_merge.1:
  %".82" = bitcast [17 x i8]* @"str_.34" to i8*
  %".83" = bitcast [3 x i8]* @"fmt_.35" to i8*
  %".84" = call i32 (i8*, ...) @"printf"(i8* %".83", i8* %".82")
  %".85" = bitcast [2 x i8]* @"nl_.36" to i8*
  %".86" = call i32 (i8*, ...) @"printf"(i8* %".85")
  %"global_var" = alloca double
  store double 0x4059000000000000, double* %"global_var"
  %"local_var" = alloca double
  store double 0x4049000000000000, double* %"local_var"
  %".89" = bitcast [27 x i8]* @"str_.37" to i8*
  %"global_var.1" = load double, double* %"global_var"
  %".90" = bitcast [4 x i8]* @"fmt_.38" to i8*
  %".91" = call i32 (i8*, ...) @"printf"(i8* %".90", i8* %".89")
  %".92" = bitcast [5 x i8]* @"fmt_.39" to i8*
  %".93" = call i32 (i8*, ...) @"printf"(i8* %".92", double %"global_var.1")
  %".94" = bitcast [2 x i8]* @"nl_.40" to i8*
  %".95" = call i32 (i8*, ...) @"printf"(i8* %".94")
  %".96" = bitcast [26 x i8]* @"str_.41" to i8*
  %"local_var.1" = load double, double* %"local_var"
  %".97" = bitcast [4 x i8]* @"fmt_.42" to i8*
  %".98" = call i32 (i8*, ...) @"printf"(i8* %".97", i8* %".96")
  %".99" = bitcast [5 x i8]* @"fmt_.43" to i8*
  %".100" = call i32 (i8*, ...) @"printf"(i8* %".99", double %"local_var.1")
  %".101" = bitcast [2 x i8]* @"nl_.44" to i8*
  %".102" = call i32 (i8*, ...) @"printf"(i8* %".101")
  %"global_var.2" = alloca double
  store double 0x4069000000000000, double* %"global_var.2"
  %".104" = bitcast [34 x i8]* @"str_.45" to i8*
  %"global_var.3" = load double, double* %"global_var.2"
  %".105" = bitcast [4 x i8]* @"fmt_.46" to i8*
  %".106" = call i32 (i8*, ...) @"printf"(i8* %".105", i8* %".104")
  %".107" = bitcast [5 x i8]* @"fmt_.47" to i8*
  %".108" = call i32 (i8*, ...) @"printf"(i8* %".107", double %"global_var.3")
  %".109" = bitcast [2 x i8]* @"nl_.48" to i8*
  %".110" = call i32 (i8*, ...) @"printf"(i8* %".109")
  %".111" = bitcast [25 x i8]* @"str_.49" to i8*
  %"global_var.4" = load double, double* %"global_var"
  %".112" = bitcast [4 x i8]* @"fmt_.50" to i8*
  %".113" = call i32 (i8*, ...) @"printf"(i8* %".112", i8* %".111")
  %".114" = bitcast [5 x i8]* @"fmt_.51" to i8*
  %".115" = call i32 (i8*, ...) @"printf"(i8* %".114", double %"global_var.4")
  %".116" = bitcast [2 x i8]* @"nl_.52" to i8*
  %".117" = call i32 (i8*, ...) @"printf"(i8* %".116")
  %".118" = bitcast [22 x i8]* @"str_.53" to i8*
  %".119" = bitcast [3 x i8]* @"fmt_.54" to i8*
  %".120" = call i32 (i8*, ...) @"printf"(i8* %".119", i8* %".118")
  %".121" = bitcast [2 x i8]* @"nl_.55" to i8*
  %".122" = call i32 (i8*, ...) @"printf"(i8* %".121")
  %"n" = alloca double
  store double              0x0, double* %"n"
  br label %"while_cond.1"
while_cond.1:
  %"n.1" = load double, double* %"n"
  %"lttmp.1" = fcmp olt double %"n.1", 0x4008000000000000
  br i1 %"lttmp.1", label %"while_body.1", label %"while_merge.1"
while_body.1:
  %".126" = bitcast [13 x i8]* @"str_.56" to i8*
  %"n.2" = load double, double* %"n"
  %".127" = bitcast [4 x i8]* @"fmt_.57" to i8*
  %".128" = call i32 (i8*, ...) @"printf"(i8* %".127", i8* %".126")
  %".129" = bitcast [5 x i8]* @"fmt_.58" to i8*
  %".130" = call i32 (i8*, ...) @"printf"(i8* %".129", double %"n.2")
  %".131" = bitcast [2 x i8]* @"nl_.59" to i8*
  %".132" = call i32 (i8*, ...) @"printf"(i8* %".131")
  %"n.3" = load double, double* %"n"
  %"eqtmp.1" = fcmp oeq double %"n.3", 0x3ff0000000000000
  br i1 %"eqtmp.1", label %"then_0.1", label %"else_0.1"
while_merge.1:
  ret i32 0
if_merge.1:
  %"n.4" = load double, double* %"n"
  %"addtmp.1" = fadd double %"n.4", 0x3ff0000000000000
  store double %"addtmp.1", double* %"n"
  br label %"while_cond.1"
then_0.1:
  %".134" = bitcast [11 x i8]* @"str_.60" to i8*
  %".135" = bitcast [3 x i8]* @"fmt_.61" to i8*
  %".136" = call i32 (i8*, ...) @"printf"(i8* %".135", i8* %".134")
  %".137" = bitcast [2 x i8]* @"nl_.62" to i8*
  %".138" = call i32 (i8*, ...) @"printf"(i8* %".137")
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
@"fmt_.22" = internal constant [5 x i8] c"%.2f\00"
@"nl_.23" = internal constant [2 x i8] c"\0a\00"
@"str_.24" = internal constant [22 x i8] c"Testando For (1 a 5):\00"
@"fmt_.25" = internal constant [3 x i8] c"%s\00"
@"nl_.26" = internal constant [2 x i8] c"\0a\00"
@"fmt_.27" = internal constant [5 x i8] c"%.2f\00"
@"nl_.28" = internal constant [2 x i8] c"\0a\00"
@"str_.29" = internal constant [41 x i8] c"Testando For com passo (0 a 10 passo 2):\00"
@"fmt_.30" = internal constant [3 x i8] c"%s\00"
@"nl_.31" = internal constant [2 x i8] c"\0a\00"
@"fmt_.32" = internal constant [5 x i8] c"%.2f\00"
@"nl_.33" = internal constant [2 x i8] c"\0a\00"
@"str_.34" = internal constant [17 x i8] c"Testando Escopo:\00"
@"fmt_.35" = internal constant [3 x i8] c"%s\00"
@"nl_.36" = internal constant [2 x i8] c"\0a\00"
@"str_.37" = internal constant [27 x i8] c"Dentro do escopo - global:\00"
@"fmt_.38" = internal constant [4 x i8] c"%s \00"
@"fmt_.39" = internal constant [5 x i8] c"%.2f\00"
@"nl_.40" = internal constant [2 x i8] c"\0a\00"
@"str_.41" = internal constant [26 x i8] c"Dentro do escopo - local:\00"
@"fmt_.42" = internal constant [4 x i8] c"%s \00"
@"fmt_.43" = internal constant [5 x i8] c"%.2f\00"
@"nl_.44" = internal constant [2 x i8] c"\0a\00"
@"str_.45" = internal constant [34 x i8] c"Dentro do escopo - global shadow:\00"
@"fmt_.46" = internal constant [4 x i8] c"%s \00"
@"fmt_.47" = internal constant [5 x i8] c"%.2f\00"
@"nl_.48" = internal constant [2 x i8] c"\0a\00"
@"str_.49" = internal constant [25 x i8] c"Fora do escopo - global:\00"
@"fmt_.50" = internal constant [4 x i8] c"%s \00"
@"fmt_.51" = internal constant [5 x i8] c"%.2f\00"
@"nl_.52" = internal constant [2 x i8] c"\0a\00"
@"str_.53" = internal constant [22 x i8] c"Testando Aninhamento:\00"
@"fmt_.54" = internal constant [3 x i8] c"%s\00"
@"nl_.55" = internal constant [2 x i8] c"\0a\00"
@"str_.56" = internal constant [13 x i8] c"Ciclo While:\00"
@"fmt_.57" = internal constant [4 x i8] c"%s \00"
@"fmt_.58" = internal constant [5 x i8] c"%.2f\00"
@"nl_.59" = internal constant [2 x i8] c"\0a\00"
@"str_.60" = internal constant [11 x i8] c"  -> n e 1\00"
@"fmt_.61" = internal constant [3 x i8] c"%s\00"
@"nl_.62" = internal constant [2 x i8] c"\0a\00"