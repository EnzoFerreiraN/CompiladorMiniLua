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
  %".15" = bitcast [5 x i8]* @"fmt_.7" to i8*
  %".16" = call i32 (i8*, ...) @"printf"(i8* %".15", double %"i.1")
  %".17" = bitcast [2 x i8]* @"nl_.8" to i8*
  %".18" = call i32 (i8*, ...) @"printf"(i8* %".17")
  %".19" = bitcast [8 x i8]* @"str_.9" to i8*
  %"n.1" = load double, double* %"n"
  %".20" = bitcast [4 x i8]* @"fmt_.10" to i8*
  %".21" = call i32 (i8*, ...) @"printf"(i8* %".20", i8* %".19")
  %".22" = bitcast [5 x i8]* @"fmt_.11" to i8*
  %".23" = call i32 (i8*, ...) @"printf"(i8* %".22", double %"n.1")
  %".24" = bitcast [2 x i8]* @"nl_.12" to i8*
  %".25" = call i32 (i8*, ...) @"printf"(i8* %".24")
  %".26" = bitcast [9 x i8]* @"str_.13" to i8*
  %"b.1" = load i1, i1* %"b"
  %".27" = bitcast [4 x i8]* @"fmt_.14" to i8*
  %".28" = call i32 (i8*, ...) @"printf"(i8* %".27", i8* %".26")
  %".29" = bitcast [3 x i8]* @"fmt_.15" to i8*
  %".30" = call i32 (i8*, ...) @"printf"(i8* %".29", i1 %"b.1")
  %".31" = bitcast [2 x i8]* @"nl_.16" to i8*
  %".32" = call i32 (i8*, ...) @"printf"(i8* %".31")
  %".33" = bitcast [8 x i8]* @"str_.17" to i8*
  %"s.1" = load i8*, i8** %"s"
  %".34" = bitcast [4 x i8]* @"fmt_.18" to i8*
  %".35" = call i32 (i8*, ...) @"printf"(i8* %".34", i8* %".33")
  %".36" = bitcast [3 x i8]* @"fmt_.19" to i8*
  %".37" = call i32 (i8*, ...) @"printf"(i8* %".36", i8* %"s.1")
  %".38" = bitcast [2 x i8]* @"nl_.20" to i8*
  %".39" = call i32 (i8*, ...) @"printf"(i8* %".38")
  %"def_i" = alloca double
  store double              0x0, double* %"def_i"
  %"def_n" = alloca double
  store double              0x0, double* %"def_n"
  %"def_b" = alloca i1
  store i1 0, i1* %"def_b"
  %"def_s" = alloca i8*
  %".43" = bitcast [1 x i8]* @"empty_string_const" to i8*
  store i8* %".43", i8** %"def_s"
  %".45" = bitcast [29 x i8]* @"str_.21" to i8*
  %"def_i.1" = load double, double* %"def_i"
  %".46" = bitcast [4 x i8]* @"fmt_.22" to i8*
  %".47" = call i32 (i8*, ...) @"printf"(i8* %".46", i8* %".45")
  %".48" = bitcast [5 x i8]* @"fmt_.23" to i8*
  %".49" = call i32 (i8*, ...) @"printf"(i8* %".48", double %"def_i.1")
  %".50" = bitcast [2 x i8]* @"nl_.24" to i8*
  %".51" = call i32 (i8*, ...) @"printf"(i8* %".50")
  %".52" = bitcast [31 x i8]* @"str_.25" to i8*
  %"def_n.1" = load double, double* %"def_n"
  %".53" = bitcast [4 x i8]* @"fmt_.26" to i8*
  %".54" = call i32 (i8*, ...) @"printf"(i8* %".53", i8* %".52")
  %".55" = bitcast [5 x i8]* @"fmt_.27" to i8*
  %".56" = call i32 (i8*, ...) @"printf"(i8* %".55", double %"def_n.1")
  %".57" = bitcast [2 x i8]* @"nl_.28" to i8*
  %".58" = call i32 (i8*, ...) @"printf"(i8* %".57")
  %".59" = bitcast [35 x i8]* @"str_.29" to i8*
  %"def_b.1" = load i1, i1* %"def_b"
  %".60" = bitcast [4 x i8]* @"fmt_.30" to i8*
  %".61" = call i32 (i8*, ...) @"printf"(i8* %".60", i8* %".59")
  %".62" = bitcast [3 x i8]* @"fmt_.31" to i8*
  %".63" = call i32 (i8*, ...) @"printf"(i8* %".62", i1 %"def_b.1")
  %".64" = bitcast [2 x i8]* @"nl_.32" to i8*
  %".65" = call i32 (i8*, ...) @"printf"(i8* %".64")
  %".66" = bitcast [29 x i8]* @"str_.33" to i8*
  %"def_s.1" = load i8*, i8** %"def_s"
  %".67" = bitcast [4 x i8]* @"fmt_.34" to i8*
  %".68" = call i32 (i8*, ...) @"printf"(i8* %".67", i8* %".66")
  %".69" = bitcast [3 x i8]* @"fmt_.35" to i8*
  %".70" = call i32 (i8*, ...) @"printf"(i8* %".69", i8* %"def_s.1")
  %".71" = bitcast [2 x i8]* @"nl_.36" to i8*
  %".72" = call i32 (i8*, ...) @"printf"(i8* %".71")
  %"PI" = alloca double
  store double 0x400921f9f01b866e, double* %"PI"
  %"MAX" = alloca double
  store double 0x4059000000000000, double* %"MAX"
  %".75" = bitcast [14 x i8]* @"str_.37" to i8*
  %"PI.1" = load double, double* %"PI"
  %".76" = bitcast [4 x i8]* @"fmt_.38" to i8*
  %".77" = call i32 (i8*, ...) @"printf"(i8* %".76", i8* %".75")
  %".78" = bitcast [5 x i8]* @"fmt_.39" to i8*
  %".79" = call i32 (i8*, ...) @"printf"(i8* %".78", double %"PI.1")
  %".80" = bitcast [2 x i8]* @"nl_.40" to i8*
  %".81" = call i32 (i8*, ...) @"printf"(i8* %".80")
  %".82" = bitcast [15 x i8]* @"str_.41" to i8*
  %"MAX.1" = load double, double* %"MAX"
  %".83" = bitcast [4 x i8]* @"fmt_.42" to i8*
  %".84" = call i32 (i8*, ...) @"printf"(i8* %".83", i8* %".82")
  %".85" = bitcast [5 x i8]* @"fmt_.43" to i8*
  %".86" = call i32 (i8*, ...) @"printf"(i8* %".85", double %"MAX.1")
  %".87" = bitcast [2 x i8]* @"nl_.44" to i8*
  %".88" = call i32 (i8*, ...) @"printf"(i8* %".87")
  %"x" = alloca double
  store double              0x0, double* %"x"
  store double 0x4014000000000000, double* %"x"
  %".91" = bitcast [35 x i8]* @"str_.45" to i8*
  %"x.1" = load double, double* %"x"
  %".92" = bitcast [4 x i8]* @"fmt_.46" to i8*
  %".93" = call i32 (i8*, ...) @"printf"(i8* %".92", i8* %".91")
  %".94" = bitcast [5 x i8]* @"fmt_.47" to i8*
  %".95" = call i32 (i8*, ...) @"printf"(i8* %".94", double %"x.1")
  %".96" = bitcast [2 x i8]* @"nl_.48" to i8*
  %".97" = call i32 (i8*, ...) @"printf"(i8* %".96")
  %"y" = alloca double
  %"addtmp" = fadd double 0x4024000000000000, 0x4004000000000000
  store double %"addtmp", double* %"y"
  %".99" = bitcast [27 x i8]* @"str_.49" to i8*
  %"y.1" = load double, double* %"y"
  %".100" = bitcast [4 x i8]* @"fmt_.50" to i8*
  %".101" = call i32 (i8*, ...) @"printf"(i8* %".100", i8* %".99")
  %".102" = bitcast [5 x i8]* @"fmt_.51" to i8*
  %".103" = call i32 (i8*, ...) @"printf"(i8* %".102", double %"y.1")
  %".104" = bitcast [2 x i8]* @"nl_.52" to i8*
  %".105" = call i32 (i8*, ...) @"printf"(i8* %".104")
  ret i32 0
}

