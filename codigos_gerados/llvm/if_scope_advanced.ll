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
  %".9" = fptosi double %"globalVar.1" to i64
  %".10" = sitofp i64 %".9" to double
  %"is_int" = fcmp oeq double %"globalVar.1", %".10"
  br i1 %"is_int", label %"print_int", label %"print_float"
print_int:
  %".12" = bitcast [5 x i8]* @"fmt_int_.4" to i8*
  %".13" = call i32 (i8*, ...) @"printf"(i8* %".12", i64 %".9")
  br label %"print_merge"
print_float:
  %".15" = bitcast [6 x i8]* @"fmt_flt_.5" to i8*
  %".16" = call i32 (i8*, ...) @"printf"(i8* %".15", double %"globalVar.1")
  br label %"print_merge"
print_merge:
  %".18" = bitcast [2 x i8]* @"nl_.6" to i8*
  %".19" = call i32 (i8*, ...) @"printf"(i8* %".18")
  %"shadowVar.1" = load double, double* %"shadowVar"
  %".20" = fptosi double %"shadowVar.1" to i64
  %".21" = sitofp i64 %".20" to double
  %"is_int.1" = fcmp oeq double %"shadowVar.1", %".21"
  br i1 %"is_int.1", label %"print_int.1", label %"print_float.1"
print_int.1:
  %".23" = bitcast [5 x i8]* @"fmt_int_.7" to i8*
  %".24" = call i32 (i8*, ...) @"printf"(i8* %".23", i64 %".20")
  br label %"print_merge.1"
print_float.1:
  %".26" = bitcast [6 x i8]* @"fmt_flt_.8" to i8*
  %".27" = call i32 (i8*, ...) @"printf"(i8* %".26", double %"shadowVar.1")
  br label %"print_merge.1"
print_merge.1:
  %".29" = bitcast [2 x i8]* @"nl_.9" to i8*
  %".30" = call i32 (i8*, ...) @"printf"(i8* %".29")
  br i1 1, label %"then_0", label %"else_0"
if_merge:
  %".86" = bitcast [9 x i8]* @"str_.25" to i8*
  %".87" = bitcast [3 x i8]* @"fmt_.26" to i8*
  %".88" = call i32 (i8*, ...) @"printf"(i8* %".87", i8* %".86")
  %".89" = bitcast [2 x i8]* @"nl_.27" to i8*
  %".90" = call i32 (i8*, ...) @"printf"(i8* %".89")
  %"shadowVar.5" = load double, double* %"shadowVar"
  %".91" = fptosi double %"shadowVar.5" to i64
  %".92" = sitofp i64 %".91" to double
  %"is_int.6" = fcmp oeq double %"shadowVar.5", %".92"
  br i1 %"is_int.6", label %"print_int.6", label %"print_float.6"
then_0:
  %"localVarIf" = alloca double
  store double 0x4024000000000000, double* %"localVarIf"
  %"shadowVar.2" = alloca double
  store double 0x4000000000000000, double* %"shadowVar.2"
  %".34" = bitcast [14 x i8]* @"str_.10" to i8*
  %".35" = bitcast [3 x i8]* @"fmt_.11" to i8*
  %".36" = call i32 (i8*, ...) @"printf"(i8* %".35", i8* %".34")
  %".37" = bitcast [2 x i8]* @"nl_.12" to i8*
  %".38" = call i32 (i8*, ...) @"printf"(i8* %".37")
  %"localVarIf.1" = load double, double* %"localVarIf"
  %".39" = fptosi double %"localVarIf.1" to i64
  %".40" = sitofp i64 %".39" to double
  %"is_int.2" = fcmp oeq double %"localVarIf.1", %".40"
  br i1 %"is_int.2", label %"print_int.2", label %"print_float.2"
else_0:
  br label %"if_merge"
print_int.2:
  %".42" = bitcast [5 x i8]* @"fmt_int_.13" to i8*
  %".43" = call i32 (i8*, ...) @"printf"(i8* %".42", i64 %".39")
  br label %"print_merge.2"
print_float.2:
  %".45" = bitcast [6 x i8]* @"fmt_flt_.14" to i8*
  %".46" = call i32 (i8*, ...) @"printf"(i8* %".45", double %"localVarIf.1")
  br label %"print_merge.2"
