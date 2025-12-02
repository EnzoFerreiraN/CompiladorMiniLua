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
  %"x" = alloca double
  store double 0x4059000000000000, double* %"x"
  %"y" = alloca double
  store double 0x4069000000000000, double* %"y"
  %".4" = bitcast [16 x i8]* @"str_.1" to i8*
  %"x.1" = load double, double* %"x"
  %".5" = bitcast [4 x i8]* @"str_.2" to i8*
  %"y.1" = load double, double* %"y"
  %".6" = bitcast [4 x i8]* @"fmt_.3" to i8*
  %".7" = call i32 (i8*, ...) @"printf"(i8* %".6", i8* %".4")
  %".8" = fptosi double %"x.1" to i64
  %".9" = sitofp i64 %".8" to double
  %"is_int" = fcmp oeq double %"x.1", %".9"
  br i1 %"is_int", label %"print_int", label %"print_float"
print_int:
  %".11" = bitcast [5 x i8]* @"fmt_int_.4" to i8*
  %".12" = call i32 (i8*, ...) @"printf"(i8* %".11", i64 %".8")
  br label %"print_merge"
print_float:
  %".14" = bitcast [6 x i8]* @"fmt_flt_.5" to i8*
  %".15" = call i32 (i8*, ...) @"printf"(i8* %".14", double %"x.1")
  br label %"print_merge"
print_merge:
  %".17" = bitcast [2 x i8]* @"sp_.6" to i8*
  %".18" = call i32 (i8*, ...) @"printf"(i8* %".17")
  %".19" = bitcast [4 x i8]* @"fmt_.7" to i8*
  %".20" = call i32 (i8*, ...) @"printf"(i8* %".19", i8* %".5")
  %".21" = fptosi double %"y.1" to i64
  %".22" = sitofp i64 %".21" to double
  %"is_int.1" = fcmp oeq double %"y.1", %".22"
  br i1 %"is_int.1", label %"print_int.1", label %"print_float.1"
print_int.1:
  %".24" = bitcast [5 x i8]* @"fmt_int_.8" to i8*
  %".25" = call i32 (i8*, ...) @"printf"(i8* %".24", i64 %".21")
  br label %"print_merge.1"
print_float.1:
  %".27" = bitcast [6 x i8]* @"fmt_flt_.9" to i8*
  %".28" = call i32 (i8*, ...) @"printf"(i8* %".27", double %"y.1")
  br label %"print_merge.1"
print_merge.1:
  %".30" = bitcast [2 x i8]* @"nl_.10" to i8*
  %".31" = call i32 (i8*, ...) @"printf"(i8* %".30")
  %"x.2" = alloca double
  store double 0x4024000000000000, double* %"x.2"
  %".33" = bitcast [13 x i8]* @"str_.11" to i8*
  %"x.3" = load double, double* %"x.2"
  %".34" = bitcast [4 x i8]* @"str_.12" to i8*
  %"y.2" = load double, double* %"y"
  %".35" = bitcast [4 x i8]* @"fmt_.13" to i8*
  %".36" = call i32 (i8*, ...) @"printf"(i8* %".35", i8* %".33")
  %".37" = fptosi double %"x.3" to i64
  %".38" = sitofp i64 %".37" to double
  %"is_int.2" = fcmp oeq double %"x.3", %".38"
  br i1 %"is_int.2", label %"print_int.2", label %"print_float.2"
print_int.2:
  %".40" = bitcast [5 x i8]* @"fmt_int_.14" to i8*
  %".41" = call i32 (i8*, ...) @"printf"(i8* %".40", i64 %".37")
  br label %"print_merge.2"
print_float.2:
  %".43" = bitcast [6 x i8]* @"fmt_flt_.15" to i8*
  %".44" = call i32 (i8*, ...) @"printf"(i8* %".43", double %"x.3")
  br label %"print_merge.2"
print_merge.2:
  %".46" = bitcast [2 x i8]* @"sp_.16" to i8*
  %".47" = call i32 (i8*, ...) @"printf"(i8* %".46")
  %".48" = bitcast [4 x i8]* @"fmt_.17" to i8*
  %".49" = call i32 (i8*, ...) @"printf"(i8* %".48", i8* %".34")
  %".50" = fptosi double %"y.2" to i64
  %".51" = sitofp i64 %".50" to double
  %"is_int.3" = fcmp oeq double %"y.2", %".51"
  br i1 %"is_int.3", label %"print_int.3", label %"print_float.3"
