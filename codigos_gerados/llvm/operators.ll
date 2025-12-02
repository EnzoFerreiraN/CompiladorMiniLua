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
  %".2" = bitcast [41 x i8]* @"str_.1" to i8*
  %".3" = bitcast [3 x i8]* @"fmt_.2" to i8*
  %".4" = call i32 (i8*, ...) @"printf"(i8* %".3", i8* %".2")
  %".5" = bitcast [2 x i8]* @"nl_.3" to i8*
  %".6" = call i32 (i8*, ...) @"printf"(i8* %".5")
  %"a" = alloca double
  store double 0x4024000000000000, double* %"a"
  %"b" = alloca double
  store double 0x4008000000000000, double* %"b"
  %".9" = bitcast [13 x i8]* @"str_.4" to i8*
  %"a.1" = load double, double* %"a"
  %"b.1" = load double, double* %"b"
  %"addtmp" = fadd double %"a.1", %"b.1"
  %".10" = bitcast [4 x i8]* @"fmt_.5" to i8*
  %".11" = call i32 (i8*, ...) @"printf"(i8* %".10", i8* %".9")
  %".12" = fptosi double %"addtmp" to i64
  %".13" = sitofp i64 %".12" to double
  %"is_int" = fcmp oeq double %"addtmp", %".13"
  br i1 %"is_int", label %"print_int", label %"print_float"
print_int:
  %".15" = bitcast [5 x i8]* @"fmt_int_.6" to i8*
  %".16" = call i32 (i8*, ...) @"printf"(i8* %".15", i64 %".12")
  br label %"print_merge"
print_float:
  %".18" = bitcast [6 x i8]* @"fmt_flt_.7" to i8*
  %".19" = call i32 (i8*, ...) @"printf"(i8* %".18", double %"addtmp")
  br label %"print_merge"
print_merge:
  %".21" = bitcast [2 x i8]* @"nl_.8" to i8*
  %".22" = call i32 (i8*, ...) @"printf"(i8* %".21")
  %".23" = bitcast [18 x i8]* @"str_.9" to i8*
  %"a.2" = load double, double* %"a"
  %"b.2" = load double, double* %"b"
  %"subtmp" = fsub double %"a.2", %"b.2"
  %".24" = bitcast [4 x i8]* @"fmt_.10" to i8*
  %".25" = call i32 (i8*, ...) @"printf"(i8* %".24", i8* %".23")
  %".26" = fptosi double %"subtmp" to i64
  %".27" = sitofp i64 %".26" to double
  %"is_int.1" = fcmp oeq double %"subtmp", %".27"
  br i1 %"is_int.1", label %"print_int.1", label %"print_float.1"
print_int.1:
  %".29" = bitcast [5 x i8]* @"fmt_int_.11" to i8*
  %".30" = call i32 (i8*, ...) @"printf"(i8* %".29", i64 %".26")
  br label %"print_merge.1"
print_float.1:
  %".32" = bitcast [6 x i8]* @"fmt_flt_.12" to i8*
  %".33" = call i32 (i8*, ...) @"printf"(i8* %".32", double %"subtmp")
  br label %"print_merge.1"
print_merge.1:
  %".35" = bitcast [2 x i8]* @"nl_.13" to i8*
  %".36" = call i32 (i8*, ...) @"printf"(i8* %".35")
  %".37" = bitcast [22 x i8]* @"str_.14" to i8*
  %"a.3" = load double, double* %"a"
  %"b.3" = load double, double* %"b"
  %"multmp" = fmul double %"a.3", %"b.3"
  %".38" = bitcast [4 x i8]* @"fmt_.15" to i8*
  %".39" = call i32 (i8*, ...) @"printf"(i8* %".38", i8* %".37")
  %".40" = fptosi double %"multmp" to i64
  %".41" = sitofp i64 %".40" to double
  %"is_int.2" = fcmp oeq double %"multmp", %".41"
  br i1 %"is_int.2", label %"print_int.2", label %"print_float.2"
print_int.2:
  %".43" = bitcast [5 x i8]* @"fmt_int_.16" to i8*
  %".44" = call i32 (i8*, ...) @"printf"(i8* %".43", i64 %".40")
  br label %"print_merge.2"
