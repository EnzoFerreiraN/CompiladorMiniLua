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
  %".2" = bitcast [47 x i8]* @"str_.1" to i8*
  %".3" = bitcast [3 x i8]* @"fmt_.2" to i8*
  %".4" = call i32 (i8*, ...) @"printf"(i8* %".3", i8* %".2")
  %".5" = bitcast [2 x i8]* @"nl_.3" to i8*
  %".6" = call i32 (i8*, ...) @"printf"(i8* %".5")
  %"i" = alloca double
  store double 0x4024000000000000, double* %"i"
  %"n" = alloca double
  store double 0x40091eb851eb851f, double* %"n"
  %"b" = alloca i1
  store i1 1, i1* %"b"
  %"s" = alloca i8*
  %".10" = bitcast [10 x i8]* @"str_.4" to i8*
  store i8* %".10", i8** %"s"
  %".12" = bitcast [9 x i8]* @"str_.5" to i8*
  %"i.1" = load double, double* %"i"
  %".13" = bitcast [4 x i8]* @"fmt_.6" to i8*
  %".14" = call i32 (i8*, ...) @"printf"(i8* %".13", i8* %".12")
  %".15" = fptosi double %"i.1" to i64
  %".16" = sitofp i64 %".15" to double
  %"is_int" = fcmp oeq double %"i.1", %".16"
  br i1 %"is_int", label %"print_int", label %"print_float"
print_int:
  %".18" = bitcast [5 x i8]* @"fmt_int_.7" to i8*
  %".19" = call i32 (i8*, ...) @"printf"(i8* %".18", i64 %".15")
  br label %"print_merge"
print_float:
  %".21" = bitcast [6 x i8]* @"fmt_flt_.8" to i8*
  %".22" = call i32 (i8*, ...) @"printf"(i8* %".21", double %"i.1")
  br label %"print_merge"
print_merge:
  %".24" = bitcast [2 x i8]* @"nl_.9" to i8*
  %".25" = call i32 (i8*, ...) @"printf"(i8* %".24")
  %".26" = bitcast [8 x i8]* @"str_.10" to i8*
  %"n.1" = load double, double* %"n"
  %".27" = bitcast [4 x i8]* @"fmt_.11" to i8*
  %".28" = call i32 (i8*, ...) @"printf"(i8* %".27", i8* %".26")
  %".29" = fptosi double %"n.1" to i64
  %".30" = sitofp i64 %".29" to double
  %"is_int.1" = fcmp oeq double %"n.1", %".30"
  br i1 %"is_int.1", label %"print_int.1", label %"print_float.1"
print_int.1:
  %".32" = bitcast [5 x i8]* @"fmt_int_.12" to i8*
  %".33" = call i32 (i8*, ...) @"printf"(i8* %".32", i64 %".29")
  br label %"print_merge.1"
print_float.1:
  %".35" = bitcast [6 x i8]* @"fmt_flt_.13" to i8*
  %".36" = call i32 (i8*, ...) @"printf"(i8* %".35", double %"n.1")
  br label %"print_merge.1"
print_merge.1:
  %".38" = bitcast [2 x i8]* @"nl_.14" to i8*
  %".39" = call i32 (i8*, ...) @"printf"(i8* %".38")
  %".40" = bitcast [9 x i8]* @"str_.15" to i8*
  %"b.1" = load i1, i1* %"b"
  %".41" = bitcast [4 x i8]* @"fmt_.16" to i8*
  %".42" = call i32 (i8*, ...) @"printf"(i8* %".41", i8* %".40")
  %".43" = bitcast [3 x i8]* @"fmt_.17" to i8*
  %".44" = call i32 (i8*, ...) @"printf"(i8* %".43", i1 %"b.1")
  %".45" = bitcast [2 x i8]* @"nl_.18" to i8*
  %".46" = call i32 (i8*, ...) @"printf"(i8* %".45")
  %".47" = bitcast [8 x i8]* @"str_.19" to i8*
  %"s.1" = load i8*, i8** %"s"
  %".48" = bitcast [4 x i8]* @"fmt_.20" to i8*
  %".49" = call i32 (i8*, ...) @"printf"(i8* %".48", i8* %".47")
  %".50" = bitcast [3 x i8]* @"fmt_.21" to i8*
  %".51" = call i32 (i8*, ...) @"printf"(i8* %".50", i8* %"s.1")
  %".52" = bitcast [2 x i8]* @"nl_.22" to i8*
  %".53" = call i32 (i8*, ...) @"printf"(i8* %".52")
  %"def_i" = alloca double
  store double              0x0, double* %"def_i"
  %"def_n" = alloca double
  store double              0x0, double* %"def_n"
  %"def_b" = alloca i1
  store i1 0, i1* %"def_b"
  %"def_s" = alloca i8*
  %".57" = bitcast [1 x i8]* @"empty_string_const" to i8*
  store i8* %".57", i8** %"def_s"
  %".59" = bitcast [29 x i8]* @"str_.23" to i8*
  %"def_i.1" = load double, double* %"def_i"
  %".60" = bitcast [4 x i8]* @"fmt_.24" to i8*
  %".61" = call i32 (i8*, ...) @"printf"(i8* %".60", i8* %".59")
  %".62" = fptosi double %"def_i.1" to i64
  %".63" = sitofp i64 %".62" to double
  %"is_int.2" = fcmp oeq double %"def_i.1", %".63"
  br i1 %"is_int.2", label %"print_int.2", label %"print_float.2"
