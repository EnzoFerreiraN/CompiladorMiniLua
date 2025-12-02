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
  call void @"minilua_print_number"(double %"globalVar.1")
  %".10" = bitcast [2 x i8]* @"nl_.4" to i8*
  %".11" = call i32 (i8*, ...) @"printf"(i8* %".10")
  %"shadowVar.1" = load double, double* %"shadowVar"
  call void @"minilua_print_number"(double %"shadowVar.1")
  %".13" = bitcast [2 x i8]* @"nl_.5" to i8*
  %".14" = call i32 (i8*, ...) @"printf"(i8* %".13")
  br i1 1, label %"then_0", label %"else_0"
if_merge:
  %".38" = bitcast [9 x i8]* @"str_.13" to i8*
  %".39" = bitcast [3 x i8]* @"fmt_.14" to i8*
  %".40" = call i32 (i8*, ...) @"printf"(i8* %".39", i8* %".38")
  %".41" = bitcast [2 x i8]* @"nl_.15" to i8*
  %".42" = call i32 (i8*, ...) @"printf"(i8* %".41")
  %"shadowVar.5" = load double, double* %"shadowVar"
  call void @"minilua_print_number"(double %"shadowVar.5")
  %".44" = bitcast [2 x i8]* @"nl_.16" to i8*
  %".45" = call i32 (i8*, ...) @"printf"(i8* %".44")
  br i1 0, label %"then_0.1", label %"else_0.1"
then_0:
  %"localVarIf" = alloca double
  store double 0x4024000000000000, double* %"localVarIf"
  %"shadowVar.2" = alloca double
  store double 0x4000000000000000, double* %"shadowVar.2"
  %".18" = bitcast [14 x i8]* @"str_.6" to i8*
  %".19" = bitcast [3 x i8]* @"fmt_.7" to i8*
  %".20" = call i32 (i8*, ...) @"printf"(i8* %".19", i8* %".18")
  %".21" = bitcast [2 x i8]* @"nl_.8" to i8*
  %".22" = call i32 (i8*, ...) @"printf"(i8* %".21")
  %"localVarIf.1" = load double, double* %"localVarIf"
  call void @"minilua_print_number"(double %"localVarIf.1")
  %".24" = bitcast [2 x i8]* @"nl_.9" to i8*
  %".25" = call i32 (i8*, ...) @"printf"(i8* %".24")
  %"shadowVar.3" = load double, double* %"shadowVar.2"
  call void @"minilua_print_number"(double %"shadowVar.3")
  %".27" = bitcast [2 x i8]* @"nl_.10" to i8*
  %".28" = call i32 (i8*, ...) @"printf"(i8* %".27")
  %"globalVar.2" = load double, double* %"globalVar"
  call void @"minilua_print_number"(double %"globalVar.2")
  %".30" = bitcast [2 x i8]* @"nl_.11" to i8*
  %".31" = call i32 (i8*, ...) @"printf"(i8* %".30")
  store double 0x4034000000000000, double* %"shadowVar.2"
  %"shadowVar.4" = load double, double* %"shadowVar.2"
  call void @"minilua_print_number"(double %"shadowVar.4")
  %".34" = bitcast [2 x i8]* @"nl_.12" to i8*
  %".35" = call i32 (i8*, ...) @"printf"(i8* %".34")
  br label %"if_merge"
else_0:
  br label %"if_merge"
if_merge.1:
  %".74" = bitcast [13 x i8]* @"str_.28" to i8*
  %".75" = bitcast [3 x i8]* @"fmt_.29" to i8*
  %".76" = call i32 (i8*, ...) @"printf"(i8* %".75", i8* %".74")
  %".77" = bitcast [2 x i8]* @"nl_.30" to i8*
  %".78" = call i32 (i8*, ...) @"printf"(i8* %".77")
  %"shadowVar.8" = load double, double* %"shadowVar"
  call void @"minilua_print_number"(double %"shadowVar.8")
  %".80" = bitcast [2 x i8]* @"nl_.31" to i8*
  %".81" = call i32 (i8*, ...) @"printf"(i8* %".80")
  br i1 0, label %"then_0.2", label %"else_0.2"
