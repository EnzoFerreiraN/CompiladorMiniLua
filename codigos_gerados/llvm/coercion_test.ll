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

define void @"printAsNumber"(double %"val")
{
entry:
  %"val.1" = alloca double
  store double %"val", double* %"val.1"
  %".4" = bitcast [31 x i8]* @"str_.1" to i8*
  %"val.2" = load double, double* %"val.1"
  %".5" = bitcast [4 x i8]* @"fmt_.2" to i8*
  %".6" = call i32 (i8*, ...) @"printf"(i8* %".5", i8* %".4")
  call void @"minilua_print_number"(double %"val.2")
  %".8" = bitcast [2 x i8]* @"nl_.3" to i8*
  %".9" = call i32 (i8*, ...) @"printf"(i8* %".8")
  ret void
}

@"str_.1" = internal constant [31 x i8] c"  [Func] Recebido como number:\00"
@"fmt_.2" = internal constant [4 x i8] c"%s \00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
define i32 @"main"()
{
entry:
  %".2" = bitcast [43 x i8]* @"str_.4" to i8*
  %".3" = bitcast [3 x i8]* @"fmt_.5" to i8*
  %".4" = call i32 (i8*, ...) @"printf"(i8* %".3", i8* %".2")
  %".5" = bitcast [2 x i8]* @"nl_.6" to i8*
  %".6" = call i32 (i8*, ...) @"printf"(i8* %".5")
  %".7" = bitcast [24 x i8]* @"str_.7" to i8*
  %".8" = bitcast [3 x i8]* @"fmt_.8" to i8*
  %".9" = call i32 (i8*, ...) @"printf"(i8* %".8", i8* %".7")
  %".10" = bitcast [2 x i8]* @"nl_.9" to i8*
  %".11" = call i32 (i8*, ...) @"printf"(i8* %".10")
  %"i" = alloca double
  store double 0x4045000000000000, double* %"i"
  %"n" = alloca double
  store double              0x0, double* %"n"
  %"i.1" = load double, double* %"i"
  store double %"i.1", double* %"n"
  %".15" = bitcast [18 x i8]* @"str_.10" to i8*
  %"i.2" = load double, double* %"i"
  %".16" = bitcast [4 x i8]* @"fmt_.11" to i8*
  %".17" = call i32 (i8*, ...) @"printf"(i8* %".16", i8* %".15")
  call void @"minilua_print_number"(double %"i.2")
  %".19" = bitcast [2 x i8]* @"nl_.12" to i8*
  %".20" = call i32 (i8*, ...) @"printf"(i8* %".19")
  %".21" = bitcast [24 x i8]* @"str_.13" to i8*
  %"n.1" = load double, double* %"n"
  %".22" = bitcast [4 x i8]* @"fmt_.14" to i8*
  %".23" = call i32 (i8*, ...) @"printf"(i8* %".22", i8* %".21")
  call void @"minilua_print_number"(double %"n.1")
  %".25" = bitcast [2 x i8]* @"nl_.15" to i8*
  %".26" = call i32 (i8*, ...) @"printf"(i8* %".25")
  %"n.2" = load double, double* %"n"
  %"eqtmp" = fcmp oeq double %"n.2", 0x4045000000000000
  br i1 %"eqtmp", label %"then_0", label %"else_0"
if_merge:
  %".40" = bitcast [23 x i8]* @"str_.22" to i8*
  %".41" = bitcast [3 x i8]* @"fmt_.23" to i8*
  %".42" = call i32 (i8*, ...) @"printf"(i8* %".41", i8* %".40")
  %".43" = bitcast [2 x i8]* @"nl_.24" to i8*
  %".44" = call i32 (i8*, ...) @"printf"(i8* %".43")
  %"a" = alloca double
  store double 0x4024000000000000, double* %"a"
  %"b" = alloca double
  store double 0x4004000000000000, double* %"b"
  %"res_add" = alloca double
  %"a.1" = load double, double* %"a"
  %"b.1" = load double, double* %"b"
  %"addtmp" = fadd double %"a.1", %"b.1"
  store double %"addtmp", double* %"res_add"
  %".48" = bitcast [23 x i8]* @"str_.25" to i8*
  %"res_add.1" = load double, double* %"res_add"
  %".49" = bitcast [4 x i8]* @"fmt_.26" to i8*
  %".50" = call i32 (i8*, ...) @"printf"(i8* %".49", i8* %".48")
  call void @"minilua_print_number"(double %"res_add.1")
  %".52" = bitcast [2 x i8]* @"nl_.27" to i8*
  %".53" = call i32 (i8*, ...) @"printf"(i8* %".52")
  %"res_sub" = alloca double
  %"b.2" = load double, double* %"b"
  %"a.2" = load double, double* %"a"
  %"subtmp" = fsub double %"b.2", %"a.2"
  store double %"subtmp", double* %"res_sub"
  %".55" = bitcast [23 x i8]* @"str_.28" to i8*
  %"res_sub.1" = load double, double* %"res_sub"
  %".56" = bitcast [4 x i8]* @"fmt_.29" to i8*
  %".57" = call i32 (i8*, ...) @"printf"(i8* %".56", i8* %".55")
  call void @"minilua_print_number"(double %"res_sub.1")
  %".59" = bitcast [2 x i8]* @"nl_.30" to i8*
  %".60" = call i32 (i8*, ...) @"printf"(i8* %".59")
  %"res_mul" = alloca double
  %"a.3" = load double, double* %"a"
  %"b.3" = load double, double* %"b"
  %"multmp" = fmul double %"a.3", %"b.3"
  store double %"multmp", double* %"res_mul"
  %".62" = bitcast [23 x i8]* @"str_.31" to i8*
  %"res_mul.1" = load double, double* %"res_mul"
  %".63" = bitcast [4 x i8]* @"fmt_.32" to i8*
  %".64" = call i32 (i8*, ...) @"printf"(i8* %".63", i8* %".62")
  call void @"minilua_print_number"(double %"res_mul.1")
  %".66" = bitcast [2 x i8]* @"nl_.33" to i8*
  %".67" = call i32 (i8*, ...) @"printf"(i8* %".66")
  %"res_div" = alloca double
  %"a.4" = load double, double* %"a"
  %"divtmp" = fdiv double %"a.4", 0x4000000000000000
  store double %"divtmp", double* %"res_div"
  %".69" = bitcast [29 x i8]* @"str_.34" to i8*
  %"res_div.1" = load double, double* %"res_div"
  %".70" = bitcast [4 x i8]* @"fmt_.35" to i8*
  %".71" = call i32 (i8*, ...) @"printf"(i8* %".70", i8* %".69")
  call void @"minilua_print_number"(double %"res_div.1")
  %".73" = bitcast [2 x i8]* @"nl_.36" to i8*
  %".74" = call i32 (i8*, ...) @"printf"(i8* %".73")
  %".75" = bitcast [28 x i8]* @"str_.37" to i8*
  %".76" = bitcast [3 x i8]* @"fmt_.38" to i8*
  %".77" = call i32 (i8*, ...) @"printf"(i8* %".76", i8* %".75")
  %".78" = bitcast [2 x i8]* @"nl_.39" to i8*
  %".79" = call i32 (i8*, ...) @"printf"(i8* %".78")
  %"val_int" = alloca double
  store double 0x4059000000000000, double* %"val_int"
  %".81" = bitcast [52 x i8]* @"str_.40" to i8*
  %".82" = bitcast [3 x i8]* @"fmt_.41" to i8*
  %".83" = call i32 (i8*, ...) @"printf"(i8* %".82", i8* %".81")
  %".84" = bitcast [2 x i8]* @"nl_.42" to i8*
  %".85" = call i32 (i8*, ...) @"printf"(i8* %".84")
  %"val_int.1" = load double, double* %"val_int"
  call void @"printAsNumber"(double %"val_int.1")
  %".87" = bitcast [26 x i8]* @"str_.43" to i8*
  %".88" = bitcast [3 x i8]* @"fmt_.44" to i8*
  %".89" = call i32 (i8*, ...) @"printf"(i8* %".88", i8* %".87")
  %".90" = bitcast [2 x i8]* @"nl_.45" to i8*
  %".91" = call i32 (i8*, ...) @"printf"(i8* %".90")
  call void @"printAsNumber"(double 0x408f380000000000)
  %".93" = bitcast [17 x i8]* @"str_.46" to i8*
  %".94" = bitcast [3 x i8]* @"fmt_.47" to i8*
  %".95" = call i32 (i8*, ...) @"printf"(i8* %".94", i8* %".93")
  %".96" = bitcast [2 x i8]* @"nl_.48" to i8*
  %".97" = call i32 (i8*, ...) @"printf"(i8* %".96")
  %"x" = alloca double
  store double 0x4014000000000000, double* %"x"
  %"y" = alloca double
  store double 0x4014000000000000, double* %"y"
  %"x.1" = load double, double* %"x"
  %"y.1" = load double, double* %"y"
  %"eqtmp.1" = fcmp oeq double %"x.1", %"y.1"
  br i1 %"eqtmp.1", label %"then_0.1", label %"else_0.1"
then_0:
  %".28" = bitcast [28 x i8]* @"str_.16" to i8*
  %".29" = bitcast [3 x i8]* @"fmt_.17" to i8*
  %".30" = call i32 (i8*, ...) @"printf"(i8* %".29", i8* %".28")
  %".31" = bitcast [2 x i8]* @"nl_.18" to i8*
  %".32" = call i32 (i8*, ...) @"printf"(i8* %".31")
  br label %"if_merge"
else_0:
  %".34" = bitcast [31 x i8]* @"str_.19" to i8*
  %".35" = bitcast [3 x i8]* @"fmt_.20" to i8*
  %".36" = call i32 (i8*, ...) @"printf"(i8* %".35", i8* %".34")
  %".37" = bitcast [2 x i8]* @"nl_.21" to i8*
  %".38" = call i32 (i8*, ...) @"printf"(i8* %".37")
  br label %"if_merge"
if_merge.1:
  %"x.2" = load double, double* %"x"
  %"lttmp" = fcmp olt double %"x.2", 0x4014666666666666
  br i1 %"lttmp", label %"then_0.2", label %"else_0.2"
then_0.1:
  %".101" = bitcast [34 x i8]* @"str_.49" to i8*
  %".102" = bitcast [3 x i8]* @"fmt_.50" to i8*
  %".103" = call i32 (i8*, ...) @"printf"(i8* %".102", i8* %".101")
  %".104" = bitcast [2 x i8]* @"nl_.51" to i8*
  %".105" = call i32 (i8*, ...) @"printf"(i8* %".104")
  br label %"if_merge.1"
else_0.1:
  %".107" = bitcast [38 x i8]* @"str_.52" to i8*
  %".108" = bitcast [3 x i8]* @"fmt_.53" to i8*
  %".109" = call i32 (i8*, ...) @"printf"(i8* %".108", i8* %".107")
  %".110" = bitcast [2 x i8]* @"nl_.54" to i8*
  %".111" = call i32 (i8*, ...) @"printf"(i8* %".110")
  br label %"if_merge.1"
if_merge.2:
  ret i32 0
then_0.2:
  %".114" = bitcast [33 x i8]* @"str_.55" to i8*
  %".115" = bitcast [3 x i8]* @"fmt_.56" to i8*
  %".116" = call i32 (i8*, ...) @"printf"(i8* %".115", i8* %".114")
  %".117" = bitcast [2 x i8]* @"nl_.57" to i8*
  %".118" = call i32 (i8*, ...) @"printf"(i8* %".117")
  br label %"if_merge.2"
else_0.2:
  %".120" = bitcast [37 x i8]* @"str_.58" to i8*
  %".121" = bitcast [3 x i8]* @"fmt_.59" to i8*
  %".122" = call i32 (i8*, ...) @"printf"(i8* %".121", i8* %".120")
  %".123" = bitcast [2 x i8]* @"nl_.60" to i8*
  %".124" = call i32 (i8*, ...) @"printf"(i8* %".123")
  br label %"if_merge.2"
}