print_float.2:
  %".46" = bitcast [6 x i8]* @"fmt_flt_.17" to i8*
  %".47" = call i32 (i8*, ...) @"printf"(i8* %".46", double %"multmp")
  br label %"print_merge.2"
print_merge.2:
  %".49" = bitcast [2 x i8]* @"nl_.18" to i8*
  %".50" = call i32 (i8*, ...) @"printf"(i8* %".49")
  %".51" = bitcast [16 x i8]* @"str_.19" to i8*
  %"a.4" = load double, double* %"a"
  %"b.4" = load double, double* %"b"
  %"divtmp" = fdiv double %"a.4", %"b.4"
  %".52" = bitcast [4 x i8]* @"fmt_.20" to i8*
  %".53" = call i32 (i8*, ...) @"printf"(i8* %".52", i8* %".51")
  %".54" = fptosi double %"divtmp" to i64
  %".55" = sitofp i64 %".54" to double
  %"is_int.3" = fcmp oeq double %"divtmp", %".55"
  br i1 %"is_int.3", label %"print_int.3", label %"print_float.3"
print_int.3:
  %".57" = bitcast [5 x i8]* @"fmt_int_.21" to i8*
  %".58" = call i32 (i8*, ...) @"printf"(i8* %".57", i64 %".54")
  br label %"print_merge.3"
print_float.3:
  %".60" = bitcast [6 x i8]* @"fmt_flt_.22" to i8*
  %".61" = call i32 (i8*, ...) @"printf"(i8* %".60", double %"divtmp")
  br label %"print_merge.3"
print_merge.3:
  %".63" = bitcast [2 x i8]* @"nl_.23" to i8*
  %".64" = call i32 (i8*, ...) @"printf"(i8* %".63")
  %".65" = bitcast [25 x i8]* @"str_.24" to i8*
  %"a.5" = load double, double* %"a"
  %"b.5" = load double, double* %"b"
  %"divtmp.1" = fdiv double %"a.5", %"b.5"
  %"floortmp" = call double @"floor"(double %"divtmp.1")
  %".66" = bitcast [4 x i8]* @"fmt_.25" to i8*
  %".67" = call i32 (i8*, ...) @"printf"(i8* %".66", i8* %".65")
  %".68" = fptosi double %"floortmp" to i64
  %".69" = sitofp i64 %".68" to double
  %"is_int.4" = fcmp oeq double %"floortmp", %".69"
  br i1 %"is_int.4", label %"print_int.4", label %"print_float.4"
print_int.4:
  %".71" = bitcast [5 x i8]* @"fmt_int_.26" to i8*
  %".72" = call i32 (i8*, ...) @"printf"(i8* %".71", i64 %".68")
  br label %"print_merge.4"
print_float.4:
  %".74" = bitcast [6 x i8]* @"fmt_flt_.27" to i8*
  %".75" = call i32 (i8*, ...) @"printf"(i8* %".74", double %"floortmp")
  br label %"print_merge.4"
print_merge.4:
  %".77" = bitcast [2 x i8]* @"nl_.28" to i8*
  %".78" = call i32 (i8*, ...) @"printf"(i8* %".77")
  %".79" = bitcast [15 x i8]* @"str_.29" to i8*
  %"a.6" = load double, double* %"a"
  %"b.6" = load double, double* %"b"
  %"modtmp" = call double @"fmod"(double %"a.6", double %"b.6")
  %".80" = bitcast [4 x i8]* @"fmt_.30" to i8*
  %".81" = call i32 (i8*, ...) @"printf"(i8* %".80", i8* %".79")
  %".82" = fptosi double %"modtmp" to i64
  %".83" = sitofp i64 %".82" to double
  %"is_int.5" = fcmp oeq double %"modtmp", %".83"
  br i1 %"is_int.5", label %"print_int.5", label %"print_float.5"
print_int.5:
  %".85" = bitcast [5 x i8]* @"fmt_int_.31" to i8*
  %".86" = call i32 (i8*, ...) @"printf"(i8* %".85", i64 %".82")
  br label %"print_merge.5"