print_int.3:
  %".53" = bitcast [5 x i8]* @"fmt_int_.18" to i8*
  %".54" = call i32 (i8*, ...) @"printf"(i8* %".53", i64 %".50")
  br label %"print_merge.3"
print_float.3:
  %".56" = bitcast [6 x i8]* @"fmt_flt_.19" to i8*
  %".57" = call i32 (i8*, ...) @"printf"(i8* %".56", double %"y.2")
  br label %"print_merge.3"
print_merge.3:
  %".59" = bitcast [2 x i8]* @"nl_.20" to i8*
  %".60" = call i32 (i8*, ...) @"printf"(i8* %".59")
  %"x.4" = alloca double
  store double 0x3ff0000000000000, double* %"x.4"
  %"y.3" = alloca double
  store double 0x4034000000000000, double* %"y.3"
  %".63" = bitcast [13 x i8]* @"str_.21" to i8*
  %"x.5" = load double, double* %"x.4"
  %".64" = bitcast [4 x i8]* @"str_.22" to i8*
  %"y.4" = load double, double* %"y.3"
  %".65" = bitcast [4 x i8]* @"fmt_.23" to i8*
  %".66" = call i32 (i8*, ...) @"printf"(i8* %".65", i8* %".63")
  %".67" = fptosi double %"x.5" to i64
  %".68" = sitofp i64 %".67" to double
  %"is_int.4" = fcmp oeq double %"x.5", %".68"
  br i1 %"is_int.4", label %"print_int.4", label %"print_float.4"
print_int.4:
  %".70" = bitcast [5 x i8]* @"fmt_int_.24" to i8*
  %".71" = call i32 (i8*, ...) @"printf"(i8* %".70", i64 %".67")
  br label %"print_merge.4"
print_float.4:
  %".73" = bitcast [6 x i8]* @"fmt_flt_.25" to i8*
  %".74" = call i32 (i8*, ...) @"printf"(i8* %".73", double %"x.5")
  br label %"print_merge.4"
print_merge.4:
  %".76" = bitcast [2 x i8]* @"sp_.26" to i8*
  %".77" = call i32 (i8*, ...) @"printf"(i8* %".76")
  %".78" = bitcast [4 x i8]* @"fmt_.27" to i8*
  %".79" = call i32 (i8*, ...) @"printf"(i8* %".78", i8* %".64")
  %".80" = fptosi double %"y.4" to i64
  %".81" = sitofp i64 %".80" to double
  %"is_int.5" = fcmp oeq double %"y.4", %".81"
  br i1 %"is_int.5", label %"print_int.5", label %"print_float.5"
print_int.5:
  %".83" = bitcast [5 x i8]* @"fmt_int_.28" to i8*
  %".84" = call i32 (i8*, ...) @"printf"(i8* %".83", i64 %".80")
  br label %"print_merge.5"
print_float.5:
  %".86" = bitcast [6 x i8]* @"fmt_flt_.29" to i8*
  %".87" = call i32 (i8*, ...) @"printf"(i8* %".86", double %"y.4")
  br label %"print_merge.5"
print_merge.5:
  %".89" = bitcast [2 x i8]* @"nl_.30" to i8*
  %".90" = call i32 (i8*, ...) @"printf"(i8* %".89")
  %".91" = bitcast [21 x i8]* @"str_.31" to i8*
  %"x.6" = load double, double* %"x.2"
  %".92" = bitcast [4 x i8]* @"str_.32" to i8*
  %"y.5" = load double, double* %"y"
  %".93" = bitcast [4 x i8]* @"fmt_.33" to i8*
  %".94" = call i32 (i8*, ...) @"printf"(i8* %".93", i8* %".91")
  %".95" = fptosi double %"x.6" to i64
  %".96" = sitofp i64 %".95" to double
  %"is_int.6" = fcmp oeq double %"x.6", %".96"
  br i1 %"is_int.6", label %"print_int.6", label %"print_float.6"
print_int.6:
  %".98" = bitcast [5 x i8]* @"fmt_int_.34" to i8*
  %".99" = call i32 (i8*, ...) @"printf"(i8* %".98", i64 %".95")
  br label %"print_merge.6"