@"str_.4" = internal constant [43 x i8] c"=== Teste de Coercao Integer -> Number ===\00"
@"fmt_.5" = internal constant [3 x i8] c"%s\00"
@"nl_.6" = internal constant [2 x i8] c"\0a\00"
@"str_.7" = internal constant [24 x i8] c"\5cn1. Atribuicao Direta:\00"
@"fmt_.8" = internal constant [3 x i8] c"%s\00"
@"nl_.9" = internal constant [2 x i8] c"\0a\00"
@"str_.10" = internal constant [18 x i8] c"Integer original:\00"
@"fmt_.11" = internal constant [4 x i8] c"%s \00"
@"nl_.12" = internal constant [2 x i8] c"\0a\00"
@"str_.13" = internal constant [24 x i8] c"Number apos atribuicao:\00"
@"fmt_.14" = internal constant [4 x i8] c"%s \00"
@"nl_.15" = internal constant [2 x i8] c"\0a\00"
@"str_.16" = internal constant [28 x i8] c"Verificacao: n == 42.0 (OK)\00"
@"fmt_.17" = internal constant [3 x i8] c"%s\00"
@"nl_.18" = internal constant [2 x i8] c"\0a\00"
@"str_.19" = internal constant [31 x i8] c"Verificacao: n != 42.0 (FALHA)\00"
@"fmt_.20" = internal constant [3 x i8] c"%s\00"
@"nl_.21" = internal constant [2 x i8] c"\0a\00"
@"str_.22" = internal constant [23 x i8] c"\5cn2. Operacoes Mistas:\00"
@"fmt_.23" = internal constant [3 x i8] c"%s\00"
@"nl_.24" = internal constant [2 x i8] c"\0a\00"
@"str_.25" = internal constant [23 x i8] c"10 (int) + 2.5 (num) =\00"
@"fmt_.26" = internal constant [4 x i8] c"%s \00"
@"nl_.27" = internal constant [2 x i8] c"\0a\00"
@"str_.28" = internal constant [23 x i8] c"2.5 (num) - 10 (int) =\00"
@"fmt_.29" = internal constant [4 x i8] c"%s \00"
@"nl_.30" = internal constant [2 x i8] c"\0a\00"
@"str_.31" = internal constant [23 x i8] c"10 (int) * 2.5 (num) =\00"
@"fmt_.32" = internal constant [4 x i8] c"%s \00"
@"nl_.33" = internal constant [2 x i8] c"\0a\00"
@"str_.34" = internal constant [29 x i8] c"10 (int) / 2 (int literal) =\00"
@"fmt_.35" = internal constant [4 x i8] c"%s \00"
@"nl_.36" = internal constant [2 x i8] c"\0a\00"
@"str_.37" = internal constant [28 x i8] c"\5cn3. Passagem de Parametro:\00"
@"fmt_.38" = internal constant [3 x i8] c"%s\00"
@"nl_.39" = internal constant [2 x i8] c"\0a\00"
@"str_.40" = internal constant [52 x i8] c"Passando integer 100 para funcao que espera number:\00"
@"fmt_.41" = internal constant [3 x i8] c"%s\00"
@"nl_.42" = internal constant [2 x i8] c"\0a\00"
@"str_.43" = internal constant [26 x i8] c"Passando literal int 999:\00"
@"fmt_.44" = internal constant [3 x i8] c"%s\00"
@"nl_.45" = internal constant [2 x i8] c"\0a\00"
@"str_.46" = internal constant [17 x i8] c"\5cn4. Comparacao:\00"
@"fmt_.47" = internal constant [3 x i8] c"%s\00"
@"nl_.48" = internal constant [2 x i8] c"\0a\00"
@"str_.49" = internal constant [34 x i8] c"5 (int) == 5.0 (num) -> true (OK)\00"
@"fmt_.50" = internal constant [3 x i8] c"%s\00"
@"nl_.51" = internal constant [2 x i8] c"\0a\00"
@"str_.52" = internal constant [38 x i8] c"5 (int) == 5.0 (num) -> false (FALHA)\00"
@"fmt_.53" = internal constant [3 x i8] c"%s\00"
@"nl_.54" = internal constant [2 x i8] c"\0a\00"
@"str_.55" = internal constant [33 x i8] c"5 (int) < 5.1 (num) -> true (OK)\00"
@"fmt_.56" = internal constant [3 x i8] c"%s\00"
@"nl_.57" = internal constant [2 x i8] c"\0a\00"
@"str_.58" = internal constant [37 x i8] c"5 (int) < 5.1 (num) -> false (FALHA)\00"
@"fmt_.59" = internal constant [3 x i8] c"%s\00"
@"nl_.60" = internal constant [2 x i8] c"\0a\00"