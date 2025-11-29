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
  %".7" = bitcast [13 x i8]* @"str_.4" to i8*
  %".8" = bitcast [3 x i8]* @"fmt_.5" to i8*
  %".9" = call i32 (i8*, ...) @"printf"(i8* %".8", i8* %".7")
  %".10" = bitcast [2 x i8]* @"nl_.6" to i8*
  %".11" = call i32 (i8*, ...) @"printf"(i8* %".10")
  %".12" = bitcast [5 x i8]* @"str_.7" to i8*
  %".13" = bitcast [6 x i8]* @"str_.8" to i8*
  %"len1" = call i32 @"strlen"(i8* %".12")
  %"len2" = call i32 @"strlen"(i8* %".13")
  %"total_len" = add i32 %"len1", %"len2"
  %".14" = add i32 %"total_len", 1
  %"new_str_void" = call i8* @"malloc"(i32 %".14")
  %".15" = call i8* @"strcpy"(i8* %"new_str_void", i8* %".12")
  %".16" = call i8* @"strcat"(i8* %"new_str_void", i8* %".13")
  %".17" = bitcast [3 x i8]* @"fmt_.9" to i8*
  %".18" = call i32 (i8*, ...) @"printf"(i8* %".17", i8* %"new_str_void")
  %".19" = bitcast [2 x i8]* @"nl_.10" to i8*
  %".20" = call i32 (i8*, ...) @"printf"(i8* %".19")
  %".21" = bitcast [14 x i8]* @"str_.11" to i8*
  %".22" = bitcast [3 x i8]* @"fmt_.12" to i8*
  %".23" = call i32 (i8*, ...) @"printf"(i8* %".22", i8* %".21")
  %".24" = bitcast [2 x i8]* @"nl_.13" to i8*
  %".25" = call i32 (i8*, ...) @"printf"(i8* %".24")
  %"s1" = alloca i8*
  %".26" = bitcast [7 x i8]* @"str_.14" to i8*
  store i8* %".26", i8** %"s1"
  %"s2" = alloca i8*
  %".28" = bitcast [4 x i8]* @"str_.15" to i8*
  store i8* %".28", i8** %"s2"
  %"res" = alloca i8*
  %".30" = bitcast [1 x i8]* @"empty_string_const" to i8*
  store i8* %".30", i8** %"res"
  %"s1.1" = load i8*, i8** %"s1"
  %".32" = bitcast [11 x i8]* @"str_.16" to i8*
  %"len1.1" = call i32 @"strlen"(i8* %"s1.1")
  %"len2.1" = call i32 @"strlen"(i8* %".32")
  %"total_len.1" = add i32 %"len1.1", %"len2.1"
  %".33" = add i32 %"total_len.1", 1
  %"new_str_void.1" = call i8* @"malloc"(i32 %".33")
  %".34" = call i8* @"strcpy"(i8* %"new_str_void.1", i8* %"s1.1")
  %".35" = call i8* @"strcat"(i8* %"new_str_void.1", i8* %".32")
  %"s2.1" = load i8*, i8** %"s2"
  %"len1.2" = call i32 @"strlen"(i8* %"new_str_void.1")
  %"len2.2" = call i32 @"strlen"(i8* %"s2.1")
  %"total_len.2" = add i32 %"len1.2", %"len2.2"
  %".36" = add i32 %"total_len.2", 1
  %"new_str_void.2" = call i8* @"malloc"(i32 %".36")
  %".37" = call i8* @"strcpy"(i8* %"new_str_void.2", i8* %"new_str_void.1")
  %".38" = call i8* @"strcat"(i8* %"new_str_void.2", i8* %"s2.1")
  store i8* %"new_str_void.2", i8** %"res"
  %"res.1" = load i8*, i8** %"res"
  %".40" = bitcast [3 x i8]* @"fmt_.17" to i8*
  %".41" = call i32 (i8*, ...) @"printf"(i8* %".40", i8* %"res.1")
  %".42" = bitcast [2 x i8]* @"nl_.18" to i8*
  %".43" = call i32 (i8*, ...) @"printf"(i8* %".42")
  %".44" = bitcast [17 x i8]* @"str_.19" to i8*
  %".45" = bitcast [3 x i8]* @"fmt_.20" to i8*
  %".46" = call i32 (i8*, ...) @"printf"(i8* %".45", i8* %".44")
  %".47" = bitcast [2 x i8]* @"nl_.21" to i8*
  %".48" = call i32 (i8*, ...) @"printf"(i8* %".47")
  %"a" = alloca i8*
  %".49" = bitcast [2 x i8]* @"str_.22" to i8*
  store i8* %".49", i8** %"a"
  %"b" = alloca i8*
  %".51" = bitcast [2 x i8]* @"str_.23" to i8*
  store i8* %".51", i8** %"b"
  %"c" = alloca i8*
  %".53" = bitcast [2 x i8]* @"str_.24" to i8*
  store i8* %".53", i8** %"c"
  %"d" = alloca i8*
  %".55" = bitcast [2 x i8]* @"str_.25" to i8*
  store i8* %".55", i8** %"d"
  %"a.1" = load i8*, i8** %"a"
  %"b.1" = load i8*, i8** %"b"
  %"len1.3" = call i32 @"strlen"(i8* %"a.1")
  %"len2.3" = call i32 @"strlen"(i8* %"b.1")
  %"total_len.3" = add i32 %"len1.3", %"len2.3"
  %".57" = add i32 %"total_len.3", 1
  %"new_str_void.3" = call i8* @"malloc"(i32 %".57")
  %".58" = call i8* @"strcpy"(i8* %"new_str_void.3", i8* %"a.1")
  %".59" = call i8* @"strcat"(i8* %"new_str_void.3", i8* %"b.1")
  %"c.1" = load i8*, i8** %"c"
  %"len1.4" = call i32 @"strlen"(i8* %"new_str_void.3")
  %"len2.4" = call i32 @"strlen"(i8* %"c.1")
  %"total_len.4" = add i32 %"len1.4", %"len2.4"
  %".60" = add i32 %"total_len.4", 1
  %"new_str_void.4" = call i8* @"malloc"(i32 %".60")
  %".61" = call i8* @"strcpy"(i8* %"new_str_void.4", i8* %"new_str_void.3")
  %".62" = call i8* @"strcat"(i8* %"new_str_void.4", i8* %"c.1")
  %"d.1" = load i8*, i8** %"d"
  %"len1.5" = call i32 @"strlen"(i8* %"new_str_void.4")
  %"len2.5" = call i32 @"strlen"(i8* %"d.1")
  %"total_len.5" = add i32 %"len1.5", %"len2.5"
  %".63" = add i32 %"total_len.5", 1
  %"new_str_void.5" = call i8* @"malloc"(i32 %".63")
  %".64" = call i8* @"strcpy"(i8* %"new_str_void.5", i8* %"new_str_void.4")
  %".65" = call i8* @"strcat"(i8* %"new_str_void.5", i8* %"d.1")
  %".66" = bitcast [3 x i8]* @"fmt_.26" to i8*
  %".67" = call i32 (i8*, ...) @"printf"(i8* %".66", i8* %"new_str_void.5")
  %".68" = bitcast [2 x i8]* @"nl_.27" to i8*
  %".69" = call i32 (i8*, ...) @"printf"(i8* %".68")
  %".70" = bitcast [22 x i8]* @"str_.28" to i8*
  %".71" = bitcast [3 x i8]* @"fmt_.29" to i8*
  %".72" = call i32 (i8*, ...) @"printf"(i8* %".71", i8* %".70")
  %".73" = bitcast [2 x i8]* @"nl_.30" to i8*
  %".74" = call i32 (i8*, ...) @"printf"(i8* %".73")
  %"str_build" = alloca i8*
  %".75" = bitcast [1 x i8]* @"str_.31" to i8*
  store i8* %".75", i8** %"str_build"
  %"i" = alloca double
  store double 0x3ff0000000000000, double* %"i"
  br label %"while_cond"