then_0.1:
  %".47" = bitcast [21 x i8]* @"str_.17" to i8*
  %".48" = bitcast [3 x i8]* @"fmt_.18" to i8*
  %".49" = call i32 (i8*, ...) @"printf"(i8* %".48", i8* %".47")
  %".50" = bitcast [2 x i8]* @"nl_.19" to i8*
  %".51" = call i32 (i8*, ...) @"printf"(i8* %".50")
  br label %"if_merge.1"
else_0.1:
  br i1 1, label %"then_1", label %"else_1"
then_1:
  %"localVarElseIf" = alloca double
  store double 0x403e000000000000, double* %"localVarElseIf"
  %"shadowVar.6" = alloca double
  store double 0x4008000000000000, double* %"shadowVar.6"
  %".56" = bitcast [18 x i8]* @"str_.20" to i8*
  %".57" = bitcast [3 x i8]* @"fmt_.21" to i8*
  %".58" = call i32 (i8*, ...) @"printf"(i8* %".57", i8* %".56")
  %".59" = bitcast [2 x i8]* @"nl_.22" to i8*
  %".60" = call i32 (i8*, ...) @"printf"(i8* %".59")
  %"localVarElseIf.1" = load double, double* %"localVarElseIf"
  call void @"minilua_print_number"(double %"localVarElseIf.1")
  %".62" = bitcast [2 x i8]* @"nl_.23" to i8*
  %".63" = call i32 (i8*, ...) @"printf"(i8* %".62")
  %"shadowVar.7" = load double, double* %"shadowVar.6"
  call void @"minilua_print_number"(double %"shadowVar.7")
  %".65" = bitcast [2 x i8]* @"nl_.24" to i8*
  %".66" = call i32 (i8*, ...) @"printf"(i8* %".65")
  br label %"if_merge.1"
else_1:
  %".68" = bitcast [21 x i8]* @"str_.25" to i8*
  %".69" = bitcast [3 x i8]* @"fmt_.26" to i8*
  %".70" = call i32 (i8*, ...) @"printf"(i8* %".69", i8* %".68")
  %".71" = bitcast [2 x i8]* @"nl_.27" to i8*
  %".72" = call i32 (i8*, ...) @"printf"(i8* %".71")
  br label %"if_merge.1"
if_merge.2:
  %".103" = bitcast [11 x i8]* @"str_.40" to i8*
  %".104" = bitcast [3 x i8]* @"fmt_.41" to i8*
  %".105" = call i32 (i8*, ...) @"printf"(i8* %".104", i8* %".103")
  %".106" = bitcast [2 x i8]* @"nl_.42" to i8*
  %".107" = call i32 (i8*, ...) @"printf"(i8* %".106")
  %"shadowVar.11" = load double, double* %"shadowVar"
  call void @"minilua_print_number"(double %"shadowVar.11")
  %".109" = bitcast [2 x i8]* @"nl_.43" to i8*
  %".110" = call i32 (i8*, ...) @"printf"(i8* %".109")
  ret i32 0
then_0.2:
  %".83" = bitcast [21 x i8]* @"str_.32" to i8*
  %".84" = bitcast [3 x i8]* @"fmt_.33" to i8*
  %".85" = call i32 (i8*, ...) @"printf"(i8* %".84", i8* %".83")
  %".86" = bitcast [2 x i8]* @"nl_.34" to i8*
  %".87" = call i32 (i8*, ...) @"printf"(i8* %".86")
  br label %"if_merge.2"
