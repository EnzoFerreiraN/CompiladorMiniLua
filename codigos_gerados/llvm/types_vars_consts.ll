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
  call void @"minilua_print_number"(double %"i.1")
  %".16" = bitcast [2 x i8]* @"nl_.7" to i8*
  %".17" = call i32 (i8*, ...) @"printf"(i8* %".16")
  %".18" = bitcast [8 x i8]* @"str_.8" to i8*
  %"n.1" = load double, double* %"n"
  %".19" = bitcast [4 x i8]* @"fmt_.9" to i8*
  %".20" = call i32 (i8*, ...) @"printf"(i8* %".19", i8* %".18")
  call void @"minilua_print_number"(double %"n.1")
  %".22" = bitcast [2 x i8]* @"nl_.10" to i8*
  %".23" = call i32 (i8*, ...) @"printf"(i8* %".22")
  %".24" = bitcast [9 x i8]* @"str_.11" to i8*
  %"b.1" = load i1, i1* %"b"
  %".25" = bitcast [4 x i8]* @"fmt_.12" to i8*
  %".26" = call i32 (i8*, ...) @"printf"(i8* %".25", i8* %".24")
  %".27" = bitcast [3 x i8]* @"fmt_.13" to i8*
  %".28" = call i32 (i8*, ...) @"printf"(i8* %".27", i1 %"b.1")
  %".29" = bitcast [2 x i8]* @"nl_.14" to i8*
  %".30" = call i32 (i8*, ...) @"printf"(i8* %".29")
  %".31" = bitcast [8 x i8]* @"str_.15" to i8*
  %"s.1" = load i8*, i8** %"s"
  %".32" = bitcast [4 x i8]* @"fmt_.16" to i8*
  %".33" = call i32 (i8*, ...) @"printf"(i8* %".32", i8* %".31")
  %".34" = bitcast [3 x i8]* @"fmt_.17" to i8*
  %".35" = call i32 (i8*, ...) @"printf"(i8* %".34", i8* %"s.1")
  %".36" = bitcast [2 x i8]* @"nl_.18" to i8*
  %".37" = call i32 (i8*, ...) @"printf"(i8* %".36")
  %"def_i" = alloca double
  store double              0x0, double* %"def_i"
  %"def_n" = alloca double
  store double              0x0, double* %"def_n"
  %"def_b" = alloca i1
  store i1 0, i1* %"def_b"
  %"def_s" = alloca i8*
  %".41" = bitcast [1 x i8]* @"empty_string_const" to i8*
  store i8* %".41", i8** %"def_s"
  %".43" = bitcast [29 x i8]* @"str_.19" to i8*
  %"def_i.1" = load double, double* %"def_i"
  %".44" = bitcast [4 x i8]* @"fmt_.20" to i8*
  %".45" = call i32 (i8*, ...) @"printf"(i8* %".44", i8* %".43")
  call void @"minilua_print_number"(double %"def_i.1")
  %".47" = bitcast [2 x i8]* @"nl_.21" to i8*
  %".48" = call i32 (i8*, ...) @"printf"(i8* %".47")
  %".49" = bitcast [31 x i8]* @"str_.22" to i8*
  %"def_n.1" = load double, double* %"def_n"
  %".50" = bitcast [4 x i8]* @"fmt_.23" to i8*
  %".51" = call i32 (i8*, ...) @"printf"(i8* %".50", i8* %".49")
  call void @"minilua_print_number"(double %"def_n.1")
  %".53" = bitcast [2 x i8]* @"nl_.24" to i8*
  %".54" = call i32 (i8*, ...) @"printf"(i8* %".53")
  %".55" = bitcast [35 x i8]* @"str_.25" to i8*
  %"def_b.1" = load i1, i1* %"def_b"
  %".56" = bitcast [4 x i8]* @"fmt_.26" to i8*
  %".57" = call i32 (i8*, ...) @"printf"(i8* %".56", i8* %".55")
  %".58" = bitcast [3 x i8]* @"fmt_.27" to i8*
  %".59" = call i32 (i8*, ...) @"printf"(i8* %".58", i1 %"def_b.1")
  %".60" = bitcast [2 x i8]* @"nl_.28" to i8*
  %".61" = call i32 (i8*, ...) @"printf"(i8* %".60")
  %".62" = bitcast [29 x i8]* @"str_.29" to i8*
  %"def_s.1" = load i8*, i8** %"def_s"
  %".63" = bitcast [4 x i8]* @"fmt_.30" to i8*
  %".64" = call i32 (i8*, ...) @"printf"(i8* %".63", i8* %".62")
  %".65" = bitcast [3 x i8]* @"fmt_.31" to i8*
  %".66" = call i32 (i8*, ...) @"printf"(i8* %".65", i8* %"def_s.1")
  %".67" = bitcast [2 x i8]* @"nl_.32" to i8*
  %".68" = call i32 (i8*, ...) @"printf"(i8* %".67")
  %"PI" = alloca double
  store double 0x400921f9f01b866e, double* %"PI"
  %"MAX" = alloca double
  store double 0x4059000000000000, double* %"MAX"
  %".71" = bitcast [14 x i8]* @"str_.33" to i8*
  %"PI.1" = load double, double* %"PI"
  %".72" = bitcast [4 x i8]* @"fmt_.34" to i8*
  %".73" = call i32 (i8*, ...) @"printf"(i8* %".72", i8* %".71")
  call void @"minilua_print_number"(double %"PI.1")
  %".75" = bitcast [2 x i8]* @"nl_.35" to i8*
  %".76" = call i32 (i8*, ...) @"printf"(i8* %".75")
  %".77" = bitcast [15 x i8]* @"str_.36" to i8*
  %"MAX.1" = load double, double* %"MAX"
  %".78" = bitcast [4 x i8]* @"fmt_.37" to i8*
  %".79" = call i32 (i8*, ...) @"printf"(i8* %".78", i8* %".77")
  call void @"minilua_print_number"(double %"MAX.1")
  %".81" = bitcast [2 x i8]* @"nl_.38" to i8*
  %".82" = call i32 (i8*, ...) @"printf"(i8* %".81")
  %"x" = alloca double
  store double              0x0, double* %"x"
  store double 0x4014000000000000, double* %"x"
  %".85" = bitcast [35 x i8]* @"str_.39" to i8*
  %"x.1" = load double, double* %"x"
  %".86" = bitcast [4 x i8]* @"fmt_.40" to i8*
  %".87" = call i32 (i8*, ...) @"printf"(i8* %".86", i8* %".85")
  call void @"minilua_print_number"(double %"x.1")
  %".89" = bitcast [2 x i8]* @"nl_.41" to i8*
  %".90" = call i32 (i8*, ...) @"printf"(i8* %".89")
  %"y" = alloca double
  %"addtmp" = fadd double 0x4024000000000000, 0x4004000000000000
  store double %"addtmp", double* %"y"
  %".92" = bitcast [27 x i8]* @"str_.42" to i8*
  %"y.1" = load double, double* %"y"
  %".93" = bitcast [4 x i8]* @"fmt_.43" to i8*
  %".94" = call i32 (i8*, ...) @"printf"(i8* %".93", i8* %".92")
  call void @"minilua_print_number"(double %"y.1")
  %".96" = bitcast [2 x i8]* @"nl_.44" to i8*
  %".97" = call i32 (i8*, ...) @"printf"(i8* %".96")
  ret i32 0
}