print_int.2:
  %".65" = bitcast [5 x i8]* @"fmt_int_.25" to i8*
  %".66" = call i32 (i8*, ...) @"printf"(i8* %".65", i64 %".62")
  br label %"print_merge.2"
print_float.2:
  %".68" = bitcast [6 x i8]* @"fmt_flt_.26" to i8*
  %".69" = call i32 (i8*, ...) @"printf"(i8* %".68", double %"def_i.1")
  br label %"print_merge.2"
print_merge.2:
  %".71" = bitcast [2 x i8]* @"nl_.27" to i8*
  %".72" = call i32 (i8*, ...) @"printf"(i8* %".71")
  %".73" = bitcast [31 x i8]* @"str_.28" to i8*
  %"def_n.1" = load double, double* %"def_n"
  %".74" = bitcast [4 x i8]* @"fmt_.29" to i8*
  %".75" = call i32 (i8*, ...) @"printf"(i8* %".74", i8* %".73")
  %".76" = fptosi double %"def_n.1" to i64
  %".77" = sitofp i64 %".76" to double
  %"is_int.3" = fcmp oeq double %"def_n.1", %".77"
  br i1 %"is_int.3", label %"print_int.3", label %"print_float.3"
print_int.3:
  %".79" = bitcast [5 x i8]* @"fmt_int_.30" to i8*
  %".80" = call i32 (i8*, ...) @"printf"(i8* %".79", i64 %".76")
  br label %"print_merge.3"
print_float.3:
  %".82" = bitcast [6 x i8]* @"fmt_flt_.31" to i8*
  %".83" = call i32 (i8*, ...) @"printf"(i8* %".82", double %"def_n.1")
  br label %"print_merge.3"
print_merge.3:
  %".85" = bitcast [2 x i8]* @"nl_.32" to i8*
  %".86" = call i32 (i8*, ...) @"printf"(i8* %".85")
  %".87" = bitcast [35 x i8]* @"str_.33" to i8*
  %"def_b.1" = load i1, i1* %"def_b"
  %".88" = bitcast [4 x i8]* @"fmt_.34" to i8*
  %".89" = call i32 (i8*, ...) @"printf"(i8* %".88", i8* %".87")
  %".90" = bitcast [3 x i8]* @"fmt_.35" to i8*
  %".91" = call i32 (i8*, ...) @"printf"(i8* %".90", i1 %"def_b.1")
  %".92" = bitcast [2 x i8]* @"nl_.36" to i8*
  %".93" = call i32 (i8*, ...) @"printf"(i8* %".92")
  %".94" = bitcast [29 x i8]* @"str_.37" to i8*
  %"def_s.1" = load i8*, i8** %"def_s"
  %".95" = bitcast [4 x i8]* @"fmt_.38" to i8*
  %".96" = call i32 (i8*, ...) @"printf"(i8* %".95", i8* %".94")
  %".97" = bitcast [3 x i8]* @"fmt_.39" to i8*
  %".98" = call i32 (i8*, ...) @"printf"(i8* %".97", i8* %"def_s.1")
  %".99" = bitcast [2 x i8]* @"nl_.40" to i8*
  %".100" = call i32 (i8*, ...) @"printf"(i8* %".99")
  %"PI" = alloca double
  store double 0x400921f9f01b866e, double* %"PI"
  %"MAX" = alloca double
  store double 0x4059000000000000, double* %"MAX"
  %".103" = bitcast [14 x i8]* @"str_.41" to i8*
  %"PI.1" = load double, double* %"PI"
  %".104" = bitcast [4 x i8]* @"fmt_.42" to i8*
  %".105" = call i32 (i8*, ...) @"printf"(i8* %".104", i8* %".103")
  %".106" = fptosi double %"PI.1" to i64
  %".107" = sitofp i64 %".106" to double
  %"is_int.4" = fcmp oeq double %"PI.1", %".107"
  br i1 %"is_int.4", label %"print_int.4", label %"print_float.4"
