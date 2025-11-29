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
  %".8" = bitcast [6 x i8]* @"fmt_.4" to i8*
  %".9" = call i32 (i8*, ...) @"printf"(i8* %".8", double %"x.1")
  %".10" = bitcast [4 x i8]* @"fmt_.5" to i8*
  %".11" = call i32 (i8*, ...) @"printf"(i8* %".10", i8* %".5")
  %".12" = bitcast [5 x i8]* @"fmt_.6" to i8*
  %".13" = call i32 (i8*, ...) @"printf"(i8* %".12", double %"y.1")
  %".14" = bitcast [2 x i8]* @"nl_.7" to i8*
  %".15" = call i32 (i8*, ...) @"printf"(i8* %".14")
  %"x.2" = alloca double
  store double 0x4024000000000000, double* %"x.2"
  %".17" = bitcast [13 x i8]* @"str_.8" to i8*
  %"x.3" = load double, double* %"x.2"
  %".18" = bitcast [4 x i8]* @"str_.9" to i8*
  %"y.2" = load double, double* %"y"
  %".19" = bitcast [4 x i8]* @"fmt_.10" to i8*
  %".20" = call i32 (i8*, ...) @"printf"(i8* %".19", i8* %".17")
  %".21" = bitcast [6 x i8]* @"fmt_.11" to i8*
  %".22" = call i32 (i8*, ...) @"printf"(i8* %".21", double %"x.3")
  %".23" = bitcast [4 x i8]* @"fmt_.12" to i8*
  %".24" = call i32 (i8*, ...) @"printf"(i8* %".23", i8* %".18")
  %".25" = bitcast [5 x i8]* @"fmt_.13" to i8*
  %".26" = call i32 (i8*, ...) @"printf"(i8* %".25", double %"y.2")
  %".27" = bitcast [2 x i8]* @"nl_.14" to i8*
  %".28" = call i32 (i8*, ...) @"printf"(i8* %".27")
  %"x.4" = alloca double
  store double 0x3ff0000000000000, double* %"x.4"
  %"y.3" = alloca double
  store double 0x4034000000000000, double* %"y.3"
  %".31" = bitcast [13 x i8]* @"str_.15" to i8*
  %"x.5" = load double, double* %"x.4"
  %".32" = bitcast [4 x i8]* @"str_.16" to i8*
  %"y.4" = load double, double* %"y.3"
  %".33" = bitcast [4 x i8]* @"fmt_.17" to i8*
  %".34" = call i32 (i8*, ...) @"printf"(i8* %".33", i8* %".31")
  %".35" = bitcast [6 x i8]* @"fmt_.18" to i8*
  %".36" = call i32 (i8*, ...) @"printf"(i8* %".35", double %"x.5")
  %".37" = bitcast [4 x i8]* @"fmt_.19" to i8*
  %".38" = call i32 (i8*, ...) @"printf"(i8* %".37", i8* %".32")
  %".39" = bitcast [5 x i8]* @"fmt_.20" to i8*
  %".40" = call i32 (i8*, ...) @"printf"(i8* %".39", double %"y.4")
  %".41" = bitcast [2 x i8]* @"nl_.21" to i8*
  %".42" = call i32 (i8*, ...) @"printf"(i8* %".41")
  %".43" = bitcast [21 x i8]* @"str_.22" to i8*
  %"x.6" = load double, double* %"x.2"
  %".44" = bitcast [4 x i8]* @"str_.23" to i8*
  %"y.5" = load double, double* %"y"
  %".45" = bitcast [4 x i8]* @"fmt_.24" to i8*
  %".46" = call i32 (i8*, ...) @"printf"(i8* %".45", i8* %".43")
  %".47" = bitcast [6 x i8]* @"fmt_.25" to i8*
  %".48" = call i32 (i8*, ...) @"printf"(i8* %".47", double %"x.6")
  %".49" = bitcast [4 x i8]* @"fmt_.26" to i8*
  %".50" = call i32 (i8*, ...) @"printf"(i8* %".49", i8* %".44")
  %".51" = bitcast [5 x i8]* @"fmt_.27" to i8*
  %".52" = call i32 (i8*, ...) @"printf"(i8* %".51", double %"y.5")
  %".53" = bitcast [2 x i8]* @"nl_.28" to i8*
  %".54" = call i32 (i8*, ...) @"printf"(i8* %".53")
  %".55" = bitcast [18 x i8]* @"str_.29" to i8*
  %"x.7" = load double, double* %"x"
  %".56" = bitcast [4 x i8]* @"str_.30" to i8*
  %"y.6" = load double, double* %"y"
  %".57" = bitcast [4 x i8]* @"fmt_.31" to i8*
  %".58" = call i32 (i8*, ...) @"printf"(i8* %".57", i8* %".55")
  %".59" = bitcast [6 x i8]* @"fmt_.32" to i8*
  %".60" = call i32 (i8*, ...) @"printf"(i8* %".59", double %"x.7")
  %".61" = bitcast [4 x i8]* @"fmt_.33" to i8*
  %".62" = call i32 (i8*, ...) @"printf"(i8* %".61", i8* %".56")
  %".63" = bitcast [5 x i8]* @"fmt_.34" to i8*
  %".64" = call i32 (i8*, ...) @"printf"(i8* %".63", double %"y.6")
  %".65" = bitcast [2 x i8]* @"nl_.35" to i8*
  %".66" = call i32 (i8*, ...) @"printf"(i8* %".65")
  %"i" = alloca double
  store double 0x4049000000000000, double* %"i"
  %".68" = bitcast [17 x i8]* @"str_.36" to i8*
  %"i.1" = load double, double* %"i"
  %".69" = bitcast [4 x i8]* @"fmt_.37" to i8*
  %".70" = call i32 (i8*, ...) @"printf"(i8* %".69", i8* %".68")
  %".71" = bitcast [5 x i8]* @"fmt_.38" to i8*
  %".72" = call i32 (i8*, ...) @"printf"(i8* %".71", double %"i.1")
  %".73" = bitcast [2 x i8]* @"nl_.39" to i8*
  %".74" = call i32 (i8*, ...) @"printf"(i8* %".73")
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
  %".78" = bitcast [17 x i8]* @"str_.40" to i8*
  %"i.4" = load double, double* %"i.2"
  %".79" = bitcast [4 x i8]* @"fmt_.41" to i8*
  %".80" = call i32 (i8*, ...) @"printf"(i8* %".79", i8* %".78")
  %".81" = bitcast [5 x i8]* @"fmt_.42" to i8*
  %".82" = call i32 (i8*, ...) @"printf"(i8* %".81", double %"i.4")
  %".83" = bitcast [2 x i8]* @"nl_.43" to i8*
  %".84" = call i32 (i8*, ...) @"printf"(i8* %".83")
  %"x.8" = alloca double
  %"i.5" = load double, double* %"i.2"
  %"multmp" = fmul double %"i.5", 0x4024000000000000
  store double %"multmp", double* %"x.8"
  %".86" = bitcast [22 x i8]* @"str_.44" to i8*
  %"x.9" = load double, double* %"x.8"
  %".87" = bitcast [4 x i8]* @"fmt_.45" to i8*
  %".88" = call i32 (i8*, ...) @"printf"(i8* %".87", i8* %".86")
  %".89" = bitcast [5 x i8]* @"fmt_.46" to i8*
  %".90" = call i32 (i8*, ...) @"printf"(i8* %".89", double %"x.9")
  %".91" = bitcast [2 x i8]* @"nl_.47" to i8*
  %".92" = call i32 (i8*, ...) @"printf"(i8* %".91")
  %"i.6" = load double, double* %"i.2"
  %"nextval" = fadd double %"i.6", 0x3ff0000000000000
  store double %"nextval", double* %"i.2"
  br label %"for_cond"
