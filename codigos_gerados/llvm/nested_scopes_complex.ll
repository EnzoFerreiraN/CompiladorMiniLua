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
  call void @"minilua_print_number"(double %"x.1")
  %".9" = bitcast [2 x i8]* @"sp_.4" to i8*
  %".10" = call i32 (i8*, ...) @"printf"(i8* %".9")
  %".11" = bitcast [4 x i8]* @"fmt_.5" to i8*
  %".12" = call i32 (i8*, ...) @"printf"(i8* %".11", i8* %".5")
  call void @"minilua_print_number"(double %"y.1")
  %".14" = bitcast [2 x i8]* @"nl_.6" to i8*
  %".15" = call i32 (i8*, ...) @"printf"(i8* %".14")
  %"x.2" = alloca double
  store double 0x4024000000000000, double* %"x.2"
  %".17" = bitcast [13 x i8]* @"str_.7" to i8*
  %"x.3" = load double, double* %"x.2"
  %".18" = bitcast [4 x i8]* @"str_.8" to i8*
  %"y.2" = load double, double* %"y"
  %".19" = bitcast [4 x i8]* @"fmt_.9" to i8*
  %".20" = call i32 (i8*, ...) @"printf"(i8* %".19", i8* %".17")
  call void @"minilua_print_number"(double %"x.3")
  %".22" = bitcast [2 x i8]* @"sp_.10" to i8*
  %".23" = call i32 (i8*, ...) @"printf"(i8* %".22")
  %".24" = bitcast [4 x i8]* @"fmt_.11" to i8*
  %".25" = call i32 (i8*, ...) @"printf"(i8* %".24", i8* %".18")
  call void @"minilua_print_number"(double %"y.2")
  %".27" = bitcast [2 x i8]* @"nl_.12" to i8*
  %".28" = call i32 (i8*, ...) @"printf"(i8* %".27")
  %"x.4" = alloca double
  store double 0x3ff0000000000000, double* %"x.4"
  %"y.3" = alloca double
  store double 0x4034000000000000, double* %"y.3"
  %".31" = bitcast [13 x i8]* @"str_.13" to i8*
  %"x.5" = load double, double* %"x.4"
  %".32" = bitcast [4 x i8]* @"str_.14" to i8*
  %"y.4" = load double, double* %"y.3"
  %".33" = bitcast [4 x i8]* @"fmt_.15" to i8*
  %".34" = call i32 (i8*, ...) @"printf"(i8* %".33", i8* %".31")
  call void @"minilua_print_number"(double %"x.5")
  %".36" = bitcast [2 x i8]* @"sp_.16" to i8*
  %".37" = call i32 (i8*, ...) @"printf"(i8* %".36")
  %".38" = bitcast [4 x i8]* @"fmt_.17" to i8*
  %".39" = call i32 (i8*, ...) @"printf"(i8* %".38", i8* %".32")
  call void @"minilua_print_number"(double %"y.4")
  %".41" = bitcast [2 x i8]* @"nl_.18" to i8*
  %".42" = call i32 (i8*, ...) @"printf"(i8* %".41")
  %".43" = bitcast [21 x i8]* @"str_.19" to i8*
  %"x.6" = load double, double* %"x.2"
  %".44" = bitcast [4 x i8]* @"str_.20" to i8*
  %"y.5" = load double, double* %"y"
  %".45" = bitcast [4 x i8]* @"fmt_.21" to i8*
  %".46" = call i32 (i8*, ...) @"printf"(i8* %".45", i8* %".43")
  call void @"minilua_print_number"(double %"x.6")
  %".48" = bitcast [2 x i8]* @"sp_.22" to i8*
  %".49" = call i32 (i8*, ...) @"printf"(i8* %".48")
  %".50" = bitcast [4 x i8]* @"fmt_.23" to i8*
  %".51" = call i32 (i8*, ...) @"printf"(i8* %".50", i8* %".44")
  call void @"minilua_print_number"(double %"y.5")
  %".53" = bitcast [2 x i8]* @"nl_.24" to i8*
  %".54" = call i32 (i8*, ...) @"printf"(i8* %".53")
  %".55" = bitcast [18 x i8]* @"str_.25" to i8*
  %"x.7" = load double, double* %"x"
  %".56" = bitcast [4 x i8]* @"str_.26" to i8*
  %"y.6" = load double, double* %"y"
  %".57" = bitcast [4 x i8]* @"fmt_.27" to i8*
  %".58" = call i32 (i8*, ...) @"printf"(i8* %".57", i8* %".55")
  call void @"minilua_print_number"(double %"x.7")
  %".60" = bitcast [2 x i8]* @"sp_.28" to i8*
  %".61" = call i32 (i8*, ...) @"printf"(i8* %".60")
  %".62" = bitcast [4 x i8]* @"fmt_.29" to i8*
  %".63" = call i32 (i8*, ...) @"printf"(i8* %".62", i8* %".56")
  call void @"minilua_print_number"(double %"y.6")
  %".65" = bitcast [2 x i8]* @"nl_.30" to i8*
  %".66" = call i32 (i8*, ...) @"printf"(i8* %".65")
  %"i" = alloca double
  store double 0x4049000000000000, double* %"i"
  %".68" = bitcast [17 x i8]* @"str_.31" to i8*
  %"i.1" = load double, double* %"i"
  %".69" = bitcast [4 x i8]* @"fmt_.32" to i8*
  %".70" = call i32 (i8*, ...) @"printf"(i8* %".69", i8* %".68")
  call void @"minilua_print_number"(double %"i.1")
  %".72" = bitcast [2 x i8]* @"nl_.33" to i8*
  %".73" = call i32 (i8*, ...) @"printf"(i8* %".72")
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
  %".77" = bitcast [17 x i8]* @"str_.34" to i8*
  %"i.4" = load double, double* %"i.2"
  %".78" = bitcast [4 x i8]* @"fmt_.35" to i8*
  %".79" = call i32 (i8*, ...) @"printf"(i8* %".78", i8* %".77")
  call void @"minilua_print_number"(double %"i.4")
  %".81" = bitcast [2 x i8]* @"nl_.36" to i8*
  %".82" = call i32 (i8*, ...) @"printf"(i8* %".81")
  %"x.8" = alloca double
  %"i.5" = load double, double* %"i.2"
  %"multmp" = fmul double %"i.5", 0x4024000000000000
  store double %"multmp", double* %"x.8"
  %".84" = bitcast [22 x i8]* @"str_.37" to i8*
  %"x.9" = load double, double* %"x.8"
  %".85" = bitcast [4 x i8]* @"fmt_.38" to i8*
  %".86" = call i32 (i8*, ...) @"printf"(i8* %".85", i8* %".84")
  call void @"minilua_print_number"(double %"x.9")
  %".88" = bitcast [2 x i8]* @"nl_.39" to i8*
  %".89" = call i32 (i8*, ...) @"printf"(i8* %".88")
  %"i.6" = load double, double* %"i.2"
  %"nextval" = fadd double %"i.6", 0x3ff0000000000000
  store double %"nextval", double* %"i.2"
  br label %"for_cond"