print_float.6:
  %".101" = bitcast [6 x i8]* @"fmt_flt_.35" to i8*
  %".102" = call i32 (i8*, ...) @"printf"(i8* %".101", double %"x.6")
  br label %"print_merge.6"
print_merge.6:
  %".104" = bitcast [2 x i8]* @"sp_.36" to i8*
  %".105" = call i32 (i8*, ...) @"printf"(i8* %".104")
  %".106" = bitcast [4 x i8]* @"fmt_.37" to i8*
  %".107" = call i32 (i8*, ...) @"printf"(i8* %".106", i8* %".92")
  %".108" = fptosi double %"y.5" to i64
  %".109" = sitofp i64 %".108" to double
  %"is_int.7" = fcmp oeq double %"y.5", %".109"
  br i1 %"is_int.7", label %"print_int.7", label %"print_float.7"
print_int.7:
  %".111" = bitcast [5 x i8]* @"fmt_int_.38" to i8*
  %".112" = call i32 (i8*, ...) @"printf"(i8* %".111", i64 %".108")
  br label %"print_merge.7"
print_float.7:
  %".114" = bitcast [6 x i8]* @"fmt_flt_.39" to i8*
  %".115" = call i32 (i8*, ...) @"printf"(i8* %".114", double %"y.5")
  br label %"print_merge.7"
print_merge.7:
  %".117" = bitcast [2 x i8]* @"nl_.40" to i8*
  %".118" = call i32 (i8*, ...) @"printf"(i8* %".117")
  %".119" = bitcast [18 x i8]* @"str_.41" to i8*
  %"x.7" = load double, double* %"x"
  %".120" = bitcast [4 x i8]* @"str_.42" to i8*
  %"y.6" = load double, double* %"y"
  %".121" = bitcast [4 x i8]* @"fmt_.43" to i8*
  %".122" = call i32 (i8*, ...) @"printf"(i8* %".121", i8* %".119")
  %".123" = fptosi double %"x.7" to i64
  %".124" = sitofp i64 %".123" to double
  %"is_int.8" = fcmp oeq double %"x.7", %".124"
  br i1 %"is_int.8", label %"print_int.8", label %"print_float.8"
print_int.8:
  %".126" = bitcast [5 x i8]* @"fmt_int_.44" to i8*
  %".127" = call i32 (i8*, ...) @"printf"(i8* %".126", i64 %".123")
  br label %"print_merge.8"
print_float.8:
  %".129" = bitcast [6 x i8]* @"fmt_flt_.45" to i8*
  %".130" = call i32 (i8*, ...) @"printf"(i8* %".129", double %"x.7")
  br label %"print_merge.8"
print_merge.8:
  %".132" = bitcast [2 x i8]* @"sp_.46" to i8*
  %".133" = call i32 (i8*, ...) @"printf"(i8* %".132")
  %".134" = bitcast [4 x i8]* @"fmt_.47" to i8*
  %".135" = call i32 (i8*, ...) @"printf"(i8* %".134", i8* %".120")
  %".136" = fptosi double %"y.6" to i64
  %".137" = sitofp i64 %".136" to double
  %"is_int.9" = fcmp oeq double %"y.6", %".137"
  br i1 %"is_int.9", label %"print_int.9", label %"print_float.9"
print_int.9:
  %".139" = bitcast [5 x i8]* @"fmt_int_.48" to i8*
  %".140" = call i32 (i8*, ...) @"printf"(i8* %".139", i64 %".136")
  br label %"print_merge.9"
print_float.9:
  %".142" = bitcast [6 x i8]* @"fmt_flt_.49" to i8*
  %".143" = call i32 (i8*, ...) @"printf"(i8* %".142", double %"y.6")
  br label %"print_merge.9"
print_merge.9:
  %".145" = bitcast [2 x i8]* @"nl_.50" to i8*
  %".146" = call i32 (i8*, ...) @"printf"(i8* %".145")
  %"i" = alloca double
  store double 0x4049000000000000, double* %"i"
  %".148" = bitcast [17 x i8]* @"str_.51" to i8*
  %"i.1" = load double, double* %"i"
  %".149" = bitcast [4 x i8]* @"fmt_.52" to i8*
  %".150" = call i32 (i8*, ...) @"printf"(i8* %".149", i8* %".148")
  %".151" = fptosi double %"i.1" to i64
  %".152" = sitofp i64 %".151" to double
  %"is_int.10" = fcmp oeq double %"i.1", %".152"
  br i1 %"is_int.10", label %"print_int.10", label %"print_float.10"