print_merge.2:
  %".48" = bitcast [2 x i8]* @"nl_.15" to i8*
  %".49" = call i32 (i8*, ...) @"printf"(i8* %".48")
  %"shadowVar.3" = load double, double* %"shadowVar.2"
  %".50" = fptosi double %"shadowVar.3" to i64
  %".51" = sitofp i64 %".50" to double
  %"is_int.3" = fcmp oeq double %"shadowVar.3", %".51"
  br i1 %"is_int.3", label %"print_int.3", label %"print_float.3"
print_int.3:
  %".53" = bitcast [5 x i8]* @"fmt_int_.16" to i8*
  %".54" = call i32 (i8*, ...) @"printf"(i8* %".53", i64 %".50")
  br label %"print_merge.3"
print_float.3:
  %".56" = bitcast [6 x i8]* @"fmt_flt_.17" to i8*
  %".57" = call i32 (i8*, ...) @"printf"(i8* %".56", double %"shadowVar.3")
  br label %"print_merge.3"
print_merge.3:
  %".59" = bitcast [2 x i8]* @"nl_.18" to i8*
  %".60" = call i32 (i8*, ...) @"printf"(i8* %".59")
  %"globalVar.2" = load double, double* %"globalVar"
  %".61" = fptosi double %"globalVar.2" to i64
  %".62" = sitofp i64 %".61" to double
  %"is_int.4" = fcmp oeq double %"globalVar.2", %".62"
  br i1 %"is_int.4", label %"print_int.4", label %"print_float.4"
print_int.4:
  %".64" = bitcast [5 x i8]* @"fmt_int_.19" to i8*
  %".65" = call i32 (i8*, ...) @"printf"(i8* %".64", i64 %".61")
  br label %"print_merge.4"
print_float.4:
  %".67" = bitcast [6 x i8]* @"fmt_flt_.20" to i8*
  %".68" = call i32 (i8*, ...) @"printf"(i8* %".67", double %"globalVar.2")
  br label %"print_merge.4"
print_merge.4:
  %".70" = bitcast [2 x i8]* @"nl_.21" to i8*
  %".71" = call i32 (i8*, ...) @"printf"(i8* %".70")
  store double 0x4034000000000000, double* %"shadowVar.2"
  %"shadowVar.4" = load double, double* %"shadowVar.2"
  %".73" = fptosi double %"shadowVar.4" to i64
  %".74" = sitofp i64 %".73" to double
  %"is_int.5" = fcmp oeq double %"shadowVar.4", %".74"
  br i1 %"is_int.5", label %"print_int.5", label %"print_float.5"
print_int.5:
  %".76" = bitcast [5 x i8]* @"fmt_int_.22" to i8*
  %".77" = call i32 (i8*, ...) @"printf"(i8* %".76", i64 %".73")
  br label %"print_merge.5"
print_float.5:
  %".79" = bitcast [6 x i8]* @"fmt_flt_.23" to i8*
  %".80" = call i32 (i8*, ...) @"printf"(i8* %".79", double %"shadowVar.4")
  br label %"print_merge.5"
print_merge.5:
  %".82" = bitcast [2 x i8]* @"nl_.24" to i8*
  %".83" = call i32 (i8*, ...) @"printf"(i8* %".82")
  br label %"if_merge"
print_int.6:
  %".94" = bitcast [5 x i8]* @"fmt_int_.28" to i8*
  %".95" = call i32 (i8*, ...) @"printf"(i8* %".94", i64 %".91")
  br label %"print_merge.6"
print_float.6:
  %".97" = bitcast [6 x i8]* @"fmt_flt_.29" to i8*
  %".98" = call i32 (i8*, ...) @"printf"(i8* %".97", double %"shadowVar.5")
  br label %"print_merge.6"
print_merge.6:
  %".100" = bitcast [2 x i8]* @"nl_.30" to i8*
  %".101" = call i32 (i8*, ...) @"printf"(i8* %".100")
  br i1 0, label %"then_0.1", label %"else_0.1"
