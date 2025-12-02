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

define void @"printAsNumber"(double %"val")
{
entry:
  %"val.1" = alloca double
  store double %"val", double* %"val.1"
  %".4" = bitcast [31 x i8]* @"str_.1" to i8*
  %"val.2" = load double, double* %"val.1"
  %".5" = bitcast [4 x i8]* @"fmt_.2" to i8*
  %".6" = call i32 (i8*, ...) @"printf"(i8* %".5", i8* %".4")
  %".7" = fptosi double %"val.2" to i64
  %".8" = sitofp i64 %".7" to double
  %"is_int" = fcmp oeq double %"val.2", %".8"
  br i1 %"is_int", label %"print_int", label %"print_float"
print_int:
  %".10" = bitcast [5 x i8]* @"fmt_int_.3" to i8*
  %".11" = call i32 (i8*, ...) @"printf"(i8* %".10", i64 %".7")
  br label %"print_merge"
print_float:
  %".13" = bitcast [6 x i8]* @"fmt_flt_.4" to i8*
  %".14" = call i32 (i8*, ...) @"printf"(i8* %".13", double %"val.2")
  br label %"print_merge"
print_merge:
  %".16" = bitcast [2 x i8]* @"nl_.5" to i8*
  %".17" = call i32 (i8*, ...) @"printf"(i8* %".16")
  ret void
}