print_int.10:
  %".154" = bitcast [5 x i8]* @"fmt_int_.53" to i8*
  %".155" = call i32 (i8*, ...) @"printf"(i8* %".154", i64 %".151")
  br label %"print_merge.10"
print_float.10:
  %".157" = bitcast [6 x i8]* @"fmt_flt_.54" to i8*
  %".158" = call i32 (i8*, ...) @"printf"(i8* %".157", double %"i.1")
  br label %"print_merge.10"
print_merge.10:
  %".160" = bitcast [2 x i8]* @"nl_.55" to i8*
  %".161" = call i32 (i8*, ...) @"printf"(i8* %".160")
  %"i.2" = alloca double
  store double 0x3ff0000000000000, double* %"i.2"
  br label %"for_cond"
for_cond:
  %"i.3" = load double, double* %"i.2"
  %"step_ge_0" = fcmp oge double 0x3ff0000000000000,              0x0
  %"cond_le" = fcmp ole double %"i.3", 0x4008000000000000
  %"cond_ge" = fcmp oge double %"i.3", 0x4008000000000000
  %"forcond" = select  i1 %"step_ge_0", i1 %"cond_le", i1 %"cond_ge"
  br i1 %"forcond", label %"for_body", label %"for_merge"
for_body:
  %".165" = bitcast [17 x i8]* @"str_.56" to i8*
  %"i.4" = load double, double* %"i.2"
  %".166" = bitcast [4 x i8]* @"fmt_.57" to i8*
  %".167" = call i32 (i8*, ...) @"printf"(i8* %".166", i8* %".165")
  %".168" = fptosi double %"i.4" to i64
  %".169" = sitofp i64 %".168" to double
  %"is_int.11" = fcmp oeq double %"i.4", %".169"
  br i1 %"is_int.11", label %"print_int.11", label %"print_float.11"
for_merge:
  %".196" = bitcast [16 x i8]* @"str_.66" to i8*
  %"i.7" = load double, double* %"i"
  %".197" = bitcast [4 x i8]* @"fmt_.67" to i8*
  %".198" = call i32 (i8*, ...) @"printf"(i8* %".197", i8* %".196")
  %".199" = fptosi double %"i.7" to i64
  %".200" = sitofp i64 %".199" to double
  %"is_int.13" = fcmp oeq double %"i.7", %".200"
  br i1 %"is_int.13", label %"print_int.13", label %"print_float.13"
print_int.11:
  %".171" = bitcast [5 x i8]* @"fmt_int_.58" to i8*
  %".172" = call i32 (i8*, ...) @"printf"(i8* %".171", i64 %".168")
  br label %"print_merge.11"
print_float.11:
  %".174" = bitcast [6 x i8]* @"fmt_flt_.59" to i8*
  %".175" = call i32 (i8*, ...) @"printf"(i8* %".174", double %"i.4")
  br label %"print_merge.11"
print_merge.11:
  %".177" = bitcast [2 x i8]* @"nl_.60" to i8*
  %".178" = call i32 (i8*, ...) @"printf"(i8* %".177")
  %"x.8" = alloca double
  %"i.5" = load double, double* %"i.2"
  %"multmp" = fmul double %"i.5", 0x4024000000000000
  store double %"multmp", double* %"x.8"
  %".180" = bitcast [22 x i8]* @"str_.61" to i8*
  %"x.9" = load double, double* %"x.8"
  %".181" = bitcast [4 x i8]* @"fmt_.62" to i8*
  %".182" = call i32 (i8*, ...) @"printf"(i8* %".181", i8* %".180")
  %".183" = fptosi double %"x.9" to i64
  %".184" = sitofp i64 %".183" to double
  %"is_int.12" = fcmp oeq double %"x.9", %".184"
  br i1 %"is_int.12", label %"print_int.12", label %"print_float.12"
print_int.12:
  %".186" = bitcast [5 x i8]* @"fmt_int_.63" to i8*
  %".187" = call i32 (i8*, ...) @"printf"(i8* %".186", i64 %".183")
  br label %"print_merge.12"