print_float.5:
  %".88" = bitcast [6 x i8]* @"fmt_flt_.32" to i8*
  %".89" = call i32 (i8*, ...) @"printf"(i8* %".88", double %"modtmp")
  br label %"print_merge.5"
print_merge.5:
  %".91" = bitcast [2 x i8]* @"nl_.33" to i8*
  %".92" = call i32 (i8*, ...) @"printf"(i8* %".91")
  %".93" = bitcast [22 x i8]* @"str_.34" to i8*
  %"a.7" = load double, double* %"a"
  %"b.7" = load double, double* %"b"
  %"powtmp" = call double @"pow"(double %"a.7", double %"b.7")
  %".94" = bitcast [4 x i8]* @"fmt_.35" to i8*
  %".95" = call i32 (i8*, ...) @"printf"(i8* %".94", i8* %".93")
  %".96" = fptosi double %"powtmp" to i64
  %".97" = sitofp i64 %".96" to double
  %"is_int.6" = fcmp oeq double %"powtmp", %".97"
  br i1 %"is_int.6", label %"print_int.6", label %"print_float.6"
print_int.6:
  %".99" = bitcast [5 x i8]* @"fmt_int_.36" to i8*
  %".100" = call i32 (i8*, ...) @"printf"(i8* %".99", i64 %".96")
  br label %"print_merge.6"
print_float.6:
  %".102" = bitcast [6 x i8]* @"fmt_flt_.37" to i8*
  %".103" = call i32 (i8*, ...) @"printf"(i8* %".102", double %"powtmp")
  br label %"print_merge.6"