if_merge.1:
  %".146" = bitcast [13 x i8]* @"str_.46" to i8*
  %".147" = bitcast [3 x i8]* @"fmt_.47" to i8*
  %".148" = call i32 (i8*, ...) @"printf"(i8* %".147", i8* %".146")
  %".149" = bitcast [2 x i8]* @"nl_.48" to i8*
  %".150" = call i32 (i8*, ...) @"printf"(i8* %".149")
  %"shadowVar.8" = load double, double* %"shadowVar"
  %".151" = fptosi double %"shadowVar.8" to i64
  %".152" = sitofp i64 %".151" to double
  %"is_int.9" = fcmp oeq double %"shadowVar.8", %".152"
  br i1 %"is_int.9", label %"print_int.9", label %"print_float.9"
then_0.1:
  %".103" = bitcast [21 x i8]* @"str_.31" to i8*
  %".104" = bitcast [3 x i8]* @"fmt_.32" to i8*
  %".105" = call i32 (i8*, ...) @"printf"(i8* %".104", i8* %".103")
  %".106" = bitcast [2 x i8]* @"nl_.33" to i8*
  %".107" = call i32 (i8*, ...) @"printf"(i8* %".106")
  br label %"if_merge.1"
else_0.1:
  br i1 1, label %"then_1", label %"else_1"
then_1:
  %"localVarElseIf" = alloca double
  store double 0x403e000000000000, double* %"localVarElseIf"
  %"shadowVar.6" = alloca double
  store double 0x4008000000000000, double* %"shadowVar.6"
  %".112" = bitcast [18 x i8]* @"str_.34" to i8*
  %".113" = bitcast [3 x i8]* @"fmt_.35" to i8*
  %".114" = call i32 (i8*, ...) @"printf"(i8* %".113", i8* %".112")
  %".115" = bitcast [2 x i8]* @"nl_.36" to i8*
  %".116" = call i32 (i8*, ...) @"printf"(i8* %".115")
  %"localVarElseIf.1" = load double, double* %"localVarElseIf"
  %".117" = fptosi double %"localVarElseIf.1" to i64
  %".118" = sitofp i64 %".117" to double
  %"is_int.7" = fcmp oeq double %"localVarElseIf.1", %".118"
  br i1 %"is_int.7", label %"print_int.7", label %"print_float.7"
else_1:
  %".140" = bitcast [21 x i8]* @"str_.43" to i8*
  %".141" = bitcast [3 x i8]* @"fmt_.44" to i8*
  %".142" = call i32 (i8*, ...) @"printf"(i8* %".141", i8* %".140")
  %".143" = bitcast [2 x i8]* @"nl_.45" to i8*
  %".144" = call i32 (i8*, ...) @"printf"(i8* %".143")
  br label %"if_merge.1"
print_int.7:
  %".120" = bitcast [5 x i8]* @"fmt_int_.37" to i8*
  %".121" = call i32 (i8*, ...) @"printf"(i8* %".120", i64 %".117")
  br label %"print_merge.7"
print_float.7:
  %".123" = bitcast [6 x i8]* @"fmt_flt_.38" to i8*
  %".124" = call i32 (i8*, ...) @"printf"(i8* %".123", double %"localVarElseIf.1")
  br label %"print_merge.7"
print_merge.7:
  %".126" = bitcast [2 x i8]* @"nl_.39" to i8*
  %".127" = call i32 (i8*, ...) @"printf"(i8* %".126")
  %"shadowVar.7" = load double, double* %"shadowVar.6"
  %".128" = fptosi double %"shadowVar.7" to i64
  %".129" = sitofp i64 %".128" to double
  %"is_int.8" = fcmp oeq double %"shadowVar.7", %".129"
  br i1 %"is_int.8", label %"print_int.8", label %"print_float.8"
print_int.8:
  %".131" = bitcast [5 x i8]* @"fmt_int_.40" to i8*
  %".132" = call i32 (i8*, ...) @"printf"(i8* %".131", i64 %".128")
  br label %"print_merge.8"
print_float.8:
  %".134" = bitcast [6 x i8]* @"fmt_flt_.41" to i8*
  %".135" = call i32 (i8*, ...) @"printf"(i8* %".134", double %"shadowVar.7")
  br label %"print_merge.8"
print_merge.8:
  %".137" = bitcast [2 x i8]* @"nl_.42" to i8*
  %".138" = call i32 (i8*, ...) @"printf"(i8* %".137")
  br label %"if_merge.1"
print_int.9:
  %".154" = bitcast [5 x i8]* @"fmt_int_.49" to i8*
  %".155" = call i32 (i8*, ...) @"printf"(i8* %".154", i64 %".151")
  br label %"print_merge.9"