print_int.4:
  %".109" = bitcast [5 x i8]* @"fmt_int_.43" to i8*
  %".110" = call i32 (i8*, ...) @"printf"(i8* %".109", i64 %".106")
  br label %"print_merge.4"
print_float.4:
  %".112" = bitcast [6 x i8]* @"fmt_flt_.44" to i8*
  %".113" = call i32 (i8*, ...) @"printf"(i8* %".112", double %"PI.1")
  br label %"print_merge.4"
print_merge.4:
  %".115" = bitcast [2 x i8]* @"nl_.45" to i8*
  %".116" = call i32 (i8*, ...) @"printf"(i8* %".115")
  %".117" = bitcast [15 x i8]* @"str_.46" to i8*
  %"MAX.1" = load double, double* %"MAX"
  %".118" = bitcast [4 x i8]* @"fmt_.47" to i8*
  %".119" = call i32 (i8*, ...) @"printf"(i8* %".118", i8* %".117")
  %".120" = fptosi double %"MAX.1" to i64
  %".121" = sitofp i64 %".120" to double
  %"is_int.5" = fcmp oeq double %"MAX.1", %".121"
  br i1 %"is_int.5", label %"print_int.5", label %"print_float.5"
print_int.5:
  %".123" = bitcast [5 x i8]* @"fmt_int_.48" to i8*
  %".124" = call i32 (i8*, ...) @"printf"(i8* %".123", i64 %".120")
  br label %"print_merge.5"
print_float.5:
  %".126" = bitcast [6 x i8]* @"fmt_flt_.49" to i8*
  %".127" = call i32 (i8*, ...) @"printf"(i8* %".126", double %"MAX.1")
  br label %"print_merge.5"
print_merge.5:
  %".129" = bitcast [2 x i8]* @"nl_.50" to i8*
  %".130" = call i32 (i8*, ...) @"printf"(i8* %".129")
  %"x" = alloca double
  store double              0x0, double* %"x"
  store double 0x4014000000000000, double* %"x"
  %".133" = bitcast [35 x i8]* @"str_.51" to i8*
  %"x.1" = load double, double* %"x"
  %".134" = bitcast [4 x i8]* @"fmt_.52" to i8*
  %".135" = call i32 (i8*, ...) @"printf"(i8* %".134", i8* %".133")
  %".136" = fptosi double %"x.1" to i64
  %".137" = sitofp i64 %".136" to double
  %"is_int.6" = fcmp oeq double %"x.1", %".137"
  br i1 %"is_int.6", label %"print_int.6", label %"print_float.6"
print_int.6:
  %".139" = bitcast [5 x i8]* @"fmt_int_.53" to i8*
  %".140" = call i32 (i8*, ...) @"printf"(i8* %".139", i64 %".136")
  br label %"print_merge.6"
print_float.6:
  %".142" = bitcast [6 x i8]* @"fmt_flt_.54" to i8*
  %".143" = call i32 (i8*, ...) @"printf"(i8* %".142", double %"x.1")
  br label %"print_merge.6"
print_merge.6:
  %".145" = bitcast [2 x i8]* @"nl_.55" to i8*
  %".146" = call i32 (i8*, ...) @"printf"(i8* %".145")
  %"y" = alloca double
  %"addtmp" = fadd double 0x4024000000000000, 0x4004000000000000
  store double %"addtmp", double* %"y"
  %".148" = bitcast [27 x i8]* @"str_.56" to i8*
  %"y.1" = load double, double* %"y"
  %".149" = bitcast [4 x i8]* @"fmt_.57" to i8*
  %".150" = call i32 (i8*, ...) @"printf"(i8* %".149", i8* %".148")
  %".151" = fptosi double %"y.1" to i64
  %".152" = sitofp i64 %".151" to double
  %"is_int.7" = fcmp oeq double %"y.1", %".152"
  br i1 %"is_int.7", label %"print_int.7", label %"print_float.7"