for_merge:
  %".95" = bitcast [16 x i8]* @"str_.48" to i8*
  %"i.7" = load double, double* %"i"
  %".96" = bitcast [4 x i8]* @"fmt_.49" to i8*
  %".97" = call i32 (i8*, ...) @"printf"(i8* %".96", i8* %".95")
  %".98" = bitcast [5 x i8]* @"fmt_.50" to i8*
  %".99" = call i32 (i8*, ...) @"printf"(i8* %".98", double %"i.7")
  %".100" = bitcast [2 x i8]* @"nl_.51" to i8*
  %".101" = call i32 (i8*, ...) @"printf"(i8* %".100")
  %"x.10" = load double, double* %"x"
  %"gttmp" = fcmp ogt double %"x.10", 0x4049000000000000
  br i1 %"gttmp", label %"then_0", label %"else_0"
if_merge:
  %".121" = bitcast [14 x i8]* @"str_.60" to i8*
  %"x.13" = load double, double* %"x"
  %".122" = bitcast [4 x i8]* @"fmt_.61" to i8*
  %".123" = call i32 (i8*, ...) @"printf"(i8* %".122", i8* %".121")
  %".124" = bitcast [5 x i8]* @"fmt_.62" to i8*
  %".125" = call i32 (i8*, ...) @"printf"(i8* %".124", double %"x.13")
  %".126" = bitcast [2 x i8]* @"nl_.63" to i8*
  %".127" = call i32 (i8*, ...) @"printf"(i8* %".126")
  %"w" = alloca double
  store double              0x0, double* %"w"
  br label %"while_cond"