print_float.9:
  %".157" = bitcast [6 x i8]* @"fmt_flt_.50" to i8*
  %".158" = call i32 (i8*, ...) @"printf"(i8* %".157", double %"shadowVar.8")
  br label %"print_merge.9"
print_merge.9:
  %".160" = bitcast [2 x i8]* @"nl_.51" to i8*
  %".161" = call i32 (i8*, ...) @"printf"(i8* %".160")
  br i1 0, label %"then_0.2", label %"else_0.2"
if_merge.2:
  %".199" = bitcast [11 x i8]* @"str_.64" to i8*
  %".200" = bitcast [3 x i8]* @"fmt_.65" to i8*
  %".201" = call i32 (i8*, ...) @"printf"(i8* %".200", i8* %".199")
  %".202" = bitcast [2 x i8]* @"nl_.66" to i8*
  %".203" = call i32 (i8*, ...) @"printf"(i8* %".202")
  %"shadowVar.11" = load double, double* %"shadowVar"
  %".204" = fptosi double %"shadowVar.11" to i64
  %".205" = sitofp i64 %".204" to double
  %"is_int.12" = fcmp oeq double %"shadowVar.11", %".205"
  br i1 %"is_int.12", label %"print_int.12", label %"print_float.12"
then_0.2:
  %".163" = bitcast [21 x i8]* @"str_.52" to i8*
  %".164" = bitcast [3 x i8]* @"fmt_.53" to i8*
  %".165" = call i32 (i8*, ...) @"printf"(i8* %".164", i8* %".163")
  %".166" = bitcast [2 x i8]* @"nl_.54" to i8*
  %".167" = call i32 (i8*, ...) @"printf"(i8* %".166")
  br label %"if_merge.2"
else_0.2:
  %"localVarElse" = alloca double
  store double 0x4049000000000000, double* %"localVarElse"
  %"shadowVar.9" = alloca double
  store double 0x4010000000000000, double* %"shadowVar.9"
  %".171" = bitcast [16 x i8]* @"str_.55" to i8*
  %".172" = bitcast [3 x i8]* @"fmt_.56" to i8*
  %".173" = call i32 (i8*, ...) @"printf"(i8* %".172", i8* %".171")
  %".174" = bitcast [2 x i8]* @"nl_.57" to i8*
  %".175" = call i32 (i8*, ...) @"printf"(i8* %".174")
  %"localVarElse.1" = load double, double* %"localVarElse"
  %".176" = fptosi double %"localVarElse.1" to i64
  %".177" = sitofp i64 %".176" to double
  %"is_int.10" = fcmp oeq double %"localVarElse.1", %".177"
  br i1 %"is_int.10", label %"print_int.10", label %"print_float.10"
print_int.10:
  %".179" = bitcast [5 x i8]* @"fmt_int_.58" to i8*
  %".180" = call i32 (i8*, ...) @"printf"(i8* %".179", i64 %".176")
  br label %"print_merge.10"
print_float.10:
  %".182" = bitcast [6 x i8]* @"fmt_flt_.59" to i8*
  %".183" = call i32 (i8*, ...) @"printf"(i8* %".182", double %"localVarElse.1")
  br label %"print_merge.10"
print_merge.10:
  %".185" = bitcast [2 x i8]* @"nl_.60" to i8*
  %".186" = call i32 (i8*, ...) @"printf"(i8* %".185")
  %"shadowVar.10" = load double, double* %"shadowVar.9"
  %".187" = fptosi double %"shadowVar.10" to i64
  %".188" = sitofp i64 %".187" to double
  %"is_int.11" = fcmp oeq double %"shadowVar.10", %".188"
  br i1 %"is_int.11", label %"print_int.11", label %"print_float.11"
print_int.11:
  %".190" = bitcast [5 x i8]* @"fmt_int_.61" to i8*
  %".191" = call i32 (i8*, ...) @"printf"(i8* %".190", i64 %".187")
  br label %"print_merge.11"
print_float.11:
  %".193" = bitcast [6 x i8]* @"fmt_flt_.62" to i8*
  %".194" = call i32 (i8*, ...) @"printf"(i8* %".193", double %"shadowVar.10")
  br label %"print_merge.11"
print_merge.11:
  %".196" = bitcast [2 x i8]* @"nl_.63" to i8*
  %".197" = call i32 (i8*, ...) @"printf"(i8* %".196")
  br label %"if_merge.2"