while_cond:
  %"i.1" = load double, double* %"i"
  %"letmp" = fcmp ole double %"i.1", 0x4014000000000000
  br i1 %"letmp", label %"while_body", label %"while_merge"
while_body:
  %"str_build.1" = load i8*, i8** %"str_build"
  %".80" = bitcast [2 x i8]* @"str_.32" to i8*
  %"len1.6" = call i32 @"strlen"(i8* %"str_build.1")
  %"len2.6" = call i32 @"strlen"(i8* %".80")
  %"total_len.6" = add i32 %"len1.6", %"len2.6"
  %".81" = add i32 %"total_len.6", 1
  %"new_str_void.6" = call i8* @"malloc"(i32 %".81")
  %".82" = call i8* @"strcpy"(i8* %"new_str_void.6", i8* %"str_build.1")
  %".83" = call i8* @"strcat"(i8* %"new_str_void.6", i8* %".80")
  store i8* %"new_str_void.6", i8** %"str_build"
  %".85" = bitcast [6 x i8]* @"str_.33" to i8*
  %"i.2" = load double, double* %"i"
  %".86" = bitcast [2 x i8]* @"str_.34" to i8*
  %"str_build.2" = load i8*, i8** %"str_build"
  %".87" = bitcast [4 x i8]* @"fmt_.35" to i8*
  %".88" = call i32 (i8*, ...) @"printf"(i8* %".87", i8* %".85")
  call void @"minilua_print_number"(double %"i.2")
  %".90" = bitcast [2 x i8]* @"sp_.36" to i8*
  %".91" = call i32 (i8*, ...) @"printf"(i8* %".90")
  %".92" = bitcast [4 x i8]* @"fmt_.37" to i8*
  %".93" = call i32 (i8*, ...) @"printf"(i8* %".92", i8* %".86")
  %".94" = bitcast [3 x i8]* @"fmt_.38" to i8*
  %".95" = call i32 (i8*, ...) @"printf"(i8* %".94", i8* %"str_build.2")
  %".96" = bitcast [2 x i8]* @"nl_.39" to i8*
  %".97" = call i32 (i8*, ...) @"printf"(i8* %".96")
  %"i.3" = load double, double* %"i"
  %"addtmp" = fadd double %"i.3", 0x3ff0000000000000
  store double %"addtmp", double* %"i"
  br label %"while_cond"