@"str_.1" = internal constant [47 x i8] c"=== Teste 1: Tipos, Variaveis e Constantes ===\00"
@"fmt_.2" = internal constant [3 x i8] c"%s\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"str_.4" = internal constant [10 x i8] c"Ola Mundo\00"
@"str_.5" = internal constant [9 x i8] c"Inteiro:\00"
@"fmt_.6" = internal constant [4 x i8] c"%s \00"
@"nl_.7" = internal constant [2 x i8] c"\0a\00"
@"str_.8" = internal constant [8 x i8] c"Number:\00"
@"fmt_.9" = internal constant [4 x i8] c"%s \00"
@"nl_.10" = internal constant [2 x i8] c"\0a\00"
@"str_.11" = internal constant [9 x i8] c"Boolean:\00"
@"fmt_.12" = internal constant [4 x i8] c"%s \00"
@"fmt_.13" = internal constant [3 x i8] c"%d\00"
@"nl_.14" = internal constant [2 x i8] c"\0a\00"
@"str_.15" = internal constant [8 x i8] c"String:\00"
@"fmt_.16" = internal constant [4 x i8] c"%s \00"
@"fmt_.17" = internal constant [3 x i8] c"%s\00"
@"nl_.18" = internal constant [2 x i8] c"\0a\00"
@"empty_string_const" = internal constant [1 x i8] c"\00"
@"str_.19" = internal constant [29 x i8] c"Padrao Integer (esperado 0):\00"
@"fmt_.20" = internal constant [4 x i8] c"%s \00"
@"nl_.21" = internal constant [2 x i8] c"\0a\00"
@"str_.22" = internal constant [31 x i8] c"Padrao Number (esperado 0.00):\00"
@"fmt_.23" = internal constant [4 x i8] c"%s \00"
@"nl_.24" = internal constant [2 x i8] c"\0a\00"
@"str_.25" = internal constant [35 x i8] c"Padrao Boolean (esperado 0/false):\00"
@"fmt_.26" = internal constant [4 x i8] c"%s \00"
@"fmt_.27" = internal constant [3 x i8] c"%d\00"
@"nl_.28" = internal constant [2 x i8] c"\0a\00"
@"str_.29" = internal constant [29 x i8] c"Padrao String (esperado ''):\00"
@"fmt_.30" = internal constant [4 x i8] c"%s \00"
@"fmt_.31" = internal constant [3 x i8] c"%s\00"
@"nl_.32" = internal constant [2 x i8] c"\0a\00"
@"str_.33" = internal constant [14 x i8] c"Constante PI:\00"
@"fmt_.34" = internal constant [4 x i8] c"%s \00"
@"nl_.35" = internal constant [2 x i8] c"\0a\00"
@"str_.36" = internal constant [15 x i8] c"Constante MAX:\00"
@"fmt_.37" = internal constant [4 x i8] c"%s \00"
@"nl_.38" = internal constant [2 x i8] c"\0a\00"
@"str_.39" = internal constant [35 x i8] c"Coercao Int -> Number (5 -> 5.00):\00"
@"fmt_.40" = internal constant [4 x i8] c"%s \00"
@"nl_.41" = internal constant [2 x i8] c"\0a\00"
@"str_.42" = internal constant [27 x i8] c"Operacao Mista (10 + 2.5):\00"
@"fmt_.43" = internal constant [4 x i8] c"%s \00"
@"nl_.44" = internal constant [2 x i8] c"\0a\00"