for_merge:
  %".92" = bitcast [16 x i8]* @"str_.40" to i8*
  %"i.7" = load double, double* %"i"
  %".93" = bitcast [4 x i8]* @"fmt_.41" to i8*
  %".94" = call i32 (i8*, ...) @"printf"(i8* %".93", i8* %".92")
  call void @"minilua_print_number"(double %"i.7")
  %".96" = bitcast [2 x i8]* @"nl_.42" to i8*
  %".97" = call i32 (i8*, ...) @"printf"(i8* %".96")
  %"x.10" = load double, double* %"x"
  %"gttmp" = fcmp ogt double %"x.10", 0x4049000000000000
  br i1 %"gttmp", label %"then_0", label %"else_0"
if_merge:
  %".115" = bitcast [14 x i8]* @"str_.49" to i8*
  %"x.13" = load double, double* %"x"
  %".116" = bitcast [4 x i8]* @"fmt_.50" to i8*
  %".117" = call i32 (i8*, ...) @"printf"(i8* %".116", i8* %".115")
  call void @"minilua_print_number"(double %"x.13")
  %".119" = bitcast [2 x i8]* @"nl_.51" to i8*
  %".120" = call i32 (i8*, ...) @"printf"(i8* %".119")
  %"w" = alloca double
  store double              0x0, double* %"w"
  br label %"while_cond"