print_merge.6:
  %".105" = bitcast [2 x i8]* @"nl_.38" to i8*
  %".106" = call i32 (i8*, ...) @"printf"(i8* %".105")
  %".107" = bitcast [17 x i8]* @"str_.39" to i8*
  %"a.8" = load double, double* %"a"
  %"b.8" = load double, double* %"b"
  %"gttmp" = fcmp ogt double %"a.8", %"b.8"
  %".108" = bitcast [4 x i8]* @"fmt_.40" to i8*
  %".109" = call i32 (i8*, ...) @"printf"(i8* %".108", i8* %".107")
  %".110" = bitcast [3 x i8]* @"fmt_.41" to i8*
  %".111" = call i32 (i8*, ...) @"printf"(i8* %".110", i1 %"gttmp")
  %".112" = bitcast [2 x i8]* @"nl_.42" to i8*
  %".113" = call i32 (i8*, ...) @"printf"(i8* %".112")
  %".114" = bitcast [18 x i8]* @"str_.43" to i8*
  %"a.9" = load double, double* %"a"
  %"b.9" = load double, double* %"b"
  %"lttmp" = fcmp olt double %"a.9", %"b.9"
  %".115" = bitcast [4 x i8]* @"fmt_.44" to i8*
  %".116" = call i32 (i8*, ...) @"printf"(i8* %".115", i8* %".114")
  %".117" = bitcast [3 x i8]* @"fmt_.45" to i8*
  %".118" = call i32 (i8*, ...) @"printf"(i8* %".117", i1 %"lttmp")
  %".119" = bitcast [2 x i8]* @"nl_.46" to i8*
  %".120" = call i32 (i8*, ...) @"printf"(i8* %".119")
  %".121" = bitcast [19 x i8]* @"str_.47" to i8*
  %"a.10" = load double, double* %"a"
  %"eqtmp" = fcmp oeq double %"a.10", 0x4024000000000000
  %".122" = bitcast [4 x i8]* @"fmt_.48" to i8*
  %".123" = call i32 (i8*, ...) @"printf"(i8* %".122", i8* %".121")
  %".124" = bitcast [3 x i8]* @"fmt_.49" to i8*
  %".125" = call i32 (i8*, ...) @"printf"(i8* %".124", i1 %"eqtmp")
  %".126" = bitcast [2 x i8]* @"nl_.50" to i8*
  %".127" = call i32 (i8*, ...) @"printf"(i8* %".126")
  %".128" = bitcast [18 x i8]* @"str_.51" to i8*
  %"a.11" = load double, double* %"a"
  %"b.10" = load double, double* %"b"
  %"netmp" = fcmp one double %"a.11", %"b.10"
  %".129" = bitcast [4 x i8]* @"fmt_.52" to i8*
  %".130" = call i32 (i8*, ...) @"printf"(i8* %".129", i8* %".128")
  %".131" = bitcast [3 x i8]* @"fmt_.53" to i8*
  %".132" = call i32 (i8*, ...) @"printf"(i8* %".131", i1 %"netmp")
  %".133" = bitcast [2 x i8]* @"nl_.54" to i8*
  %".134" = call i32 (i8*, ...) @"printf"(i8* %".133")
  %".135" = bitcast [19 x i8]* @"str_.55" to i8*
  %"a.12" = load double, double* %"a"
  %"getmp" = fcmp oge double %"a.12", 0x4024000000000000
  %".136" = bitcast [4 x i8]* @"fmt_.56" to i8*
  %".137" = call i32 (i8*, ...) @"printf"(i8* %".136", i8* %".135")
  %".138" = bitcast [3 x i8]* @"fmt_.57" to i8*
  %".139" = call i32 (i8*, ...) @"printf"(i8* %".138", i1 %"getmp")
  %".140" = bitcast [2 x i8]* @"nl_.58" to i8*
  %".141" = call i32 (i8*, ...) @"printf"(i8* %".140")
  %".142" = bitcast [18 x i8]* @"str_.59" to i8*
  %"b.11" = load double, double* %"b"
  %"a.13" = load double, double* %"a"
  %"letmp" = fcmp ole double %"b.11", %"a.13"
  %".143" = bitcast [4 x i8]* @"fmt_.60" to i8*
  %".144" = call i32 (i8*, ...) @"printf"(i8* %".143", i8* %".142")
  %".145" = bitcast [3 x i8]* @"fmt_.61" to i8*
  %".146" = call i32 (i8*, ...) @"printf"(i8* %".145", i1 %"letmp")
  %".147" = bitcast [2 x i8]* @"nl_.62" to i8*
  %".148" = call i32 (i8*, ...) @"printf"(i8* %".147")
  %"t" = alloca i1
  store i1 1, i1* %"t"
  %"f" = alloca i1
  store i1 0, i1* %"f"
  %".151" = bitcast [26 x i8]* @"str_.63" to i8*
  %"t.1" = load i1, i1* %"t"
  %".152" = uitofp i1 %"t.1" to double
  br i1 %"t.1", label %"and_right", label %"and_merge"
and_right:
  %"f.1" = load i1, i1* %"f"
  %".154" = uitofp i1 %"f.1" to double
  br label %"and_merge"
and_merge:
  %"andtmp" = phi  double [%".152", %"print_merge.6"], [%".154", %"and_right"]
  %".156" = bitcast [4 x i8]* @"fmt_.64" to i8*
  %".157" = call i32 (i8*, ...) @"printf"(i8* %".156", i8* %".151")
  %".158" = fptosi double %"andtmp" to i64
  %".159" = sitofp i64 %".158" to double
  %"is_int.7" = fcmp oeq double %"andtmp", %".159"
  br i1 %"is_int.7", label %"print_int.7", label %"print_float.7"
print_int.7:
  %".161" = bitcast [5 x i8]* @"fmt_int_.65" to i8*
  %".162" = call i32 (i8*, ...) @"printf"(i8* %".161", i64 %".158")
  br label %"print_merge.7"
print_float.7:
  %".164" = bitcast [6 x i8]* @"fmt_flt_.66" to i8*
  %".165" = call i32 (i8*, ...) @"printf"(i8* %".164", double %"andtmp")
  br label %"print_merge.7"
print_merge.7:
  %".167" = bitcast [2 x i8]* @"nl_.67" to i8*
  %".168" = call i32 (i8*, ...) @"printf"(i8* %".167")
  %".169" = bitcast [24 x i8]* @"str_.68" to i8*
  %"t.2" = load i1, i1* %"t"
  %".170" = uitofp i1 %"t.2" to double
  br i1 %"t.2", label %"or_merge", label %"or_right"