@"str_.1" = internal constant [31 x i8] c"  [Func] Recebido como number:\00"
@"fmt_.2" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.3" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.4" = internal constant [6 x i8] c"%.14g\00"
@"nl_.5" = internal constant [2 x i8] c"\0a\00"
define i32 @"main"()
{
entry:
  %".2" = bitcast [43 x i8]* @"str_.6" to i8*
  %".3" = bitcast [3 x i8]* @"fmt_.7" to i8*
  %".4" = call i32 (i8*, ...) @"printf"(i8* %".3", i8* %".2")
  %".5" = bitcast [2 x i8]* @"nl_.8" to i8*
  %".6" = call i32 (i8*, ...) @"printf"(i8* %".5")
  %".7" = bitcast [24 x i8]* @"str_.9" to i8*
  %".8" = bitcast [3 x i8]* @"fmt_.10" to i8*
  %".9" = call i32 (i8*, ...) @"printf"(i8* %".8", i8* %".7")
  %".10" = bitcast [2 x i8]* @"nl_.11" to i8*
  %".11" = call i32 (i8*, ...) @"printf"(i8* %".10")
  %"i" = alloca double
  store double 0x4045000000000000, double* %"i"
  %"n" = alloca double
  store double              0x0, double* %"n"
  %"i.1" = load double, double* %"i"
  store double %"i.1", double* %"n"
  %".15" = bitcast [18 x i8]* @"str_.12" to i8*
  %"i.2" = load double, double* %"i"
  %".16" = bitcast [4 x i8]* @"fmt_.13" to i8*
  %".17" = call i32 (i8*, ...) @"printf"(i8* %".16", i8* %".15")
  %".18" = fptosi double %"i.2" to i64
  %".19" = sitofp i64 %".18" to double
  %"is_int" = fcmp oeq double %"i.2", %".19"
  br i1 %"is_int", label %"print_int", label %"print_float"
print_int:
  %".21" = bitcast [5 x i8]* @"fmt_int_.14" to i8*
  %".22" = call i32 (i8*, ...) @"printf"(i8* %".21", i64 %".18")
  br label %"print_merge"
print_float:
  %".24" = bitcast [6 x i8]* @"fmt_flt_.15" to i8*
  %".25" = call i32 (i8*, ...) @"printf"(i8* %".24", double %"i.2")
  br label %"print_merge"
print_merge:
  %".27" = bitcast [2 x i8]* @"nl_.16" to i8*
  %".28" = call i32 (i8*, ...) @"printf"(i8* %".27")
  %".29" = bitcast [24 x i8]* @"str_.17" to i8*
  %"n.1" = load double, double* %"n"
  %".30" = bitcast [4 x i8]* @"fmt_.18" to i8*
  %".31" = call i32 (i8*, ...) @"printf"(i8* %".30", i8* %".29")
  %".32" = fptosi double %"n.1" to i64
  %".33" = sitofp i64 %".32" to double
  %"is_int.1" = fcmp oeq double %"n.1", %".33"
  br i1 %"is_int.1", label %"print_int.1", label %"print_float.1"
print_int.1:
  %".35" = bitcast [5 x i8]* @"fmt_int_.19" to i8*
  %".36" = call i32 (i8*, ...) @"printf"(i8* %".35", i64 %".32")
  br label %"print_merge.1"
print_float.1:
  %".38" = bitcast [6 x i8]* @"fmt_flt_.20" to i8*
  %".39" = call i32 (i8*, ...) @"printf"(i8* %".38", double %"n.1")
  br label %"print_merge.1"
print_merge.1:
  %".41" = bitcast [2 x i8]* @"nl_.21" to i8*
  %".42" = call i32 (i8*, ...) @"printf"(i8* %".41")
  %"n.2" = load double, double* %"n"
  %"eqtmp" = fcmp oeq double %"n.2", 0x4045000000000000
  br i1 %"eqtmp", label %"then_0", label %"else_0"
if_merge:
  %".56" = bitcast [23 x i8]* @"str_.28" to i8*
  %".57" = bitcast [3 x i8]* @"fmt_.29" to i8*
  %".58" = call i32 (i8*, ...) @"printf"(i8* %".57", i8* %".56")
  %".59" = bitcast [2 x i8]* @"nl_.30" to i8*
  %".60" = call i32 (i8*, ...) @"printf"(i8* %".59")
  %"a" = alloca double
  store double 0x4024000000000000, double* %"a"
  %"b" = alloca double
  store double 0x4004000000000000, double* %"b"
  %"res_add" = alloca double
  %"a.1" = load double, double* %"a"
  %"b.1" = load double, double* %"b"
  %"addtmp" = fadd double %"a.1", %"b.1"
  store double %"addtmp", double* %"res_add"
  %".64" = bitcast [23 x i8]* @"str_.31" to i8*
  %"res_add.1" = load double, double* %"res_add"
  %".65" = bitcast [4 x i8]* @"fmt_.32" to i8*
  %".66" = call i32 (i8*, ...) @"printf"(i8* %".65", i8* %".64")
  %".67" = fptosi double %"res_add.1" to i64
  %".68" = sitofp i64 %".67" to double
  %"is_int.2" = fcmp oeq double %"res_add.1", %".68"
  br i1 %"is_int.2", label %"print_int.2", label %"print_float.2"
then_0:
  %".44" = bitcast [28 x i8]* @"str_.22" to i8*
  %".45" = bitcast [3 x i8]* @"fmt_.23" to i8*
  %".46" = call i32 (i8*, ...) @"printf"(i8* %".45", i8* %".44")
  %".47" = bitcast [2 x i8]* @"nl_.24" to i8*
  %".48" = call i32 (i8*, ...) @"printf"(i8* %".47")
  br label %"if_merge"
else_0:
  %".50" = bitcast [31 x i8]* @"str_.25" to i8*
  %".51" = bitcast [3 x i8]* @"fmt_.26" to i8*
  %".52" = call i32 (i8*, ...) @"printf"(i8* %".51", i8* %".50")
  %".53" = bitcast [2 x i8]* @"nl_.27" to i8*
  %".54" = call i32 (i8*, ...) @"printf"(i8* %".53")
  br label %"if_merge"
print_int.2:
  %".70" = bitcast [5 x i8]* @"fmt_int_.33" to i8*
  %".71" = call i32 (i8*, ...) @"printf"(i8* %".70", i64 %".67")
  br label %"print_merge.2"
print_float.2:
  %".73" = bitcast [6 x i8]* @"fmt_flt_.34" to i8*
  %".74" = call i32 (i8*, ...) @"printf"(i8* %".73", double %"res_add.1")
  br label %"print_merge.2"
print_merge.2:
  %".76" = bitcast [2 x i8]* @"nl_.35" to i8*
  %".77" = call i32 (i8*, ...) @"printf"(i8* %".76")
  %"res_sub" = alloca double
  %"b.2" = load double, double* %"b"
  %"a.2" = load double, double* %"a"
  %"subtmp" = fsub double %"b.2", %"a.2"
  store double %"subtmp", double* %"res_sub"
  %".79" = bitcast [23 x i8]* @"str_.36" to i8*
  %"res_sub.1" = load double, double* %"res_sub"
  %".80" = bitcast [4 x i8]* @"fmt_.37" to i8*
  %".81" = call i32 (i8*, ...) @"printf"(i8* %".80", i8* %".79")
  %".82" = fptosi double %"res_sub.1" to i64
  %".83" = sitofp i64 %".82" to double
  %"is_int.3" = fcmp oeq double %"res_sub.1", %".83"
  br i1 %"is_int.3", label %"print_int.3", label %"print_float.3"
print_int.3:
  %".85" = bitcast [5 x i8]* @"fmt_int_.38" to i8*
  %".86" = call i32 (i8*, ...) @"printf"(i8* %".85", i64 %".82")
  br label %"print_merge.3"
print_float.3:
  %".88" = bitcast [6 x i8]* @"fmt_flt_.39" to i8*
  %".89" = call i32 (i8*, ...) @"printf"(i8* %".88", double %"res_sub.1")
  br label %"print_merge.3"
print_merge.3:
  %".91" = bitcast [2 x i8]* @"nl_.40" to i8*
  %".92" = call i32 (i8*, ...) @"printf"(i8* %".91")
  %"res_mul" = alloca double
  %"a.3" = load double, double* %"a"
  %"b.3" = load double, double* %"b"
  %"multmp" = fmul double %"a.3", %"b.3"
  store double %"multmp", double* %"res_mul"
  %".94" = bitcast [23 x i8]* @"str_.41" to i8*
  %"res_mul.1" = load double, double* %"res_mul"
  %".95" = bitcast [4 x i8]* @"fmt_.42" to i8*
  %".96" = call i32 (i8*, ...) @"printf"(i8* %".95", i8* %".94")
  %".97" = fptosi double %"res_mul.1" to i64
  %".98" = sitofp i64 %".97" to double
  %"is_int.4" = fcmp oeq double %"res_mul.1", %".98"
  br i1 %"is_int.4", label %"print_int.4", label %"print_float.4"
print_int.4:
  %".100" = bitcast [5 x i8]* @"fmt_int_.43" to i8*
  %".101" = call i32 (i8*, ...) @"printf"(i8* %".100", i64 %".97")
  br label %"print_merge.4"
print_float.4:
  %".103" = bitcast [6 x i8]* @"fmt_flt_.44" to i8*
  %".104" = call i32 (i8*, ...) @"printf"(i8* %".103", double %"res_mul.1")
  br label %"print_merge.4"
print_merge.4:
  %".106" = bitcast [2 x i8]* @"nl_.45" to i8*
  %".107" = call i32 (i8*, ...) @"printf"(i8* %".106")
  %"res_div" = alloca double
  %"a.4" = load double, double* %"a"
  %"divtmp" = fdiv double %"a.4", 0x4000000000000000
  store double %"divtmp", double* %"res_div"
  %".109" = bitcast [29 x i8]* @"str_.46" to i8*
  %"res_div.1" = load double, double* %"res_div"
  %".110" = bitcast [4 x i8]* @"fmt_.47" to i8*
  %".111" = call i32 (i8*, ...) @"printf"(i8* %".110", i8* %".109")
  %".112" = fptosi double %"res_div.1" to i64
  %".113" = sitofp i64 %".112" to double
  %"is_int.5" = fcmp oeq double %"res_div.1", %".113"
  br i1 %"is_int.5", label %"print_int.5", label %"print_float.5"
print_int.5:
  %".115" = bitcast [5 x i8]* @"fmt_int_.48" to i8*
  %".116" = call i32 (i8*, ...) @"printf"(i8* %".115", i64 %".112")
  br label %"print_merge.5"
print_float.5:
  %".118" = bitcast [6 x i8]* @"fmt_flt_.49" to i8*
  %".119" = call i32 (i8*, ...) @"printf"(i8* %".118", double %"res_div.1")
  br label %"print_merge.5"
print_merge.5:
  %".121" = bitcast [2 x i8]* @"nl_.50" to i8*
  %".122" = call i32 (i8*, ...) @"printf"(i8* %".121")
  %".123" = bitcast [28 x i8]* @"str_.51" to i8*
  %".124" = bitcast [3 x i8]* @"fmt_.52" to i8*
  %".125" = call i32 (i8*, ...) @"printf"(i8* %".124", i8* %".123")
  %".126" = bitcast [2 x i8]* @"nl_.53" to i8*
  %".127" = call i32 (i8*, ...) @"printf"(i8* %".126")
  %"val_int" = alloca double
  store double 0x4059000000000000, double* %"val_int"
  %".129" = bitcast [52 x i8]* @"str_.54" to i8*
  %".130" = bitcast [3 x i8]* @"fmt_.55" to i8*
  %".131" = call i32 (i8*, ...) @"printf"(i8* %".130", i8* %".129")
  %".132" = bitcast [2 x i8]* @"nl_.56" to i8*
  %".133" = call i32 (i8*, ...) @"printf"(i8* %".132")
  %"val_int.1" = load double, double* %"val_int"
  call void @"printAsNumber"(double %"val_int.1")
  %".135" = bitcast [26 x i8]* @"str_.57" to i8*
  %".136" = bitcast [3 x i8]* @"fmt_.58" to i8*
  %".137" = call i32 (i8*, ...) @"printf"(i8* %".136", i8* %".135")
  %".138" = bitcast [2 x i8]* @"nl_.59" to i8*
  %".139" = call i32 (i8*, ...) @"printf"(i8* %".138")
  call void @"printAsNumber"(double 0x408f380000000000)
  %".141" = bitcast [17 x i8]* @"str_.60" to i8*
  %".142" = bitcast [3 x i8]* @"fmt_.61" to i8*
  %".143" = call i32 (i8*, ...) @"printf"(i8* %".142", i8* %".141")
  %".144" = bitcast [2 x i8]* @"nl_.62" to i8*
  %".145" = call i32 (i8*, ...) @"printf"(i8* %".144")
  %"x" = alloca double
  store double 0x4014000000000000, double* %"x"
  %"y" = alloca double
  store double 0x4014000000000000, double* %"y"
  %"x.1" = load double, double* %"x"
  %"y.1" = load double, double* %"y"
  %"eqtmp.1" = fcmp oeq double %"x.1", %"y.1"
  br i1 %"eqtmp.1", label %"then_0.1", label %"else_0.1"
if_merge.1:
  %"x.2" = load double, double* %"x"
  %"lttmp" = fcmp olt double %"x.2", 0x4014666666666666
  br i1 %"lttmp", label %"then_0.2", label %"else_0.2"
then_0.1:
  %".149" = bitcast [34 x i8]* @"str_.63" to i8*
  %".150" = bitcast [3 x i8]* @"fmt_.64" to i8*
  %".151" = call i32 (i8*, ...) @"printf"(i8* %".150", i8* %".149")
  %".152" = bitcast [2 x i8]* @"nl_.65" to i8*
  %".153" = call i32 (i8*, ...) @"printf"(i8* %".152")
  br label %"if_merge.1"
else_0.1:
  %".155" = bitcast [38 x i8]* @"str_.66" to i8*
  %".156" = bitcast [3 x i8]* @"fmt_.67" to i8*
  %".157" = call i32 (i8*, ...) @"printf"(i8* %".156", i8* %".155")
  %".158" = bitcast [2 x i8]* @"nl_.68" to i8*
  %".159" = call i32 (i8*, ...) @"printf"(i8* %".158")
  br label %"if_merge.1"
if_merge.2:
  ret i32 0
then_0.2:
  %".162" = bitcast [33 x i8]* @"str_.69" to i8*
  %".163" = bitcast [3 x i8]* @"fmt_.70" to i8*
  %".164" = call i32 (i8*, ...) @"printf"(i8* %".163", i8* %".162")
  %".165" = bitcast [2 x i8]* @"nl_.71" to i8*
  %".166" = call i32 (i8*, ...) @"printf"(i8* %".165")
  br label %"if_merge.2"
else_0.2:
  %".168" = bitcast [37 x i8]* @"str_.72" to i8*
  %".169" = bitcast [3 x i8]* @"fmt_.73" to i8*
  %".170" = call i32 (i8*, ...) @"printf"(i8* %".169", i8* %".168")
  %".171" = bitcast [2 x i8]* @"nl_.74" to i8*
  %".172" = call i32 (i8*, ...) @"printf"(i8* %".171")
  br label %"if_merge.2"
}