then_0:
  %"z" = alloca double
  store double 0x408f380000000000, double* %"z"
  %".100" = bitcast [15 x i8]* @"str_.43" to i8*
  %"z.1" = load double, double* %"z"
  %".101" = bitcast [4 x i8]* @"fmt_.44" to i8*
  %".102" = call i32 (i8*, ...) @"printf"(i8* %".101", i8* %".100")
  call void @"minilua_print_number"(double %"z.1")
  %".104" = bitcast [2 x i8]* @"nl_.45" to i8*
  %".105" = call i32 (i8*, ...) @"printf"(i8* %".104")
  %"x.11" = alloca double
  store double 0x4081580000000000, double* %"x.11"
  %".107" = bitcast [15 x i8]* @"str_.46" to i8*
  %"x.12" = load double, double* %"x.11"
  %".108" = bitcast [4 x i8]* @"fmt_.47" to i8*
  %".109" = call i32 (i8*, ...) @"printf"(i8* %".108", i8* %".107")
  call void @"minilua_print_number"(double %"x.12")
  %".111" = bitcast [2 x i8]* @"nl_.48" to i8*
  %".112" = call i32 (i8*, ...) @"printf"(i8* %".111")
  br label %"if_merge"
else_0:
  br label %"if_merge"
while_cond:
  %"w.1" = load double, double* %"w"
  %"lttmp" = fcmp olt double %"w.1", 0x4000000000000000
  br i1 %"lttmp", label %"while_body", label %"while_merge"
while_body:
  %"x.14" = alloca double
  store double 0x4088480000000000, double* %"x.14"
  %".125" = bitcast [18 x i8]* @"str_.52" to i8*
  %"x.15" = load double, double* %"x.14"
  %".126" = bitcast [4 x i8]* @"fmt_.53" to i8*
  %".127" = call i32 (i8*, ...) @"printf"(i8* %".126", i8* %".125")
  call void @"minilua_print_number"(double %"x.15")
  %".129" = bitcast [2 x i8]* @"nl_.54" to i8*
  %".130" = call i32 (i8*, ...) @"printf"(i8* %".129")
  %"w.2" = load double, double* %"w"
  %"addtmp" = fadd double %"w.2", 0x3ff0000000000000
  store double %"addtmp", double* %"w"
  br label %"while_cond"
while_merge:
  %".133" = bitcast [17 x i8]* @"str_.55" to i8*
  %"x.16" = load double, double* %"x"
  %".134" = bitcast [4 x i8]* @"fmt_.56" to i8*
  %".135" = call i32 (i8*, ...) @"printf"(i8* %".134", i8* %".133")
  call void @"minilua_print_number"(double %"x.16")
  %".137" = bitcast [2 x i8]* @"nl_.57" to i8*
  %".138" = call i32 (i8*, ...) @"printf"(i8* %".137")
  ret i32 0
}