or_right:
  %"f.2" = load i1, i1* %"f"
  %".172" = uitofp i1 %"f.2" to double
  br label %"or_merge"
or_merge:
  %"ortmp" = phi  double [%".170", %"print_merge.7"], [%".172", %"or_right"]
  %".174" = bitcast [4 x i8]* @"fmt_.69" to i8*
  %".175" = call i32 (i8*, ...) @"printf"(i8* %".174", i8* %".169")
  %".176" = fptosi double %"ortmp" to i64
  %".177" = sitofp i64 %".176" to double
  %"is_int.8" = fcmp oeq double %"ortmp", %".177"
  br i1 %"is_int.8", label %"print_int.8", label %"print_float.8"
print_int.8:
  %".179" = bitcast [5 x i8]* @"fmt_int_.70" to i8*
  %".180" = call i32 (i8*, ...) @"printf"(i8* %".179", i64 %".176")
  br label %"print_merge.8"
print_float.8:
  %".182" = bitcast [6 x i8]* @"fmt_flt_.71" to i8*
  %".183" = call i32 (i8*, ...) @"printf"(i8* %".182", double %"ortmp")
  br label %"print_merge.8"
print_merge.8:
  %".185" = bitcast [2 x i8]* @"nl_.72" to i8*
  %".186" = call i32 (i8*, ...) @"printf"(i8* %".185")
  %".187" = bitcast [20 x i8]* @"str_.73" to i8*
  %"t.3" = load i1, i1* %"t"
  %"nottmp" = xor i1 %"t.3", 1
  %".188" = uitofp i1 %"nottmp" to double
  %".189" = bitcast [4 x i8]* @"fmt_.74" to i8*
  %".190" = call i32 (i8*, ...) @"printf"(i8* %".189", i8* %".187")
  %".191" = fptosi double %".188" to i64
  %".192" = sitofp i64 %".191" to double
  %"is_int.9" = fcmp oeq double %".188", %".192"
  br i1 %"is_int.9", label %"print_int.9", label %"print_float.9"
print_int.9:
  %".194" = bitcast [5 x i8]* @"fmt_int_.75" to i8*
  %".195" = call i32 (i8*, ...) @"printf"(i8* %".194", i64 %".191")
  br label %"print_merge.9"
print_float.9:
  %".197" = bitcast [6 x i8]* @"fmt_flt_.76" to i8*
  %".198" = call i32 (i8*, ...) @"printf"(i8* %".197", double %".188")
  br label %"print_merge.9"
print_merge.9:
  %".200" = bitcast [2 x i8]* @"nl_.77" to i8*
  %".201" = call i32 (i8*, ...) @"printf"(i8* %".200")
  %".202" = bitcast [20 x i8]* @"str_.78" to i8*
  %"f.3" = load i1, i1* %"f"
  %"nottmp.1" = xor i1 %"f.3", 1
  %".203" = uitofp i1 %"nottmp.1" to double
  %".204" = bitcast [4 x i8]* @"fmt_.79" to i8*
  %".205" = call i32 (i8*, ...) @"printf"(i8* %".204", i8* %".202")
  %".206" = fptosi double %".203" to i64
  %".207" = sitofp i64 %".206" to double
  %"is_int.10" = fcmp oeq double %".203", %".207"
  br i1 %"is_int.10", label %"print_int.10", label %"print_float.10"
print_int.10:
  %".209" = bitcast [5 x i8]* @"fmt_int_.80" to i8*
  %".210" = call i32 (i8*, ...) @"printf"(i8* %".209", i64 %".206")
  br label %"print_merge.10"
print_float.10:
  %".212" = bitcast [6 x i8]* @"fmt_flt_.81" to i8*
  %".213" = call i32 (i8*, ...) @"printf"(i8* %".212", double %".203")
  br label %"print_merge.10"
