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

define i32 @"main"()
{
entry:
  %"globalVar" = alloca double
  store double 0x4059000000000000, double* %"globalVar"
  %"shadowVar" = alloca double
  store double 0x3ff0000000000000, double* %"shadowVar"
  %".4" = bitcast [8 x i8]* @"str_.1" to i8*
  %".5" = bitcast [3 x i8]* @"fmt_.2" to i8*
  %".6" = call i32 (i8*, ...) @"printf"(i8* %".5", i8* %".4")
  %".7" = bitcast [2 x i8]* @"nl_.3" to i8*
  %".8" = call i32 (i8*, ...) @"printf"(i8* %".7")
  %"globalVar.1" = load double, double* %"globalVar"
  %".9" = bitcast [5 x i8]* @"fmt_.4" to i8*
  %".10" = call i32 (i8*, ...) @"printf"(i8* %".9", double %"globalVar.1")
  %".11" = bitcast [2 x i8]* @"nl_.5" to i8*
  %".12" = call i32 (i8*, ...) @"printf"(i8* %".11")
  %"shadowVar.1" = load double, double* %"shadowVar"
  %".13" = bitcast [5 x i8]* @"fmt_.6" to i8*
  %".14" = call i32 (i8*, ...) @"printf"(i8* %".13", double %"shadowVar.1")
  %".15" = bitcast [2 x i8]* @"nl_.7" to i8*
  %".16" = call i32 (i8*, ...) @"printf"(i8* %".15")
  br i1 1, label %"then_0", label %"else_0"
if_merge:
  %".44" = bitcast [9 x i8]* @"str_.19" to i8*
  %".45" = bitcast [3 x i8]* @"fmt_.20" to i8*
  %".46" = call i32 (i8*, ...) @"printf"(i8* %".45", i8* %".44")
  %".47" = bitcast [2 x i8]* @"nl_.21" to i8*
  %".48" = call i32 (i8*, ...) @"printf"(i8* %".47")
  %"shadowVar.5" = load double, double* %"shadowVar"
  %".49" = bitcast [5 x i8]* @"fmt_.22" to i8*
  %".50" = call i32 (i8*, ...) @"printf"(i8* %".49", double %"shadowVar.5")
  %".51" = bitcast [2 x i8]* @"nl_.23" to i8*
  %".52" = call i32 (i8*, ...) @"printf"(i8* %".51")
  br i1 0, label %"then_0.1", label %"else_0.1"
then_0:
  %"localVarIf" = alloca double
  store double 0x4024000000000000, double* %"localVarIf"
  %"shadowVar.2" = alloca double
  store double 0x4000000000000000, double* %"shadowVar.2"
  %".20" = bitcast [14 x i8]* @"str_.8" to i8*
  %".21" = bitcast [3 x i8]* @"fmt_.9" to i8*
  %".22" = call i32 (i8*, ...) @"printf"(i8* %".21", i8* %".20")
  %".23" = bitcast [2 x i8]* @"nl_.10" to i8*
  %".24" = call i32 (i8*, ...) @"printf"(i8* %".23")
  %"localVarIf.1" = load double, double* %"localVarIf"
  %".25" = bitcast [5 x i8]* @"fmt_.11" to i8*
  %".26" = call i32 (i8*, ...) @"printf"(i8* %".25", double %"localVarIf.1")
  %".27" = bitcast [2 x i8]* @"nl_.12" to i8*
  %".28" = call i32 (i8*, ...) @"printf"(i8* %".27")
  %"shadowVar.3" = load double, double* %"shadowVar.2"
  %".29" = bitcast [5 x i8]* @"fmt_.13" to i8*
  %".30" = call i32 (i8*, ...) @"printf"(i8* %".29", double %"shadowVar.3")
  %".31" = bitcast [2 x i8]* @"nl_.14" to i8*
  %".32" = call i32 (i8*, ...) @"printf"(i8* %".31")
  %"globalVar.2" = load double, double* %"globalVar"
  %".33" = bitcast [5 x i8]* @"fmt_.15" to i8*
  %".34" = call i32 (i8*, ...) @"printf"(i8* %".33", double %"globalVar.2")
  %".35" = bitcast [2 x i8]* @"nl_.16" to i8*
  %".36" = call i32 (i8*, ...) @"printf"(i8* %".35")
  store double 0x4034000000000000, double* %"shadowVar.2"
  %"shadowVar.4" = load double, double* %"shadowVar.2"
  %".38" = bitcast [5 x i8]* @"fmt_.17" to i8*
  %".39" = call i32 (i8*, ...) @"printf"(i8* %".38", double %"shadowVar.4")
  %".40" = bitcast [2 x i8]* @"nl_.18" to i8*
  %".41" = call i32 (i8*, ...) @"printf"(i8* %".40")
  br label %"if_merge"
else_0:
  br label %"if_merge"
if_merge.1:
  %".83" = bitcast [13 x i8]* @"str_.37" to i8*
  %".84" = bitcast [3 x i8]* @"fmt_.38" to i8*
  %".85" = call i32 (i8*, ...) @"printf"(i8* %".84", i8* %".83")
  %".86" = bitcast [2 x i8]* @"nl_.39" to i8*
  %".87" = call i32 (i8*, ...) @"printf"(i8* %".86")
  %"shadowVar.8" = load double, double* %"shadowVar"
  %".88" = bitcast [5 x i8]* @"fmt_.40" to i8*
  %".89" = call i32 (i8*, ...) @"printf"(i8* %".88", double %"shadowVar.8")
  %".90" = bitcast [2 x i8]* @"nl_.41" to i8*
  %".91" = call i32 (i8*, ...) @"printf"(i8* %".90")
  br i1 0, label %"then_0.2", label %"else_0.2"
then_0.1:
  %".54" = bitcast [21 x i8]* @"str_.24" to i8*
  %".55" = bitcast [3 x i8]* @"fmt_.25" to i8*
  %".56" = call i32 (i8*, ...) @"printf"(i8* %".55", i8* %".54")
  %".57" = bitcast [2 x i8]* @"nl_.26" to i8*
  %".58" = call i32 (i8*, ...) @"printf"(i8* %".57")
  br label %"if_merge.1"
else_0.1:
  br i1 1, label %"then_1", label %"else_1"
then_1:
  %"localVarElseIf" = alloca double
  store double 0x403e000000000000, double* %"localVarElseIf"
  %"shadowVar.6" = alloca double
  store double 0x4008000000000000, double* %"shadowVar.6"
  %".63" = bitcast [18 x i8]* @"str_.27" to i8*
  %".64" = bitcast [3 x i8]* @"fmt_.28" to i8*
  %".65" = call i32 (i8*, ...) @"printf"(i8* %".64", i8* %".63")
  %".66" = bitcast [2 x i8]* @"nl_.29" to i8*
  %".67" = call i32 (i8*, ...) @"printf"(i8* %".66")
  %"localVarElseIf.1" = load double, double* %"localVarElseIf"
  %".68" = bitcast [5 x i8]* @"fmt_.30" to i8*
  %".69" = call i32 (i8*, ...) @"printf"(i8* %".68", double %"localVarElseIf.1")
  %".70" = bitcast [2 x i8]* @"nl_.31" to i8*
  %".71" = call i32 (i8*, ...) @"printf"(i8* %".70")
  %"shadowVar.7" = load double, double* %"shadowVar.6"
  %".72" = bitcast [5 x i8]* @"fmt_.32" to i8*
  %".73" = call i32 (i8*, ...) @"printf"(i8* %".72", double %"shadowVar.7")
  %".74" = bitcast [2 x i8]* @"nl_.33" to i8*
  %".75" = call i32 (i8*, ...) @"printf"(i8* %".74")
  br label %"if_merge.1"
else_1:
  %".77" = bitcast [21 x i8]* @"str_.34" to i8*
  %".78" = bitcast [3 x i8]* @"fmt_.35" to i8*
  %".79" = call i32 (i8*, ...) @"printf"(i8* %".78", i8* %".77")
  %".80" = bitcast [2 x i8]* @"nl_.36" to i8*
  %".81" = call i32 (i8*, ...) @"printf"(i8* %".80")
  br label %"if_merge.1"
if_merge.2:
  %".115" = bitcast [11 x i8]* @"str_.52" to i8*
  %".116" = bitcast [3 x i8]* @"fmt_.53" to i8*
  %".117" = call i32 (i8*, ...) @"printf"(i8* %".116", i8* %".115")
  %".118" = bitcast [2 x i8]* @"nl_.54" to i8*
  %".119" = call i32 (i8*, ...) @"printf"(i8* %".118")
  %"shadowVar.11" = load double, double* %"shadowVar"
  %".120" = bitcast [5 x i8]* @"fmt_.55" to i8*
  %".121" = call i32 (i8*, ...) @"printf"(i8* %".120", double %"shadowVar.11")
  %".122" = bitcast [2 x i8]* @"nl_.56" to i8*
  %".123" = call i32 (i8*, ...) @"printf"(i8* %".122")
  ret i32 0
then_0.2:
  %".93" = bitcast [21 x i8]* @"str_.42" to i8*
  %".94" = bitcast [3 x i8]* @"fmt_.43" to i8*
  %".95" = call i32 (i8*, ...) @"printf"(i8* %".94", i8* %".93")
  %".96" = bitcast [2 x i8]* @"nl_.44" to i8*
  %".97" = call i32 (i8*, ...) @"printf"(i8* %".96")
  br label %"if_merge.2"
else_0.2:
  %"localVarElse" = alloca double
  store double 0x4049000000000000, double* %"localVarElse"
  %"shadowVar.9" = alloca double
  store double 0x4010000000000000, double* %"shadowVar.9"
  %".101" = bitcast [16 x i8]* @"str_.45" to i8*
  %".102" = bitcast [3 x i8]* @"fmt_.46" to i8*
  %".103" = call i32 (i8*, ...) @"printf"(i8* %".102", i8* %".101")
  %".104" = bitcast [2 x i8]* @"nl_.47" to i8*
  %".105" = call i32 (i8*, ...) @"printf"(i8* %".104")
  %"localVarElse.1" = load double, double* %"localVarElse"
  %".106" = bitcast [5 x i8]* @"fmt_.48" to i8*
  %".107" = call i32 (i8*, ...) @"printf"(i8* %".106", double %"localVarElse.1")
  %".108" = bitcast [2 x i8]* @"nl_.49" to i8*
  %".109" = call i32 (i8*, ...) @"printf"(i8* %".108")
  %"shadowVar.10" = load double, double* %"shadowVar.9"
  %".110" = bitcast [5 x i8]* @"fmt_.50" to i8*
  %".111" = call i32 (i8*, ...) @"printf"(i8* %".110", double %"shadowVar.10")
  %".112" = bitcast [2 x i8]* @"nl_.51" to i8*
  %".113" = call i32 (i8*, ...) @"printf"(i8* %".112")
  br label %"if_merge.2"
}