@"str_.1" = internal constant [16 x i8] c"Main start: x =\00"
@"str_.2" = internal constant [4 x i8] c"y =\00"
@"fmt_.3" = internal constant [4 x i8] c"%s \00"
@"sp_.4" = internal constant [2 x i8] c" \00"
@"fmt_.5" = internal constant [4 x i8] c"%s \00"
@"nl_.6" = internal constant [2 x i8] c"\0a\00"
@"str_.7" = internal constant [13 x i8] c"Block 1: x =\00"
@"str_.8" = internal constant [4 x i8] c"y =\00"
@"fmt_.9" = internal constant [4 x i8] c"%s \00"
@"sp_.10" = internal constant [2 x i8] c" \00"
@"fmt_.11" = internal constant [4 x i8] c"%s \00"
@"nl_.12" = internal constant [2 x i8] c"\0a\00"
@"str_.13" = internal constant [13 x i8] c"Block 2: x =\00"
@"str_.14" = internal constant [4 x i8] c"y =\00"
@"fmt_.15" = internal constant [4 x i8] c"%s \00"
@"sp_.16" = internal constant [2 x i8] c" \00"
@"fmt_.17" = internal constant [4 x i8] c"%s \00"
@"nl_.18" = internal constant [2 x i8] c"\0a\00"
@"str_.19" = internal constant [21 x i8] c"Back to Block 1: x =\00"
@"str_.20" = internal constant [4 x i8] c"y =\00"
@"fmt_.21" = internal constant [4 x i8] c"%s \00"
@"sp_.22" = internal constant [2 x i8] c" \00"
@"fmt_.23" = internal constant [4 x i8] c"%s \00"
@"nl_.24" = internal constant [2 x i8] c"\0a\00"
@"str_.25" = internal constant [18 x i8] c"Back to Main: x =\00"
@"str_.26" = internal constant [4 x i8] c"y =\00"
@"fmt_.27" = internal constant [4 x i8] c"%s \00"
@"sp_.28" = internal constant [2 x i8] c" \00"
@"fmt_.29" = internal constant [4 x i8] c"%s \00"
@"nl_.30" = internal constant [2 x i8] c"\0a\00"
@"str_.31" = internal constant [17 x i8] c"Before loop: i =\00"
@"fmt_.32" = internal constant [4 x i8] c"%s \00"
@"nl_.33" = internal constant [2 x i8] c"\0a\00"
@"str_.34" = internal constant [17 x i8] c"Inside loop: i =\00"
@"fmt_.35" = internal constant [4 x i8] c"%s \00"
@"nl_.36" = internal constant [2 x i8] c"\0a\00"
@"str_.37" = internal constant [22 x i8] c"Inside loop local x =\00"
@"fmt_.38" = internal constant [4 x i8] c"%s \00"
@"nl_.39" = internal constant [2 x i8] c"\0a\00"
@"str_.40" = internal constant [16 x i8] c"After loop: i =\00"
@"fmt_.41" = internal constant [4 x i8] c"%s \00"
@"nl_.42" = internal constant [2 x i8] c"\0a\00"
@"str_.43" = internal constant [15 x i8] c"Inside if: z =\00"
@"fmt_.44" = internal constant [4 x i8] c"%s \00"
@"nl_.45" = internal constant [2 x i8] c"\0a\00"
@"str_.46" = internal constant [15 x i8] c"Inside if: x =\00"
@"fmt_.47" = internal constant [4 x i8] c"%s \00"
@"nl_.48" = internal constant [2 x i8] c"\0a\00"
@"str_.49" = internal constant [14 x i8] c"After if: x =\00"
@"fmt_.50" = internal constant [4 x i8] c"%s \00"
@"nl_.51" = internal constant [2 x i8] c"\0a\00"
@"str_.52" = internal constant [18 x i8] c"Inside while: x =\00"
@"fmt_.53" = internal constant [4 x i8] c"%s \00"
@"nl_.54" = internal constant [2 x i8] c"\0a\00"
@"str_.55" = internal constant [17 x i8] c"After while: x =\00"
@"fmt_.56" = internal constant [4 x i8] c"%s \00"
@"nl_.57" = internal constant [2 x i8] c"\0a\00"