while_merge:
  %".100" = bitcast [7 x i8]* @"str_.40" to i8*
  %"str_build.3" = load i8*, i8** %"str_build"
  %".101" = bitcast [4 x i8]* @"fmt_.41" to i8*
  %".102" = call i32 (i8*, ...) @"printf"(i8* %".101", i8* %".100")
  %".103" = bitcast [3 x i8]* @"fmt_.42" to i8*
  %".104" = call i32 (i8*, ...) @"printf"(i8* %".103", i8* %"str_build.3")
  %".105" = bitcast [2 x i8]* @"nl_.43" to i8*
  %".106" = call i32 (i8*, ...) @"printf"(i8* %".105")
  %".107" = bitcast [17 x i8]* @"str_.44" to i8*
  %".108" = bitcast [3 x i8]* @"fmt_.45" to i8*
  %".109" = call i32 (i8*, ...) @"printf"(i8* %".108", i8* %".107")
  %".110" = bitcast [2 x i8]* @"nl_.46" to i8*
  %".111" = call i32 (i8*, ...) @"printf"(i8* %".110")
  %"empty" = alloca i8*
  %".112" = bitcast [1 x i8]* @"str_.47" to i8*
  store i8* %".112", i8** %"empty"
  %"full" = alloca i8*
  %".114" = bitcast [6 x i8]* @"str_.48" to i8*
  store i8* %".114", i8** %"full"
  %".116" = bitcast [2 x i8]* @"str_.49" to i8*
  %"empty.1" = load i8*, i8** %"empty"
  %"len1.7" = call i32 @"strlen"(i8* %".116")
  %"len2.7" = call i32 @"strlen"(i8* %"empty.1")
  %"total_len.7" = add i32 %"len1.7", %"len2.7"
  %".117" = add i32 %"total_len.7", 1
  %"new_str_void.7" = call i8* @"malloc"(i32 %".117")
  %".118" = call i8* @"strcpy"(i8* %"new_str_void.7", i8* %".116")
  %".119" = call i8* @"strcat"(i8* %"new_str_void.7", i8* %"empty.1")
  %"full.1" = load i8*, i8** %"full"
  %"len1.8" = call i32 @"strlen"(i8* %"new_str_void.7")
  %"len2.8" = call i32 @"strlen"(i8* %"full.1")
  %"total_len.8" = add i32 %"len1.8", %"len2.8"
  %".120" = add i32 %"total_len.8", 1
  %"new_str_void.8" = call i8* @"malloc"(i32 %".120")
  %".121" = call i8* @"strcpy"(i8* %"new_str_void.8", i8* %"new_str_void.7")
  %".122" = call i8* @"strcat"(i8* %"new_str_void.8", i8* %"full.1")
  %".123" = bitcast [2 x i8]* @"str_.50" to i8*
  %"len1.9" = call i32 @"strlen"(i8* %"new_str_void.8")
  %"len2.9" = call i32 @"strlen"(i8* %".123")
  %"total_len.9" = add i32 %"len1.9", %"len2.9"
  %".124" = add i32 %"total_len.9", 1
  %"new_str_void.9" = call i8* @"malloc"(i32 %".124")
  %".125" = call i8* @"strcpy"(i8* %"new_str_void.9", i8* %"new_str_void.8")
  %".126" = call i8* @"strcat"(i8* %"new_str_void.9", i8* %".123")
  %".127" = bitcast [3 x i8]* @"fmt_.51" to i8*
  %".128" = call i32 (i8*, ...) @"printf"(i8* %".127", i8* %"new_str_void.9")
  %".129" = bitcast [2 x i8]* @"nl_.52" to i8*
  %".130" = call i32 (i8*, ...) @"printf"(i8* %".129")
  %".131" = bitcast [2 x i8]* @"str_.53" to i8*
  %"full.2" = load i8*, i8** %"full"
  %"len1.10" = call i32 @"strlen"(i8* %".131")
  %"len2.10" = call i32 @"strlen"(i8* %"full.2")
  %"total_len.10" = add i32 %"len1.10", %"len2.10"
  %".132" = add i32 %"total_len.10", 1
  %"new_str_void.10" = call i8* @"malloc"(i32 %".132")
  %".133" = call i8* @"strcpy"(i8* %"new_str_void.10", i8* %".131")
  %".134" = call i8* @"strcat"(i8* %"new_str_void.10", i8* %"full.2")
  %"empty.2" = load i8*, i8** %"empty"
  %"len1.11" = call i32 @"strlen"(i8* %"new_str_void.10")
  %"len2.11" = call i32 @"strlen"(i8* %"empty.2")
  %"total_len.11" = add i32 %"len1.11", %"len2.11"
  %".135" = add i32 %"total_len.11", 1
  %"new_str_void.11" = call i8* @"malloc"(i32 %".135")
  %".136" = call i8* @"strcpy"(i8* %"new_str_void.11", i8* %"new_str_void.10")
  %".137" = call i8* @"strcat"(i8* %"new_str_void.11", i8* %"empty.2")
  %".138" = bitcast [2 x i8]* @"str_.54" to i8*
  %"len1.12" = call i32 @"strlen"(i8* %"new_str_void.11")
  %"len2.12" = call i32 @"strlen"(i8* %".138")
  %"total_len.12" = add i32 %"len1.12", %"len2.12"
  %".139" = add i32 %"total_len.12", 1
  %"new_str_void.12" = call i8* @"malloc"(i32 %".139")
  %".140" = call i8* @"strcpy"(i8* %"new_str_void.12", i8* %"new_str_void.11")
  %".141" = call i8* @"strcat"(i8* %"new_str_void.12", i8* %".138")
  %".142" = bitcast [3 x i8]* @"fmt_.55" to i8*
  %".143" = call i32 (i8*, ...) @"printf"(i8* %".142", i8* %"new_str_void.12")
  %".144" = bitcast [2 x i8]* @"nl_.56" to i8*
  %".145" = call i32 (i8*, ...) @"printf"(i8* %".144")
  %"parte1" = alloca i8*
  %".146" = bitcast [8 x i8]* @"str_.57" to i8*
  store i8* %".146", i8** %"parte1"
  %"parte2" = alloca i8*
  %".148" = bitcast [8 x i8]* @"str_.58" to i8*
  store i8* %".148", i8** %"parte2"
  %"total" = alloca i8*
  %"parte1.1" = load i8*, i8** %"parte1"
  %".150" = bitcast [4 x i8]* @"str_.59" to i8*
  %"len1.13" = call i32 @"strlen"(i8* %"parte1.1")
  %"len2.13" = call i32 @"strlen"(i8* %".150")
  %"total_len.13" = add i32 %"len1.13", %"len2.13"
  %".151" = add i32 %"total_len.13", 1
  %"new_str_void.13" = call i8* @"malloc"(i32 %".151")
  %".152" = call i8* @"strcpy"(i8* %"new_str_void.13", i8* %"parte1.1")
  %".153" = call i8* @"strcat"(i8* %"new_str_void.13", i8* %".150")
  %"parte2.1" = load i8*, i8** %"parte2"
  %"len1.14" = call i32 @"strlen"(i8* %"new_str_void.13")
  %"len2.14" = call i32 @"strlen"(i8* %"parte2.1")
  %"total_len.14" = add i32 %"len1.14", %"len2.14"
  %".154" = add i32 %"total_len.14", 1
  %"new_str_void.14" = call i8* @"malloc"(i32 %".154")
  %".155" = call i8* @"strcpy"(i8* %"new_str_void.14", i8* %"new_str_void.13")
  %".156" = call i8* @"strcat"(i8* %"new_str_void.14", i8* %"parte2.1")
  store i8* %"new_str_void.14", i8** %"total"
  %".158" = bitcast [7 x i8]* @"str_.60" to i8*
  %"total.1" = load i8*, i8** %"total"
  %".159" = bitcast [4 x i8]* @"fmt_.61" to i8*
  %".160" = call i32 (i8*, ...) @"printf"(i8* %".159", i8* %".158")
  %".161" = bitcast [3 x i8]* @"fmt_.62" to i8*
  %".162" = call i32 (i8*, ...) @"printf"(i8* %".161", i8* %"total.1")
  %".163" = bitcast [2 x i8]* @"nl_.63" to i8*
  %".164" = call i32 (i8*, ...) @"printf"(i8* %".163")
  ret i32 0
}