print_merge.10:
  %".215" = bitcast [2 x i8]* @"nl_.82" to i8*
  %".216" = call i32 (i8*, ...) @"printf"(i8* %".215")
  %".217" = bitcast [25 x i8]* @"str_.83" to i8*
  %"multmp.1" = fmul double 0x4008000000000000, 0x4010000000000000
  %"addtmp.1" = fadd double 0x4000000000000000, %"multmp.1"
  %".218" = bitcast [4 x i8]* @"fmt_.84" to i8*
  %".219" = call i32 (i8*, ...) @"printf"(i8* %".218", i8* %".217")
  %".220" = fptosi double %"addtmp.1" to i64
  %".221" = sitofp i64 %".220" to double
  %"is_int.11" = fcmp oeq double %"addtmp.1", %".221"
  br i1 %"is_int.11", label %"print_int.11", label %"print_float.11"
print_int.11:
  %".223" = bitcast [5 x i8]* @"fmt_int_.85" to i8*
  %".224" = call i32 (i8*, ...) @"printf"(i8* %".223", i64 %".220")
  br label %"print_merge.11"
print_float.11:
  %".226" = bitcast [6 x i8]* @"fmt_flt_.86" to i8*
  %".227" = call i32 (i8*, ...) @"printf"(i8* %".226", double %"addtmp.1")
  br label %"print_merge.11"
print_merge.11:
  %".229" = bitcast [2 x i8]* @"nl_.87" to i8*
  %".230" = call i32 (i8*, ...) @"printf"(i8* %".229")
  %".231" = bitcast [27 x i8]* @"str_.88" to i8*
  %"addtmp.2" = fadd double 0x4000000000000000, 0x4008000000000000
  %"multmp.2" = fmul double %"addtmp.2", 0x4010000000000000
  %".232" = bitcast [4 x i8]* @"fmt_.89" to i8*
  %".233" = call i32 (i8*, ...) @"printf"(i8* %".232", i8* %".231")
  %".234" = fptosi double %"multmp.2" to i64
  %".235" = sitofp i64 %".234" to double
  %"is_int.12" = fcmp oeq double %"multmp.2", %".235"
  br i1 %"is_int.12", label %"print_int.12", label %"print_float.12"
print_int.12:
  %".237" = bitcast [5 x i8]* @"fmt_int_.90" to i8*
  %".238" = call i32 (i8*, ...) @"printf"(i8* %".237", i64 %".234")
  br label %"print_merge.12"
print_float.12:
  %".240" = bitcast [6 x i8]* @"fmt_flt_.91" to i8*
  %".241" = call i32 (i8*, ...) @"printf"(i8* %".240", double %"multmp.2")
  br label %"print_merge.12"
print_merge.12:
  %".243" = bitcast [2 x i8]* @"nl_.92" to i8*
  %".244" = call i32 (i8*, ...) @"printf"(i8* %".243")
  %".245" = bitcast [43 x i8]* @"str_.93" to i8*
  %".246" = uitofp i1 1 to double
  br i1 1, label %"or_merge.1", label %"or_right.1"
or_right.1:
  %".248" = uitofp i1 0 to double
  br i1 0, label %"and_right.1", label %"and_merge.1"
or_merge.1:
  %"ortmp.1" = phi  double [%".246", %"print_merge.12"], [%"andtmp.1", %"and_merge.1"]
  %".253" = bitcast [4 x i8]* @"fmt_.94" to i8*
  %".254" = call i32 (i8*, ...) @"printf"(i8* %".253", i8* %".245")
  %".255" = fptosi double %"ortmp.1" to i64
  %".256" = sitofp i64 %".255" to double
  %"is_int.13" = fcmp oeq double %"ortmp.1", %".256"
  br i1 %"is_int.13", label %"print_int.13", label %"print_float.13"
and_right.1:
  %".250" = uitofp i1 0 to double
  br label %"and_merge.1"
and_merge.1:
  %"andtmp.1" = phi  double [%".248", %"or_right.1"], [%".250", %"and_right.1"]
  br label %"or_merge.1"
print_int.13:
  %".258" = bitcast [5 x i8]* @"fmt_int_.95" to i8*
  %".259" = call i32 (i8*, ...) @"printf"(i8* %".258", i64 %".255")
  br label %"print_merge.13"