@"str_.1" = internal constant [47 x i8] c"=== Teste 1: Tipos, Variaveis e Constantes ===\00"
@"fmt_.2" = internal constant [3 x i8] c"%s\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"str_.4" = internal constant [10 x i8] c"Ola Mundo\00"
@"str_.5" = internal constant [9 x i8] c"Inteiro:\00"
@"fmt_.6" = internal constant [4 x i8] c"%s \00"
@"fmt_.7" = internal constant [5 x i8] c"%.2f\00"
@"nl_.8" = internal constant [2 x i8] c"\0a\00"
@"str_.9" = internal constant [8 x i8] c"Number:\00"
@"fmt_.10" = internal constant [4 x i8] c"%s \00"
@"fmt_.11" = internal constant [5 x i8] c"%.2f\00"
@"nl_.12" = internal constant [2 x i8] c"\0a\00"
@"str_.13" = internal constant [9 x i8] c"Boolean:\00"
@"fmt_.14" = internal constant [4 x i8] c"%s \00"
@"fmt_.15" = internal constant [3 x i8] c"%d\00"
@"nl_.16" = internal constant [2 x i8] c"\0a\00"
@"str_.17" = internal constant [8 x i8] c"String:\00"
@"fmt_.18" = internal constant [4 x i8] c"%s \00"
@"fmt_.19" = internal constant [3 x i8] c"%s\00"
@"nl_.20" = internal constant [2 x i8] c"\0a\00"
@"empty_string_const" = internal constant [1 x i8] c"\00"
@"str_.21" = internal constant [29 x i8] c"Padrao Integer (esperado 0):\00"
@"fmt_.22" = internal constant [4 x i8] c"%s \00"
@"fmt_.23" = internal constant [5 x i8] c"%.2f\00"
@"nl_.24" = internal constant [2 x i8] c"\0a\00"
@"str_.25" = internal constant [31 x i8] c"Padrao Number (esperado 0.00):\00"
@"fmt_.26" = internal constant [4 x i8] c"%s \00"
@"fmt_.27" = internal constant [5 x i8] c"%.2f\00"
@"nl_.28" = internal constant [2 x i8] c"\0a\00"
@"str_.29" = internal constant [35 x i8] c"Padrao Boolean (esperado 0/false):\00"
@"fmt_.30" = internal constant [4 x i8] c"%s \00"
@"fmt_.31" = internal constant [3 x i8] c"%d\00"
@"nl_.32" = internal constant [2 x i8] c"\0a\00"
@"str_.33" = internal constant [29 x i8] c"Padrao String (esperado ''):\00"
@"fmt_.34" = internal constant [4 x i8] c"%s \00"
@"fmt_.35" = internal constant [3 x i8] c"%s\00"
@"nl_.36" = internal constant [2 x i8] c"\0a\00"
@"str_.37" = internal constant [14 x i8] c"Constante PI:\00"
@"fmt_.38" = internal constant [4 x i8] c"%s \00"
@"fmt_.39" = internal constant [5 x i8] c"%.2f\00"
@"nl_.40" = internal constant [2 x i8] c"\0a\00"
@"str_.41" = internal constant [15 x i8] c"Constante MAX:\00"
@"fmt_.42" = internal constant [4 x i8] c"%s \00"
@"fmt_.43" = internal constant [5 x i8] c"%.2f\00"
@"nl_.44" = internal constant [2 x i8] c"\0a\00"
@"str_.45" = internal constant [35 x i8] c"Coercao Int -> Number (5 -> 5.00):\00"
@"fmt_.46" = internal constant [4 x i8] c"%s \00"
@"fmt_.47" = internal constant [5 x i8] c"%.2f\00"
@"nl_.48" = internal constant [2 x i8] c"\0a\00"
@"str_.49" = internal constant [27 x i8] c"Operacao Mista (10 + 2.5):\00"
@"fmt_.50" = internal constant [4 x i8] c"%s \00"
@"fmt_.51" = internal constant [5 x i8] c"%.2f\00"
@"nl_.52" = internal constant [2 x i8] c"\0a\00"