@"str_.6" = internal constant [43 x i8] c"=== Teste de Coercao Integer -> Number ===\00"
@"fmt_.7" = internal constant [3 x i8] c"%s\00"
@"nl_.8" = internal constant [2 x i8] c"\0a\00"
@"str_.9" = internal constant [24 x i8] c"\5cn1. Atribuicao Direta:\00"
@"fmt_.10" = internal constant [3 x i8] c"%s\00"
@"nl_.11" = internal constant [2 x i8] c"\0a\00"
@"str_.12" = internal constant [18 x i8] c"Integer original:\00"
@"fmt_.13" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.14" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.15" = internal constant [6 x i8] c"%.14g\00"
@"nl_.16" = internal constant [2 x i8] c"\0a\00"
@"str_.17" = internal constant [24 x i8] c"Number apos atribuicao:\00"
@"fmt_.18" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.19" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.20" = internal constant [6 x i8] c"%.14g\00"
@"nl_.21" = internal constant [2 x i8] c"\0a\00"
@"str_.22" = internal constant [28 x i8] c"Verificacao: n == 42.0 (OK)\00"
@"fmt_.23" = internal constant [3 x i8] c"%s\00"
@"nl_.24" = internal constant [2 x i8] c"\0a\00"
@"str_.25" = internal constant [31 x i8] c"Verificacao: n != 42.0 (FALHA)\00"
@"fmt_.26" = internal constant [3 x i8] c"%s\00"
@"nl_.27" = internal constant [2 x i8] c"\0a\00"
@"str_.28" = internal constant [23 x i8] c"\5cn2. Operacoes Mistas:\00"
@"fmt_.29" = internal constant [3 x i8] c"%s\00"
@"nl_.30" = internal constant [2 x i8] c"\0a\00"
@"str_.31" = internal constant [23 x i8] c"10 (int) + 2.5 (num) =\00"
@"fmt_.32" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.33" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.34" = internal constant [6 x i8] c"%.14g\00"
@"nl_.35" = internal constant [2 x i8] c"\0a\00"
@"str_.36" = internal constant [23 x i8] c"2.5 (num) - 10 (int) =\00"
@"fmt_.37" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.38" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.39" = internal constant [6 x i8] c"%.14g\00"
@"nl_.40" = internal constant [2 x i8] c"\0a\00"
@"str_.41" = internal constant [23 x i8] c"10 (int) * 2.5 (num) =\00"
@"fmt_.42" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.43" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.44" = internal constant [6 x i8] c"%.14g\00"
@"nl_.45" = internal constant [2 x i8] c"\0a\00"
@"str_.46" = internal constant [29 x i8] c"10 (int) / 2 (int literal) =\00"
@"fmt_.47" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.48" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.49" = internal constant [6 x i8] c"%.14g\00"
@"nl_.50" = internal constant [2 x i8] c"\0a\00"
@"str_.51" = internal constant [28 x i8] c"\5cn3. Passagem de Parametro:\00"
@"fmt_.52" = internal constant [3 x i8] c"%s\00"
@"nl_.53" = internal constant [2 x i8] c"\0a\00"
@"str_.54" = internal constant [52 x i8] c"Passando integer 100 para funcao que espera number:\00"
@"fmt_.55" = internal constant [3 x i8] c"%s\00"
@"nl_.56" = internal constant [2 x i8] c"\0a\00"
@"str_.57" = internal constant [26 x i8] c"Passando literal int 999:\00"
@"fmt_.58" = internal constant [3 x i8] c"%s\00"
@"nl_.59" = internal constant [2 x i8] c"\0a\00"
@"str_.60" = internal constant [17 x i8] c"\5cn4. Comparacao:\00"
@"fmt_.61" = internal constant [3 x i8] c"%s\00"
@"nl_.62" = internal constant [2 x i8] c"\0a\00"
@"str_.63" = internal constant [34 x i8] c"5 (int) == 5.0 (num) -> true (OK)\00"
@"fmt_.64" = internal constant [3 x i8] c"%s\00"
@"nl_.65" = internal constant [2 x i8] c"\0a\00"
@"str_.66" = internal constant [38 x i8] c"5 (int) == 5.0 (num) -> false (FALHA)\00"
@"fmt_.67" = internal constant [3 x i8] c"%s\00"
@"nl_.68" = internal constant [2 x i8] c"\0a\00"
@"str_.69" = internal constant [33 x i8] c"5 (int) < 5.1 (num) -> true (OK)\00"
@"fmt_.70" = internal constant [3 x i8] c"%s\00"
@"nl_.71" = internal constant [2 x i8] c"\0a\00"
@"str_.72" = internal constant [37 x i8] c"5 (int) < 5.1 (num) -> false (FALHA)\00"
@"fmt_.73" = internal constant [3 x i8] c"%s\00"
@"nl_.74" = internal constant [2 x i8] c"\0a\00"