print_float.13:
  %".261" = bitcast [6 x i8]* @"fmt_flt_.96" to i8*
  %".262" = call i32 (i8*, ...) @"printf"(i8* %".261", double %"ortmp.1")
  br label %"print_merge.13"
print_merge.13:
  %".264" = bitcast [2 x i8]* @"nl_.97" to i8*
  %".265" = call i32 (i8*, ...) @"printf"(i8* %".264")
  %".266" = bitcast [46 x i8]* @"str_.98" to i8*
  %".267" = uitofp i1 1 to double
  br i1 1, label %"or_merge.2", label %"or_right.2"
or_right.2:
  %".269" = uitofp i1 0 to double
  br label %"or_merge.2"
or_merge.2:
  %"ortmp.2" = phi  double [%".267", %"print_merge.13"], [%".269", %"or_right.2"]
  %".271" = fcmp one double %"ortmp.2",              0x0
  br i1 %".271", label %"and_right.2", label %"and_merge.2"
and_right.2:
  %".273" = uitofp i1 0 to double
  br label %"and_merge.2"
and_merge.2:
  %"andtmp.2" = phi  double [%"ortmp.2", %"or_merge.2"], [%".273", %"and_right.2"]
  %".275" = bitcast [4 x i8]* @"fmt_.99" to i8*
  %".276" = call i32 (i8*, ...) @"printf"(i8* %".275", i8* %".266")
  %".277" = fptosi double %"andtmp.2" to i64
  %".278" = sitofp i64 %".277" to double
  %"is_int.14" = fcmp oeq double %"andtmp.2", %".278"
  br i1 %"is_int.14", label %"print_int.14", label %"print_float.14"
print_int.14:
  %".280" = bitcast [5 x i8]* @"fmt_int_.100" to i8*
  %".281" = call i32 (i8*, ...) @"printf"(i8* %".280", i64 %".277")
  br label %"print_merge.14"
print_float.14:
  %".283" = bitcast [6 x i8]* @"fmt_flt_.101" to i8*
  %".284" = call i32 (i8*, ...) @"printf"(i8* %".283", double %"andtmp.2")
  br label %"print_merge.14"
print_merge.14:
  %".286" = bitcast [2 x i8]* @"nl_.102" to i8*
  %".287" = call i32 (i8*, ...) @"printf"(i8* %".286")
  ret i32 0
}