print_int.12:
  %".207" = bitcast [5 x i8]* @"fmt_int_.67" to i8*
  %".208" = call i32 (i8*, ...) @"printf"(i8* %".207", i64 %".204")
  br label %"print_merge.12"
print_float.12:
  %".210" = bitcast [6 x i8]* @"fmt_flt_.68" to i8*
  %".211" = call i32 (i8*, ...) @"printf"(i8* %".210", double %"shadowVar.11")
  br label %"print_merge.12"
print_merge.12:
  %".213" = bitcast [2 x i8]* @"nl_.69" to i8*
  %".214" = call i32 (i8*, ...) @"printf"(i8* %".213")
  ret i32 0
}

@"str_.1" = internal constant [8 x i8] c"Inicio:\00"
@"fmt_.2" = internal constant [3 x i8] c"%s\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.4" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.5" = internal constant [6 x i8] c"%.14g\00"
@"nl_.6" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.7" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.8" = internal constant [6 x i8] c"%.14g\00"
@"nl_.9" = internal constant [2 x i8] c"\0a\00"
@"str_.10" = internal constant [14 x i8] c"Dentro do IF:\00"
@"fmt_.11" = internal constant [3 x i8] c"%s\00"
@"nl_.12" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.13" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.14" = internal constant [6 x i8] c"%.14g\00"
@"nl_.15" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.16" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.17" = internal constant [6 x i8] c"%.14g\00"
@"nl_.18" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.19" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.20" = internal constant [6 x i8] c"%.14g\00"
@"nl_.21" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.22" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.23" = internal constant [6 x i8] c"%.14g\00"
@"nl_.24" = internal constant [2 x i8] c"\0a\00"
@"str_.25" = internal constant [9 x i8] c"Apos IF:\00"
@"fmt_.26" = internal constant [3 x i8] c"%s\00"
@"nl_.27" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.28" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.29" = internal constant [6 x i8] c"%.14g\00"
@"nl_.30" = internal constant [2 x i8] c"\0a\00"
@"str_.31" = internal constant [21 x i8] c"Nao deve entrar aqui\00"
@"fmt_.32" = internal constant [3 x i8] c"%s\00"
@"nl_.33" = internal constant [2 x i8] c"\0a\00"
@"str_.34" = internal constant [18 x i8] c"Dentro do ELSEIF:\00"
@"fmt_.35" = internal constant [3 x i8] c"%s\00"
@"nl_.36" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.37" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.38" = internal constant [6 x i8] c"%.14g\00"
@"nl_.39" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.40" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.41" = internal constant [6 x i8] c"%.14g\00"
@"nl_.42" = internal constant [2 x i8] c"\0a\00"
@"str_.43" = internal constant [21 x i8] c"Nao deve entrar aqui\00"
@"fmt_.44" = internal constant [3 x i8] c"%s\00"
@"nl_.45" = internal constant [2 x i8] c"\0a\00"
@"str_.46" = internal constant [13 x i8] c"Apos ELSEIF:\00"
@"fmt_.47" = internal constant [3 x i8] c"%s\00"
@"nl_.48" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.49" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.50" = internal constant [6 x i8] c"%.14g\00"
@"nl_.51" = internal constant [2 x i8] c"\0a\00"
@"str_.52" = internal constant [21 x i8] c"Nao deve entrar aqui\00"
@"fmt_.53" = internal constant [3 x i8] c"%s\00"
@"nl_.54" = internal constant [2 x i8] c"\0a\00"
@"str_.55" = internal constant [16 x i8] c"Dentro do ELSE:\00"
@"fmt_.56" = internal constant [3 x i8] c"%s\00"
@"nl_.57" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.58" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.59" = internal constant [6 x i8] c"%.14g\00"
@"nl_.60" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.61" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.62" = internal constant [6 x i8] c"%.14g\00"
@"nl_.63" = internal constant [2 x i8] c"\0a\00"
@"str_.64" = internal constant [11 x i8] c"Apos ELSE:\00"
@"fmt_.65" = internal constant [3 x i8] c"%s\00"
@"nl_.66" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.67" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.68" = internal constant [6 x i8] c"%.14g\00"
@"nl_.69" = internal constant [2 x i8] c"\0a\00"