then_0:
  %"z" = alloca double
  store double 0x408f380000000000, double* %"z"
  %".104" = bitcast [15 x i8]* @"str_.52" to i8*
  %"z.1" = load double, double* %"z"
  %".105" = bitcast [4 x i8]* @"fmt_.53" to i8*
  %".106" = call i32 (i8*, ...) @"printf"(i8* %".105", i8* %".104")
  %".107" = bitcast [5 x i8]* @"fmt_.54" to i8*
  %".108" = call i32 (i8*, ...) @"printf"(i8* %".107", double %"z.1")
  %".109" = bitcast [2 x i8]* @"nl_.55" to i8*
  %".110" = call i32 (i8*, ...) @"printf"(i8* %".109")
  %"x.11" = alloca double
  store double 0x4081580000000000, double* %"x.11"
  %".112" = bitcast [15 x i8]* @"str_.56" to i8*
  %"x.12" = load double, double* %"x.11"
  %".113" = bitcast [4 x i8]* @"fmt_.57" to i8*
  %".114" = call i32 (i8*, ...) @"printf"(i8* %".113", i8* %".112")
  %".115" = bitcast [5 x i8]* @"fmt_.58" to i8*
  %".116" = call i32 (i8*, ...) @"printf"(i8* %".115", double %"x.12")
  %".117" = bitcast [2 x i8]* @"nl_.59" to i8*
  %".118" = call i32 (i8*, ...) @"printf"(i8* %".117")
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
  %".132" = bitcast [18 x i8]* @"str_.64" to i8*
  %"x.15" = load double, double* %"x.14"
  %".133" = bitcast [4 x i8]* @"fmt_.65" to i8*
  %".134" = call i32 (i8*, ...) @"printf"(i8* %".133", i8* %".132")
  %".135" = bitcast [5 x i8]* @"fmt_.66" to i8*
  %".136" = call i32 (i8*, ...) @"printf"(i8* %".135", double %"x.15")
  %".137" = bitcast [2 x i8]* @"nl_.67" to i8*
  %".138" = call i32 (i8*, ...) @"printf"(i8* %".137")
  %"w.2" = load double, double* %"w"
  %"addtmp" = fadd double %"w.2", 0x3ff0000000000000
  store double %"addtmp", double* %"w"
  br label %"while_cond"
while_merge:
  %".141" = bitcast [17 x i8]* @"str_.68" to i8*
  %"x.16" = load double, double* %"x"
  %".142" = bitcast [4 x i8]* @"fmt_.69" to i8*
  %".143" = call i32 (i8*, ...) @"printf"(i8* %".142", i8* %".141")
  %".144" = bitcast [5 x i8]* @"fmt_.70" to i8*
  %".145" = call i32 (i8*, ...) @"printf"(i8* %".144", double %"x.16")
  %".146" = bitcast [2 x i8]* @"nl_.71" to i8*
  %".147" = call i32 (i8*, ...) @"printf"(i8* %".146")
  ret i32 0
}