@"str_.1" = internal constant [41 x i8] c"=== Teste 2: Operadores e Expressoes ===\00"
@"fmt_.2" = internal constant [3 x i8] c"%s\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"str_.4" = internal constant [13 x i8] c"Soma (10+3):\00"
@"fmt_.5" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.6" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.7" = internal constant [6 x i8] c"%.14g\00"
@"nl_.8" = internal constant [2 x i8] c"\0a\00"
@"str_.9" = internal constant [18 x i8] c"Subtracao (10-3):\00"
@"fmt_.10" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.11" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.12" = internal constant [6 x i8] c"%.14g\00"
@"nl_.13" = internal constant [2 x i8] c"\0a\00"
@"str_.14" = internal constant [22 x i8] c"Multiplicacao (10*3):\00"
@"fmt_.15" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.16" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.17" = internal constant [6 x i8] c"%.14g\00"
@"nl_.18" = internal constant [2 x i8] c"\0a\00"
@"str_.19" = internal constant [16 x i8] c"Divisao (10/3):\00"
@"fmt_.20" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.21" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.22" = internal constant [6 x i8] c"%.14g\00"
@"nl_.23" = internal constant [2 x i8] c"\0a\00"
@"str_.24" = internal constant [25 x i8] c"Divisao Inteira (10//3):\00"
@"fmt_.25" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.26" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.27" = internal constant [6 x i8] c"%.14g\00"
@"nl_.28" = internal constant [2 x i8] c"\0a\00"
@"str_.29" = internal constant [15 x i8] c"Modulo (10%3):\00"
@"fmt_.30" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.31" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.32" = internal constant [6 x i8] c"%.14g\00"
@"nl_.33" = internal constant [2 x i8] c"\0a\00"
@"str_.34" = internal constant [22 x i8] c"Exponenciacao (10^3):\00"
@"fmt_.35" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.36" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.37" = internal constant [6 x i8] c"%.14g\00"
@"nl_.38" = internal constant [2 x i8] c"\0a\00"
@"str_.39" = internal constant [17 x i8] c"10 > 3 (true/1):\00"
@"fmt_.40" = internal constant [4 x i8] c"%s \00"
@"fmt_.41" = internal constant [3 x i8] c"%d\00"
@"nl_.42" = internal constant [2 x i8] c"\0a\00"
@"str_.43" = internal constant [18 x i8] c"10 < 3 (false/0):\00"
@"fmt_.44" = internal constant [4 x i8] c"%s \00"
@"fmt_.45" = internal constant [3 x i8] c"%d\00"
@"nl_.46" = internal constant [2 x i8] c"\0a\00"
@"str_.47" = internal constant [19 x i8] c"10 == 10 (true/1):\00"
@"fmt_.48" = internal constant [4 x i8] c"%s \00"
@"fmt_.49" = internal constant [3 x i8] c"%d\00"
@"nl_.50" = internal constant [2 x i8] c"\0a\00"
@"str_.51" = internal constant [18 x i8] c"10 ~= 3 (true/1):\00"
@"fmt_.52" = internal constant [4 x i8] c"%s \00"
@"fmt_.53" = internal constant [3 x i8] c"%d\00"
@"nl_.54" = internal constant [2 x i8] c"\0a\00"
@"str_.55" = internal constant [19 x i8] c"10 >= 10 (true/1):\00"
@"fmt_.56" = internal constant [4 x i8] c"%s \00"
@"fmt_.57" = internal constant [3 x i8] c"%d\00"
@"nl_.58" = internal constant [2 x i8] c"\0a\00"
@"str_.59" = internal constant [18 x i8] c"3 <= 10 (true/1):\00"
@"fmt_.60" = internal constant [4 x i8] c"%s \00"
@"fmt_.61" = internal constant [3 x i8] c"%d\00"
@"nl_.62" = internal constant [2 x i8] c"\0a\00"
@"str_.63" = internal constant [26 x i8] c"true and false (false/0):\00"
@"fmt_.64" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.65" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.66" = internal constant [6 x i8] c"%.14g\00"
@"nl_.67" = internal constant [2 x i8] c"\0a\00"
@"str_.68" = internal constant [24 x i8] c"true or false (true/1):\00"
@"fmt_.69" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.70" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.71" = internal constant [6 x i8] c"%.14g\00"
@"nl_.72" = internal constant [2 x i8] c"\0a\00"
@"str_.73" = internal constant [20 x i8] c"not true (false/0):\00"
@"fmt_.74" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.75" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.76" = internal constant [6 x i8] c"%.14g\00"
@"nl_.77" = internal constant [2 x i8] c"\0a\00"
@"str_.78" = internal constant [20 x i8] c"not false (true/1):\00"
@"fmt_.79" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.80" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.81" = internal constant [6 x i8] c"%.14g\00"
@"nl_.82" = internal constant [2 x i8] c"\0a\00"
@"str_.83" = internal constant [25 x i8] c"2 + 3 * 4 (esperado 14):\00"
@"fmt_.84" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.85" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.86" = internal constant [6 x i8] c"%.14g\00"
@"nl_.87" = internal constant [2 x i8] c"\0a\00"
@"str_.88" = internal constant [27 x i8] c"(2 + 3) * 4 (esperado 20):\00"
@"fmt_.89" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.90" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.91" = internal constant [6 x i8] c"%.14g\00"
@"nl_.92" = internal constant [2 x i8] c"\0a\00"
@"str_.93" = internal constant [43 x i8] c"true or false and false (esperado 1/true):\00"
@"fmt_.94" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.95" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.96" = internal constant [6 x i8] c"%.14g\00"
@"nl_.97" = internal constant [2 x i8] c"\0a\00"
@"str_.98" = internal constant [46 x i8] c"(true or false) and false (esperado 0/false):\00"
@"fmt_.99" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.100" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.101" = internal constant [6 x i8] c"%.14g\00"
@"nl_.102" = internal constant [2 x i8] c"\0a\00"