print_int.7:
  %".154" = bitcast [5 x i8]* @"fmt_int_.58" to i8*
  %".155" = call i32 (i8*, ...) @"printf"(i8* %".154", i64 %".151")
  br label %"print_merge.7"
print_float.7:
  %".157" = bitcast [6 x i8]* @"fmt_flt_.59" to i8*
  %".158" = call i32 (i8*, ...) @"printf"(i8* %".157", double %"y.1")
  br label %"print_merge.7"
print_merge.7:
  %".160" = bitcast [2 x i8]* @"nl_.60" to i8*
  %".161" = call i32 (i8*, ...) @"printf"(i8* %".160")
  ret i32 0
}

@"str_.1" = internal constant [47 x i8] c"=== Teste 1: Tipos, Variaveis e Constantes ===\00"
@"fmt_.2" = internal constant [3 x i8] c"%s\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"str_.4" = internal constant [10 x i8] c"Ola Mundo\00"
@"str_.5" = internal constant [9 x i8] c"Inteiro:\00"
@"fmt_.6" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.7" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.8" = internal constant [6 x i8] c"%.14g\00"
@"nl_.9" = internal constant [2 x i8] c"\0a\00"
@"str_.10" = internal constant [8 x i8] c"Number:\00"
@"fmt_.11" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.12" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.13" = internal constant [6 x i8] c"%.14g\00"
@"nl_.14" = internal constant [2 x i8] c"\0a\00"
@"str_.15" = internal constant [9 x i8] c"Boolean:\00"
@"fmt_.16" = internal constant [4 x i8] c"%s \00"
@"fmt_.17" = internal constant [3 x i8] c"%d\00"
@"nl_.18" = internal constant [2 x i8] c"\0a\00"
@"str_.19" = internal constant [8 x i8] c"String:\00"
@"fmt_.20" = internal constant [4 x i8] c"%s \00"
@"fmt_.21" = internal constant [3 x i8] c"%s\00"
@"nl_.22" = internal constant [2 x i8] c"\0a\00"
@"empty_string_const" = internal constant [1 x i8] c"\00"
@"str_.23" = internal constant [29 x i8] c"Padrao Integer (esperado 0):\00"
@"fmt_.24" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.25" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.26" = internal constant [6 x i8] c"%.14g\00"
@"nl_.27" = internal constant [2 x i8] c"\0a\00"
@"str_.28" = internal constant [31 x i8] c"Padrao Number (esperado 0.00):\00"
@"fmt_.29" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.30" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.31" = internal constant [6 x i8] c"%.14g\00"
@"nl_.32" = internal constant [2 x i8] c"\0a\00"
@"str_.33" = internal constant [35 x i8] c"Padrao Boolean (esperado 0/false):\00"
@"fmt_.34" = internal constant [4 x i8] c"%s \00"
@"fmt_.35" = internal constant [3 x i8] c"%d\00"
@"nl_.36" = internal constant [2 x i8] c"\0a\00"
@"str_.37" = internal constant [29 x i8] c"Padrao String (esperado ''):\00"
@"fmt_.38" = internal constant [4 x i8] c"%s \00"
@"fmt_.39" = internal constant [3 x i8] c"%s\00"
@"nl_.40" = internal constant [2 x i8] c"\0a\00"
@"str_.41" = internal constant [14 x i8] c"Constante PI:\00"
@"fmt_.42" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.43" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.44" = internal constant [6 x i8] c"%.14g\00"
@"nl_.45" = internal constant [2 x i8] c"\0a\00"
@"str_.46" = internal constant [15 x i8] c"Constante MAX:\00"
@"fmt_.47" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.48" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.49" = internal constant [6 x i8] c"%.14g\00"
@"nl_.50" = internal constant [2 x i8] c"\0a\00"
@"str_.51" = internal constant [35 x i8] c"Coercao Int -> Number (5 -> 5.00):\00"
@"fmt_.52" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.53" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.54" = internal constant [6 x i8] c"%.14g\00"
@"nl_.55" = internal constant [2 x i8] c"\0a\00"
@"str_.56" = internal constant [27 x i8] c"Operacao Mista (10 + 2.5):\00"
@"fmt_.57" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.58" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.59" = internal constant [6 x i8] c"%.14g\00"
@"nl_.60" = internal constant [2 x i8] c"\0a\00"