@"str_.1" = internal constant [8 x i8] c"Inicio:\00"
@"fmt_.2" = internal constant [3 x i8] c"%s\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"fmt_.4" = internal constant [5 x i8] c"%.2f\00"
@"nl_.5" = internal constant [2 x i8] c"\0a\00"
@"fmt_.6" = internal constant [5 x i8] c"%.2f\00"
@"nl_.7" = internal constant [2 x i8] c"\0a\00"
@"str_.8" = internal constant [14 x i8] c"Dentro do IF:\00"
@"fmt_.9" = internal constant [3 x i8] c"%s\00"
@"nl_.10" = internal constant [2 x i8] c"\0a\00"
@"fmt_.11" = internal constant [5 x i8] c"%.2f\00"
@"nl_.12" = internal constant [2 x i8] c"\0a\00"
@"fmt_.13" = internal constant [5 x i8] c"%.2f\00"
@"nl_.14" = internal constant [2 x i8] c"\0a\00"
@"fmt_.15" = internal constant [5 x i8] c"%.2f\00"
@"nl_.16" = internal constant [2 x i8] c"\0a\00"
@"fmt_.17" = internal constant [5 x i8] c"%.2f\00"
@"nl_.18" = internal constant [2 x i8] c"\0a\00"
@"str_.19" = internal constant [9 x i8] c"Apos IF:\00"
@"fmt_.20" = internal constant [3 x i8] c"%s\00"
@"nl_.21" = internal constant [2 x i8] c"\0a\00"
@"fmt_.22" = internal constant [5 x i8] c"%.2f\00"
@"nl_.23" = internal constant [2 x i8] c"\0a\00"
@"str_.24" = internal constant [21 x i8] c"Nao deve entrar aqui\00"
@"fmt_.25" = internal constant [3 x i8] c"%s\00"
@"nl_.26" = internal constant [2 x i8] c"\0a\00"
@"str_.27" = internal constant [18 x i8] c"Dentro do ELSEIF:\00"
@"fmt_.28" = internal constant [3 x i8] c"%s\00"
@"nl_.29" = internal constant [2 x i8] c"\0a\00"
@"fmt_.30" = internal constant [5 x i8] c"%.2f\00"
@"nl_.31" = internal constant [2 x i8] c"\0a\00"
@"fmt_.32" = internal constant [5 x i8] c"%.2f\00"
@"nl_.33" = internal constant [2 x i8] c"\0a\00"
@"str_.34" = internal constant [21 x i8] c"Nao deve entrar aqui\00"
@"fmt_.35" = internal constant [3 x i8] c"%s\00"
@"nl_.36" = internal constant [2 x i8] c"\0a\00"
@"str_.37" = internal constant [13 x i8] c"Apos ELSEIF:\00"
@"fmt_.38" = internal constant [3 x i8] c"%s\00"
@"nl_.39" = internal constant [2 x i8] c"\0a\00"
@"fmt_.40" = internal constant [5 x i8] c"%.2f\00"
@"nl_.41" = internal constant [2 x i8] c"\0a\00"
@"str_.42" = internal constant [21 x i8] c"Nao deve entrar aqui\00"
@"fmt_.43" = internal constant [3 x i8] c"%s\00"
@"nl_.44" = internal constant [2 x i8] c"\0a\00"
@"str_.45" = internal constant [16 x i8] c"Dentro do ELSE:\00"
@"fmt_.46" = internal constant [3 x i8] c"%s\00"
@"nl_.47" = internal constant [2 x i8] c"\0a\00"
@"fmt_.48" = internal constant [5 x i8] c"%.2f\00"
@"nl_.49" = internal constant [2 x i8] c"\0a\00"
@"fmt_.50" = internal constant [5 x i8] c"%.2f\00"
@"nl_.51" = internal constant [2 x i8] c"\0a\00"
@"str_.52" = internal constant [11 x i8] c"Apos ELSE:\00"
@"fmt_.53" = internal constant [3 x i8] c"%s\00"
@"nl_.54" = internal constant [2 x i8] c"\0a\00"
@"fmt_.55" = internal constant [5 x i8] c"%.2f\00"
@"nl_.56" = internal constant [2 x i8] c"\0a\00"