print_float.12:
  %".189" = bitcast [6 x i8]* @"fmt_flt_.64" to i8*
  %".190" = call i32 (i8*, ...) @"printf"(i8* %".189", double %"x.9")
  br label %"print_merge.12"
print_merge.12:
  %".192" = bitcast [2 x i8]* @"nl_.65" to i8*
  %".193" = call i32 (i8*, ...) @"printf"(i8* %".192")
  %"i.6" = load double, double* %"i.2"
  %"nextval" = fadd double %"i.6", 0x3ff0000000000000
  store double %"nextval", double* %"i.2"
  br label %"for_cond"
print_int.13:
  %".202" = bitcast [5 x i8]* @"fmt_int_.68" to i8*
  %".203" = call i32 (i8*, ...) @"printf"(i8* %".202", i64 %".199")
  br label %"print_merge.13"
print_float.13:
  %".205" = bitcast [6 x i8]* @"fmt_flt_.69" to i8*
  %".206" = call i32 (i8*, ...) @"printf"(i8* %".205", double %"i.7")
  br label %"print_merge.13"
print_merge.13:
  %".208" = bitcast [2 x i8]* @"nl_.70" to i8*
  %".209" = call i32 (i8*, ...) @"printf"(i8* %".208")
  %"x.10" = load double, double* %"x"
  %"gttmp" = fcmp ogt double %"x.10", 0x4049000000000000
  br i1 %"gttmp", label %"then_0", label %"else_0"
if_merge:
  %".243" = bitcast [14 x i8]* @"str_.81" to i8*
  %"x.13" = load double, double* %"x"
  %".244" = bitcast [4 x i8]* @"fmt_.82" to i8*
  %".245" = call i32 (i8*, ...) @"printf"(i8* %".244", i8* %".243")
  %".246" = fptosi double %"x.13" to i64
  %".247" = sitofp i64 %".246" to double
  %"is_int.16" = fcmp oeq double %"x.13", %".247"
  br i1 %"is_int.16", label %"print_int.16", label %"print_float.16"
then_0:
  %"z" = alloca double
  store double 0x408f380000000000, double* %"z"
  %".212" = bitcast [15 x i8]* @"str_.71" to i8*
  %"z.1" = load double, double* %"z"
  %".213" = bitcast [4 x i8]* @"fmt_.72" to i8*
  %".214" = call i32 (i8*, ...) @"printf"(i8* %".213", i8* %".212")
  %".215" = fptosi double %"z.1" to i64
  %".216" = sitofp i64 %".215" to double
  %"is_int.14" = fcmp oeq double %"z.1", %".216"
  br i1 %"is_int.14", label %"print_int.14", label %"print_float.14"
else_0:
  br label %"if_merge"
print_int.14:
  %".218" = bitcast [5 x i8]* @"fmt_int_.73" to i8*
  %".219" = call i32 (i8*, ...) @"printf"(i8* %".218", i64 %".215")
  br label %"print_merge.14"
print_float.14:
  %".221" = bitcast [6 x i8]* @"fmt_flt_.74" to i8*
  %".222" = call i32 (i8*, ...) @"printf"(i8* %".221", double %"z.1")
  br label %"print_merge.14"
print_merge.14:
  %".224" = bitcast [2 x i8]* @"nl_.75" to i8*
  %".225" = call i32 (i8*, ...) @"printf"(i8* %".224")
  %"x.11" = alloca double
  store double 0x4081580000000000, double* %"x.11"
  %".227" = bitcast [15 x i8]* @"str_.76" to i8*
  %"x.12" = load double, double* %"x.11"
  %".228" = bitcast [4 x i8]* @"fmt_.77" to i8*
  %".229" = call i32 (i8*, ...) @"printf"(i8* %".228", i8* %".227")
  %".230" = fptosi double %"x.12" to i64
  %".231" = sitofp i64 %".230" to double
  %"is_int.15" = fcmp oeq double %"x.12", %".231"
  br i1 %"is_int.15", label %"print_int.15", label %"print_float.15"
print_int.15:
  %".233" = bitcast [5 x i8]* @"fmt_int_.78" to i8*
  %".234" = call i32 (i8*, ...) @"printf"(i8* %".233", i64 %".230")
  br label %"print_merge.15"
print_float.15:
  %".236" = bitcast [6 x i8]* @"fmt_flt_.79" to i8*
  %".237" = call i32 (i8*, ...) @"printf"(i8* %".236", double %"x.12")
  br label %"print_merge.15"