@"str_.1" = internal constant [16 x i8] c"Main start: x =\00"
@"str_.2" = internal constant [4 x i8] c"y =\00"
@"fmt_.3" = internal constant [4 x i8] c"%s \00"
@"fmt_.4" = internal constant [6 x i8] c"%.2f \00"
@"fmt_.5" = internal constant [4 x i8] c"%s \00"
@"fmt_.6" = internal constant [5 x i8] c"%.2f\00"
@"nl_.7" = internal constant [2 x i8] c"\0a\00"
@"str_.8" = internal constant [13 x i8] c"Block 1: x =\00"
@"str_.9" = internal constant [4 x i8] c"y =\00"
@"fmt_.10" = internal constant [4 x i8] c"%s \00"
@"fmt_.11" = internal constant [6 x i8] c"%.2f \00"
@"fmt_.12" = internal constant [4 x i8] c"%s \00"
@"fmt_.13" = internal constant [5 x i8] c"%.2f\00"
@"nl_.14" = internal constant [2 x i8] c"\0a\00"
@"str_.15" = internal constant [13 x i8] c"Block 2: x =\00"
@"str_.16" = internal constant [4 x i8] c"y =\00"
@"fmt_.17" = internal constant [4 x i8] c"%s \00"
@"fmt_.18" = internal constant [6 x i8] c"%.2f \00"
@"fmt_.19" = internal constant [4 x i8] c"%s \00"
@"fmt_.20" = internal constant [5 x i8] c"%.2f\00"
@"nl_.21" = internal constant [2 x i8] c"\0a\00"
@"str_.22" = internal constant [21 x i8] c"Back to Block 1: x =\00"
@"str_.23" = internal constant [4 x i8] c"y =\00"
@"fmt_.24" = internal constant [4 x i8] c"%s \00"
@"fmt_.25" = internal constant [6 x i8] c"%.2f \00"
@"fmt_.26" = internal constant [4 x i8] c"%s \00"
@"fmt_.27" = internal constant [5 x i8] c"%.2f\00"
@"nl_.28" = internal constant [2 x i8] c"\0a\00"
@"str_.29" = internal constant [18 x i8] c"Back to Main: x =\00"
@"str_.30" = internal constant [4 x i8] c"y =\00"
@"fmt_.31" = internal constant [4 x i8] c"%s \00"
@"fmt_.32" = internal constant [6 x i8] c"%.2f \00"
@"fmt_.33" = internal constant [4 x i8] c"%s \00"
@"fmt_.34" = internal constant [5 x i8] c"%.2f\00"
@"nl_.35" = internal constant [2 x i8] c"\0a\00"
@"str_.36" = internal constant [17 x i8] c"Before loop: i =\00"
@"fmt_.37" = internal constant [4 x i8] c"%s \00"
@"fmt_.38" = internal constant [5 x i8] c"%.2f\00"
@"nl_.39" = internal constant [2 x i8] c"\0a\00"
@"str_.40" = internal constant [17 x i8] c"Inside loop: i =\00"
@"fmt_.41" = internal constant [4 x i8] c"%s \00"
@"fmt_.42" = internal constant [5 x i8] c"%.2f\00"
@"nl_.43" = internal constant [2 x i8] c"\0a\00"
@"str_.44" = internal constant [22 x i8] c"Inside loop local x =\00"
@"fmt_.45" = internal constant [4 x i8] c"%s \00"
@"fmt_.46" = internal constant [5 x i8] c"%.2f\00"
@"nl_.47" = internal constant [2 x i8] c"\0a\00"
@"str_.48" = internal constant [16 x i8] c"After loop: i =\00"
@"fmt_.49" = internal constant [4 x i8] c"%s \00"
@"fmt_.50" = internal constant [5 x i8] c"%.2f\00"
@"nl_.51" = internal constant [2 x i8] c"\0a\00"
@"str_.52" = internal constant [15 x i8] c"Inside if: z =\00"
@"fmt_.53" = internal constant [4 x i8] c"%s \00"
@"fmt_.54" = internal constant [5 x i8] c"%.2f\00"
@"nl_.55" = internal constant [2 x i8] c"\0a\00"
@"str_.56" = internal constant [15 x i8] c"Inside if: x =\00"
@"fmt_.57" = internal constant [4 x i8] c"%s \00"
@"fmt_.58" = internal constant [5 x i8] c"%.2f\00"
@"nl_.59" = internal constant [2 x i8] c"\0a\00"
@"str_.60" = internal constant [14 x i8] c"After if: x =\00"
@"fmt_.61" = internal constant [4 x i8] c"%s \00"
@"fmt_.62" = internal constant [5 x i8] c"%.2f\00"
@"nl_.63" = internal constant [2 x i8] c"\0a\00"
@"str_.64" = internal constant [18 x i8] c"Inside while: x =\00"
@"fmt_.65" = internal constant [4 x i8] c"%s \00"
@"fmt_.66" = internal constant [5 x i8] c"%.2f\00"
@"nl_.67" = internal constant [2 x i8] c"\0a\00"
@"str_.68" = internal constant [17 x i8] c"After while: x =\00"
@"fmt_.69" = internal constant [4 x i8] c"%s \00"
@"fmt_.70" = internal constant [5 x i8] c"%.2f\00"
@"nl_.71" = internal constant [2 x i8] c"\0a\00"