else_0.2:
  %"localVarElse" = alloca double
  store double 0x4049000000000000, double* %"localVarElse"
  %"shadowVar.9" = alloca double
  store double 0x4010000000000000, double* %"shadowVar.9"
  %".91" = bitcast [16 x i8]* @"str_.35" to i8*
  %".92" = bitcast [3 x i8]* @"fmt_.36" to i8*
  %".93" = call i32 (i8*, ...) @"printf"(i8* %".92", i8* %".91")
  %".94" = bitcast [2 x i8]* @"nl_.37" to i8*
  %".95" = call i32 (i8*, ...) @"printf"(i8* %".94")
  %"localVarElse.1" = load double, double* %"localVarElse"
  call void @"minilua_print_number"(double %"localVarElse.1")
  %".97" = bitcast [2 x i8]* @"nl_.38" to i8*
  %".98" = call i32 (i8*, ...) @"printf"(i8* %".97")
  %"shadowVar.10" = load double, double* %"shadowVar.9"
  call void @"minilua_print_number"(double %"shadowVar.10")
  %".100" = bitcast [2 x i8]* @"nl_.39" to i8*
  %".101" = call i32 (i8*, ...) @"printf"(i8* %".100")
  br label %"if_merge.2"
}

@"str_.1" = internal constant [8 x i8] c"Inicio:\00"
@"fmt_.2" = internal constant [3 x i8] c"%s\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"nl_.4" = internal constant [2 x i8] c"\0a\00"
@"nl_.5" = internal constant [2 x i8] c"\0a\00"
@"str_.6" = internal constant [14 x i8] c"Dentro do IF:\00"
@"fmt_.7" = internal constant [3 x i8] c"%s\00"
@"nl_.8" = internal constant [2 x i8] c"\0a\00"
@"nl_.9" = internal constant [2 x i8] c"\0a\00"
@"nl_.10" = internal constant [2 x i8] c"\0a\00"
@"nl_.11" = internal constant [2 x i8] c"\0a\00"
@"nl_.12" = internal constant [2 x i8] c"\0a\00"
@"str_.13" = internal constant [9 x i8] c"Apos IF:\00"
@"fmt_.14" = internal constant [3 x i8] c"%s\00"
@"nl_.15" = internal constant [2 x i8] c"\0a\00"
@"nl_.16" = internal constant [2 x i8] c"\0a\00"
@"str_.17" = internal constant [21 x i8] c"Nao deve entrar aqui\00"
@"fmt_.18" = internal constant [3 x i8] c"%s\00"
@"nl_.19" = internal constant [2 x i8] c"\0a\00"
@"str_.20" = internal constant [18 x i8] c"Dentro do ELSEIF:\00"
@"fmt_.21" = internal constant [3 x i8] c"%s\00"
@"nl_.22" = internal constant [2 x i8] c"\0a\00"
@"nl_.23" = internal constant [2 x i8] c"\0a\00"
@"nl_.24" = internal constant [2 x i8] c"\0a\00"
@"str_.25" = internal constant [21 x i8] c"Nao deve entrar aqui\00"
@"fmt_.26" = internal constant [3 x i8] c"%s\00"
@"nl_.27" = internal constant [2 x i8] c"\0a\00"
@"str_.28" = internal constant [13 x i8] c"Apos ELSEIF:\00"
@"fmt_.29" = internal constant [3 x i8] c"%s\00"
@"nl_.30" = internal constant [2 x i8] c"\0a\00"
@"nl_.31" = internal constant [2 x i8] c"\0a\00"
@"str_.32" = internal constant [21 x i8] c"Nao deve entrar aqui\00"
@"fmt_.33" = internal constant [3 x i8] c"%s\00"
@"nl_.34" = internal constant [2 x i8] c"\0a\00"
@"str_.35" = internal constant [16 x i8] c"Dentro do ELSE:\00"
@"fmt_.36" = internal constant [3 x i8] c"%s\00"
@"nl_.37" = internal constant [2 x i8] c"\0a\00"
@"nl_.38" = internal constant [2 x i8] c"\0a\00"
@"nl_.39" = internal constant [2 x i8] c"\0a\00"
@"str_.40" = internal constant [11 x i8] c"Apos ELSE:\00"
@"fmt_.41" = internal constant [3 x i8] c"%s\00"
@"nl_.42" = internal constant [2 x i8] c"\0a\00"
@"nl_.43" = internal constant [2 x i8] c"\0a\00"