@"str_.1" = internal constant [41 x i8] c"=== Teste 8: Concatenacao de Strings ===\00"
@"fmt_.2" = internal constant [3 x i8] c"%s\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"str_.4" = internal constant [13 x i8] c"1. Literais:\00"
@"fmt_.5" = internal constant [3 x i8] c"%s\00"
@"nl_.6" = internal constant [2 x i8] c"\0a\00"
@"str_.7" = internal constant [5 x i8] c"Ola \00"
@"str_.8" = internal constant [6 x i8] c"Mundo\00"
@"fmt_.9" = internal constant [3 x i8] c"%s\00"
@"nl_.10" = internal constant [2 x i8] c"\0a\00"
@"str_.11" = internal constant [14 x i8] c"2. Variaveis:\00"
@"fmt_.12" = internal constant [3 x i8] c"%s\00"
@"nl_.13" = internal constant [2 x i8] c"\0a\00"
@"str_.14" = internal constant [7 x i8] c"Inicio\00"
@"str_.15" = internal constant [4 x i8] c"Fim\00"
@"empty_string_const" = internal constant [1 x i8] c"\00"
@"str_.16" = internal constant [11 x i8] c" - Meio - \00"
@"fmt_.17" = internal constant [3 x i8] c"%s\00"
@"nl_.18" = internal constant [2 x i8] c"\0a\00"
@"str_.19" = internal constant [17 x i8] c"3. Encadeamento:\00"
@"fmt_.20" = internal constant [3 x i8] c"%s\00"
@"nl_.21" = internal constant [2 x i8] c"\0a\00"
@"str_.22" = internal constant [2 x i8] c"A\00"
@"str_.23" = internal constant [2 x i8] c"B\00"
@"str_.24" = internal constant [2 x i8] c"C\00"
@"str_.25" = internal constant [2 x i8] c"D\00"
@"fmt_.26" = internal constant [3 x i8] c"%s\00"
@"nl_.27" = internal constant [2 x i8] c"\0a\00"
@"str_.28" = internal constant [22 x i8] c"4. Loop (Construcao):\00"
@"fmt_.29" = internal constant [3 x i8] c"%s\00"
@"nl_.30" = internal constant [2 x i8] c"\0a\00"
@"str_.31" = internal constant [1 x i8] c"\00"
@"str_.32" = internal constant [2 x i8] c".\00"
@"str_.33" = internal constant [6 x i8] c"Passo\00"
@"str_.34" = internal constant [2 x i8] c":\00"
@"fmt_.35" = internal constant [4 x i8] c"%s \00"
@"sp_.36" = internal constant [2 x i8] c" \00"
@"fmt_.37" = internal constant [4 x i8] c"%s \00"
@"fmt_.38" = internal constant [3 x i8] c"%s\00"
@"nl_.39" = internal constant [2 x i8] c"\0a\00"
@"str_.40" = internal constant [7 x i8] c"Final:\00"
@"fmt_.41" = internal constant [4 x i8] c"%s \00"
@"fmt_.42" = internal constant [3 x i8] c"%s\00"
@"nl_.43" = internal constant [2 x i8] c"\0a\00"
@"str_.44" = internal constant [17 x i8] c"5. String Vazia:\00"
@"fmt_.45" = internal constant [3 x i8] c"%s\00"
@"nl_.46" = internal constant [2 x i8] c"\0a\00"
@"str_.47" = internal constant [1 x i8] c"\00"
@"str_.48" = internal constant [6 x i8] c"Cheio\00"
@"str_.49" = internal constant [2 x i8] c"'\00"
@"str_.50" = internal constant [2 x i8] c"'\00"
@"fmt_.51" = internal constant [3 x i8] c"%s\00"
@"nl_.52" = internal constant [2 x i8] c"\0a\00"
@"str_.53" = internal constant [2 x i8] c"'\00"
@"str_.54" = internal constant [2 x i8] c"'\00"
@"fmt_.55" = internal constant [3 x i8] c"%s\00"
@"nl_.56" = internal constant [2 x i8] c"\0a\00"
@"str_.57" = internal constant [8 x i8] c"Parte 1\00"
@"str_.58" = internal constant [8 x i8] c"Parte 2\00"
@"str_.59" = internal constant [4 x i8] c" e \00"
@"str_.60" = internal constant [7 x i8] c"Total:\00"
@"fmt_.61" = internal constant [4 x i8] c"%s \00"
@"fmt_.62" = internal constant [3 x i8] c"%s\00"
@"nl_.63" = internal constant [2 x i8] c"\0a\00"