print_merge.15:
  %".239" = bitcast [2 x i8]* @"nl_.80" to i8*
  %".240" = call i32 (i8*, ...) @"printf"(i8* %".239")
  br label %"if_merge"
print_int.16:
  %".249" = bitcast [5 x i8]* @"fmt_int_.83" to i8*
  %".250" = call i32 (i8*, ...) @"printf"(i8* %".249", i64 %".246")
  br label %"print_merge.16"
print_float.16:
  %".252" = bitcast [6 x i8]* @"fmt_flt_.84" to i8*
  %".253" = call i32 (i8*, ...) @"printf"(i8* %".252", double %"x.13")
  br label %"print_merge.16"
print_merge.16:
  %".255" = bitcast [2 x i8]* @"nl_.85" to i8*
  %".256" = call i32 (i8*, ...) @"printf"(i8* %".255")
  %"w" = alloca double
  store double              0x0, double* %"w"
  br label %"while_cond"
while_cond:
  %"w.1" = load double, double* %"w"
  %"lttmp" = fcmp olt double %"w.1", 0x4000000000000000
  br i1 %"lttmp", label %"while_body", label %"while_merge"
while_body:
  %"x.14" = alloca double
  store double 0x4088480000000000, double* %"x.14"
  %".261" = bitcast [18 x i8]* @"str_.86" to i8*
  %"x.15" = load double, double* %"x.14"
  %".262" = bitcast [4 x i8]* @"fmt_.87" to i8*
  %".263" = call i32 (i8*, ...) @"printf"(i8* %".262", i8* %".261")
  %".264" = fptosi double %"x.15" to i64
  %".265" = sitofp i64 %".264" to double
  %"is_int.17" = fcmp oeq double %"x.15", %".265"
  br i1 %"is_int.17", label %"print_int.17", label %"print_float.17"
while_merge:
  %".277" = bitcast [17 x i8]* @"str_.91" to i8*
  %"x.16" = load double, double* %"x"
  %".278" = bitcast [4 x i8]* @"fmt_.92" to i8*
  %".279" = call i32 (i8*, ...) @"printf"(i8* %".278", i8* %".277")
  %".280" = fptosi double %"x.16" to i64
  %".281" = sitofp i64 %".280" to double
  %"is_int.18" = fcmp oeq double %"x.16", %".281"
  br i1 %"is_int.18", label %"print_int.18", label %"print_float.18"
print_int.17:
  %".267" = bitcast [5 x i8]* @"fmt_int_.88" to i8*
  %".268" = call i32 (i8*, ...) @"printf"(i8* %".267", i64 %".264")
  br label %"print_merge.17"
print_float.17:
  %".270" = bitcast [6 x i8]* @"fmt_flt_.89" to i8*
  %".271" = call i32 (i8*, ...) @"printf"(i8* %".270", double %"x.15")
  br label %"print_merge.17"
print_merge.17:
  %".273" = bitcast [2 x i8]* @"nl_.90" to i8*
  %".274" = call i32 (i8*, ...) @"printf"(i8* %".273")
  %"w.2" = load double, double* %"w"
  %"addtmp" = fadd double %"w.2", 0x3ff0000000000000
  store double %"addtmp", double* %"w"
  br label %"while_cond"
print_int.18:
  %".283" = bitcast [5 x i8]* @"fmt_int_.93" to i8*
  %".284" = call i32 (i8*, ...) @"printf"(i8* %".283", i64 %".280")
  br label %"print_merge.18"
print_float.18:
  %".286" = bitcast [6 x i8]* @"fmt_flt_.94" to i8*
  %".287" = call i32 (i8*, ...) @"printf"(i8* %".286", double %"x.16")
  br label %"print_merge.18"
print_merge.18:
  %".289" = bitcast [2 x i8]* @"nl_.95" to i8*
  %".290" = call i32 (i8*, ...) @"printf"(i8* %".289")
  ret i32 0
}

@"str_.1" = internal constant [16 x i8] c"Main start: x =\00"
@"str_.2" = internal constant [4 x i8] c"y =\00"
@"fmt_.3" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.4" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.5" = internal constant [6 x i8] c"%.14g\00"
@"sp_.6" = internal constant [2 x i8] c" \00"
@"fmt_.7" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.8" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.9" = internal constant [6 x i8] c"%.14g\00"
@"nl_.10" = internal constant [2 x i8] c"\0a\00"
@"str_.11" = internal constant [13 x i8] c"Block 1: x =\00"
@"str_.12" = internal constant [4 x i8] c"y =\00"
@"fmt_.13" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.14" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.15" = internal constant [6 x i8] c"%.14g\00"
@"sp_.16" = internal constant [2 x i8] c" \00"
@"fmt_.17" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.18" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.19" = internal constant [6 x i8] c"%.14g\00"
@"nl_.20" = internal constant [2 x i8] c"\0a\00"
@"str_.21" = internal constant [13 x i8] c"Block 2: x =\00"
@"str_.22" = internal constant [4 x i8] c"y =\00"
@"fmt_.23" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.24" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.25" = internal constant [6 x i8] c"%.14g\00"
@"sp_.26" = internal constant [2 x i8] c" \00"
@"fmt_.27" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.28" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.29" = internal constant [6 x i8] c"%.14g\00"
@"nl_.30" = internal constant [2 x i8] c"\0a\00"
@"str_.31" = internal constant [21 x i8] c"Back to Block 1: x =\00"
@"str_.32" = internal constant [4 x i8] c"y =\00"
@"fmt_.33" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.34" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.35" = internal constant [6 x i8] c"%.14g\00"
@"sp_.36" = internal constant [2 x i8] c" \00"
@"fmt_.37" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.38" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.39" = internal constant [6 x i8] c"%.14g\00"
@"nl_.40" = internal constant [2 x i8] c"\0a\00"
@"str_.41" = internal constant [18 x i8] c"Back to Main: x =\00"
@"str_.42" = internal constant [4 x i8] c"y =\00"
@"fmt_.43" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.44" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.45" = internal constant [6 x i8] c"%.14g\00"
@"sp_.46" = internal constant [2 x i8] c" \00"
@"fmt_.47" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.48" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.49" = internal constant [6 x i8] c"%.14g\00"
@"nl_.50" = internal constant [2 x i8] c"\0a\00"
@"str_.51" = internal constant [17 x i8] c"Before loop: i =\00"
@"fmt_.52" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.53" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.54" = internal constant [6 x i8] c"%.14g\00"
@"nl_.55" = internal constant [2 x i8] c"\0a\00"
@"str_.56" = internal constant [17 x i8] c"Inside loop: i =\00"
@"fmt_.57" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.58" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.59" = internal constant [6 x i8] c"%.14g\00"
@"nl_.60" = internal constant [2 x i8] c"\0a\00"
@"str_.61" = internal constant [22 x i8] c"Inside loop local x =\00"
@"fmt_.62" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.63" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.64" = internal constant [6 x i8] c"%.14g\00"
@"nl_.65" = internal constant [2 x i8] c"\0a\00"
@"str_.66" = internal constant [16 x i8] c"After loop: i =\00"
@"fmt_.67" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.68" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.69" = internal constant [6 x i8] c"%.14g\00"
@"nl_.70" = internal constant [2 x i8] c"\0a\00"
@"str_.71" = internal constant [15 x i8] c"Inside if: z =\00"
@"fmt_.72" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.73" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.74" = internal constant [6 x i8] c"%.14g\00"
@"nl_.75" = internal constant [2 x i8] c"\0a\00"
@"str_.76" = internal constant [15 x i8] c"Inside if: x =\00"
@"fmt_.77" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.78" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.79" = internal constant [6 x i8] c"%.14g\00"
@"nl_.80" = internal constant [2 x i8] c"\0a\00"
@"str_.81" = internal constant [14 x i8] c"After if: x =\00"
@"fmt_.82" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.83" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.84" = internal constant [6 x i8] c"%.14g\00"
@"nl_.85" = internal constant [2 x i8] c"\0a\00"
@"str_.86" = internal constant [18 x i8] c"Inside while: x =\00"
@"fmt_.87" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.88" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.89" = internal constant [6 x i8] c"%.14g\00"
@"nl_.90" = internal constant [2 x i8] c"\0a\00"
@"str_.91" = internal constant [17 x i8] c"After while: x =\00"
@"fmt_.92" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.93" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.94" = internal constant [6 x i8] c"%.14g\00"
@"nl_.95" = internal constant [2 x i8] c"\0a\00"