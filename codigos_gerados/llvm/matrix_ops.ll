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
  %"A" = alloca double*
  store double* null, double** %"A"
  %".3" = call i8* @"malloc"(i32 800)
  %".4" = bitcast i8* %".3" to double*
  store double* %".4", double** %"A"
  %"B" = alloca double*
  store double* null, double** %"B"
  %".7" = call i8* @"malloc"(i32 800)
  %".8" = bitcast i8* %".7" to double*
  store double* %".8", double** %"B"
  %"C" = alloca double*
  store double* null, double** %"C"
  %".11" = call i8* @"malloc"(i32 800)
  %".12" = bitcast i8* %".11" to double*
  store double* %".12", double** %"C"
  %"width" = alloca double
  store double 0x4000000000000000, double* %"width"
  %"arr_ptr" = load double*, double** %"A"
  %".15" = fptosi double              0x0 to i32
  %"elem_ptr" = getelementptr double, double* %"arr_ptr", i32 %".15"
  store double 0x3ff0000000000000, double* %"elem_ptr"
  %"arr_ptr.1" = load double*, double** %"A"
  %".17" = fptosi double 0x3ff0000000000000 to i32
  %"elem_ptr.1" = getelementptr double, double* %"arr_ptr.1", i32 %".17"
  store double 0x4000000000000000, double* %"elem_ptr.1"
  %"arr_ptr.2" = load double*, double** %"A"
  %".19" = fptosi double 0x4000000000000000 to i32
  %"elem_ptr.2" = getelementptr double, double* %"arr_ptr.2", i32 %".19"
  store double 0x4008000000000000, double* %"elem_ptr.2"
  %"arr_ptr.3" = load double*, double** %"A"
  %".21" = fptosi double 0x4008000000000000 to i32
  %"elem_ptr.3" = getelementptr double, double* %"arr_ptr.3", i32 %".21"
  store double 0x4010000000000000, double* %"elem_ptr.3"
  %"arr_ptr.4" = load double*, double** %"B"
  %".23" = fptosi double              0x0 to i32
  %"elem_ptr.4" = getelementptr double, double* %"arr_ptr.4", i32 %".23"
  store double 0x4014000000000000, double* %"elem_ptr.4"
  %"arr_ptr.5" = load double*, double** %"B"
  %".25" = fptosi double 0x3ff0000000000000 to i32
  %"elem_ptr.5" = getelementptr double, double* %"arr_ptr.5", i32 %".25"
  store double 0x4018000000000000, double* %"elem_ptr.5"
  %"arr_ptr.6" = load double*, double** %"B"
  %".27" = fptosi double 0x4000000000000000 to i32
  %"elem_ptr.6" = getelementptr double, double* %"arr_ptr.6", i32 %".27"
  store double 0x401c000000000000, double* %"elem_ptr.6"
  %"arr_ptr.7" = load double*, double** %"B"
  %".29" = fptosi double 0x4008000000000000 to i32
  %"elem_ptr.7" = getelementptr double, double* %"arr_ptr.7", i32 %".29"
  store double 0x4020000000000000, double* %"elem_ptr.7"
  %".31" = bitcast [10 x i8]* @"str_.1" to i8*
  %".32" = bitcast [3 x i8]* @"fmt_.2" to i8*
  %".33" = call i32 (i8*, ...) @"printf"(i8* %".32", i8* %".31")
  %".34" = bitcast [2 x i8]* @"nl_.3" to i8*
  %".35" = call i32 (i8*, ...) @"printf"(i8* %".34")
  %"arr_ptr.8" = load double*, double** %"A"
  %".36" = fptosi double              0x0 to i32
  %"elem_ptr.8" = getelementptr double, double* %"arr_ptr.8", i32 %".36"
  %"elem_val" = load double, double* %"elem_ptr.8"
  %"arr_ptr.9" = load double*, double** %"A"
  %".37" = fptosi double 0x3ff0000000000000 to i32
  %"elem_ptr.9" = getelementptr double, double* %"arr_ptr.9", i32 %".37"
  %"elem_val.1" = load double, double* %"elem_ptr.9"
  %".38" = bitcast [6 x i8]* @"fmt_.4" to i8*
  %".39" = call i32 (i8*, ...) @"printf"(i8* %".38", double %"elem_val")
  %".40" = bitcast [5 x i8]* @"fmt_.5" to i8*
  %".41" = call i32 (i8*, ...) @"printf"(i8* %".40", double %"elem_val.1")
  %".42" = bitcast [2 x i8]* @"nl_.6" to i8*
  %".43" = call i32 (i8*, ...) @"printf"(i8* %".42")
  %"arr_ptr.10" = load double*, double** %"A"
  %".44" = fptosi double 0x4000000000000000 to i32
  %"elem_ptr.10" = getelementptr double, double* %"arr_ptr.10", i32 %".44"
  %"elem_val.2" = load double, double* %"elem_ptr.10"
  %"arr_ptr.11" = load double*, double** %"A"
  %".45" = fptosi double 0x4008000000000000 to i32
  %"elem_ptr.11" = getelementptr double, double* %"arr_ptr.11", i32 %".45"
  %"elem_val.3" = load double, double* %"elem_ptr.11"
  %".46" = bitcast [6 x i8]* @"fmt_.7" to i8*
  %".47" = call i32 (i8*, ...) @"printf"(i8* %".46", double %"elem_val.2")
  %".48" = bitcast [5 x i8]* @"fmt_.8" to i8*
  %".49" = call i32 (i8*, ...) @"printf"(i8* %".48", double %"elem_val.3")
  %".50" = bitcast [2 x i8]* @"nl_.9" to i8*
  %".51" = call i32 (i8*, ...) @"printf"(i8* %".50")
  %".52" = bitcast [10 x i8]* @"str_.10" to i8*
  %".53" = bitcast [3 x i8]* @"fmt_.11" to i8*
  %".54" = call i32 (i8*, ...) @"printf"(i8* %".53", i8* %".52")
  %".55" = bitcast [2 x i8]* @"nl_.12" to i8*
  %".56" = call i32 (i8*, ...) @"printf"(i8* %".55")
  %"arr_ptr.12" = load double*, double** %"B"
  %".57" = fptosi double              0x0 to i32
  %"elem_ptr.12" = getelementptr double, double* %"arr_ptr.12", i32 %".57"
  %"elem_val.4" = load double, double* %"elem_ptr.12"
  %"arr_ptr.13" = load double*, double** %"B"
  %".58" = fptosi double 0x3ff0000000000000 to i32
  %"elem_ptr.13" = getelementptr double, double* %"arr_ptr.13", i32 %".58"
  %"elem_val.5" = load double, double* %"elem_ptr.13"
  %".59" = bitcast [6 x i8]* @"fmt_.13" to i8*
  %".60" = call i32 (i8*, ...) @"printf"(i8* %".59", double %"elem_val.4")
  %".61" = bitcast [5 x i8]* @"fmt_.14" to i8*
  %".62" = call i32 (i8*, ...) @"printf"(i8* %".61", double %"elem_val.5")
  %".63" = bitcast [2 x i8]* @"nl_.15" to i8*
  %".64" = call i32 (i8*, ...) @"printf"(i8* %".63")
  %"arr_ptr.14" = load double*, double** %"B"
  %".65" = fptosi double 0x4000000000000000 to i32
  %"elem_ptr.14" = getelementptr double, double* %"arr_ptr.14", i32 %".65"
  %"elem_val.6" = load double, double* %"elem_ptr.14"
  %"arr_ptr.15" = load double*, double** %"B"
  %".66" = fptosi double 0x4008000000000000 to i32
  %"elem_ptr.15" = getelementptr double, double* %"arr_ptr.15", i32 %".66"
  %"elem_val.7" = load double, double* %"elem_ptr.15"
  %".67" = bitcast [6 x i8]* @"fmt_.16" to i8*
  %".68" = call i32 (i8*, ...) @"printf"(i8* %".67", double %"elem_val.6")
  %".69" = bitcast [5 x i8]* @"fmt_.17" to i8*
  %".70" = call i32 (i8*, ...) @"printf"(i8* %".69", double %"elem_val.7")
  %".71" = bitcast [2 x i8]* @"nl_.18" to i8*
  %".72" = call i32 (i8*, ...) @"printf"(i8* %".71")
  %"row" = alloca double
  store double              0x0, double* %"row"
  %"col" = alloca double
  store double              0x0, double* %"col"
  %"idx" = alloca double
  store double              0x0, double* %"idx"
  %"row.1" = alloca double
  store double              0x0, double* %"row.1"
  br label %"for_cond"
for_cond:
  %"row.2" = load double, double* %"row.1"
  %"step_ge_0" = fcmp oge double 0x3ff0000000000000,              0x0
  %"cond_le" = fcmp ole double %"row.2", 0x3ff0000000000000
  %"cond_ge" = fcmp oge double %"row.2", 0x3ff0000000000000
  %"forcond" = select  i1 %"step_ge_0", i1 %"cond_le", i1 %"cond_ge"
  br i1 %"forcond", label %"for_body", label %"for_merge"
for_body:
  %"col.1" = alloca double
  store double              0x0, double* %"col.1"
  br label %"for_cond.1"
for_merge:
  %".91" = bitcast [20 x i8]* @"str_.19" to i8*
  %".92" = bitcast [3 x i8]* @"fmt_.20" to i8*
  %".93" = call i32 (i8*, ...) @"printf"(i8* %".92", i8* %".91")
  %".94" = bitcast [2 x i8]* @"nl_.21" to i8*
  %".95" = call i32 (i8*, ...) @"printf"(i8* %".94")
  %"arr_ptr.19" = load double*, double** %"C"
  %".96" = fptosi double              0x0 to i32
  %"elem_ptr.19" = getelementptr double, double* %"arr_ptr.19", i32 %".96"
  %"elem_val.10" = load double, double* %"elem_ptr.19"
  %"arr_ptr.20" = load double*, double** %"C"
  %".97" = fptosi double 0x3ff0000000000000 to i32
  %"elem_ptr.20" = getelementptr double, double* %"arr_ptr.20", i32 %".97"
  %"elem_val.11" = load double, double* %"elem_ptr.20"
  %".98" = bitcast [6 x i8]* @"fmt_.22" to i8*
  %".99" = call i32 (i8*, ...) @"printf"(i8* %".98", double %"elem_val.10")
  %".100" = bitcast [5 x i8]* @"fmt_.23" to i8*
  %".101" = call i32 (i8*, ...) @"printf"(i8* %".100", double %"elem_val.11")
  %".102" = bitcast [2 x i8]* @"nl_.24" to i8*
  %".103" = call i32 (i8*, ...) @"printf"(i8* %".102")
  %"arr_ptr.21" = load double*, double** %"C"
  %".104" = fptosi double 0x4000000000000000 to i32
  %"elem_ptr.21" = getelementptr double, double* %"arr_ptr.21", i32 %".104"
  %"elem_val.12" = load double, double* %"elem_ptr.21"
  %"arr_ptr.22" = load double*, double** %"C"
  %".105" = fptosi double 0x4008000000000000 to i32
  %"elem_ptr.22" = getelementptr double, double* %"arr_ptr.22", i32 %".105"
  %"elem_val.13" = load double, double* %"elem_ptr.22"
  %".106" = bitcast [6 x i8]* @"fmt_.25" to i8*
  %".107" = call i32 (i8*, ...) @"printf"(i8* %".106", double %"elem_val.12")
  %".108" = bitcast [5 x i8]* @"fmt_.26" to i8*
  %".109" = call i32 (i8*, ...) @"printf"(i8* %".108", double %"elem_val.13")
  %".110" = bitcast [2 x i8]* @"nl_.27" to i8*
  %".111" = call i32 (i8*, ...) @"printf"(i8* %".110")
  %"dotProd" = alloca double
  store double              0x0, double* %"dotProd"
  %"arr_ptr.23" = load double*, double** %"A"
  %".113" = fptosi double              0x0 to i32
  %"elem_ptr.23" = getelementptr double, double* %"arr_ptr.23", i32 %".113"
  %"elem_val.14" = load double, double* %"elem_ptr.23"
  %"arr_ptr.24" = load double*, double** %"B"
  %".114" = fptosi double              0x0 to i32
  %"elem_ptr.24" = getelementptr double, double* %"arr_ptr.24", i32 %".114"
  %"elem_val.15" = load double, double* %"elem_ptr.24"
  %"multmp.1" = fmul double %"elem_val.14", %"elem_val.15"
  %"arr_ptr.25" = load double*, double** %"A"
  %".115" = fptosi double 0x3ff0000000000000 to i32
  %"elem_ptr.25" = getelementptr double, double* %"arr_ptr.25", i32 %".115"
  %"elem_val.16" = load double, double* %"elem_ptr.25"
  %"arr_ptr.26" = load double*, double** %"B"
  %".116" = fptosi double 0x4000000000000000 to i32
  %"elem_ptr.26" = getelementptr double, double* %"arr_ptr.26", i32 %".116"
  %"elem_val.17" = load double, double* %"elem_ptr.26"
  %"multmp.2" = fmul double %"elem_val.16", %"elem_val.17"
  %"addtmp.2" = fadd double %"multmp.1", %"multmp.2"
  store double %"addtmp.2", double* %"dotProd"
  %".118" = bitcast [33 x i8]* @"str_.28" to i8*
  %"dotProd.1" = load double, double* %"dotProd"
  %".119" = bitcast [4 x i8]* @"fmt_.29" to i8*
  %".120" = call i32 (i8*, ...) @"printf"(i8* %".119", i8* %".118")
  %".121" = bitcast [5 x i8]* @"fmt_.30" to i8*
  %".122" = call i32 (i8*, ...) @"printf"(i8* %".121", double %"dotProd.1")
  %".123" = bitcast [2 x i8]* @"nl_.31" to i8*
  %".124" = call i32 (i8*, ...) @"printf"(i8* %".123")
  ret i32 0
for_cond.1:
  %"col.2" = load double, double* %"col.1"
  %"step_ge_0.1" = fcmp oge double 0x3ff0000000000000,              0x0
  %"cond_le.1" = fcmp ole double %"col.2", 0x3ff0000000000000
  %"cond_ge.1" = fcmp oge double %"col.2", 0x3ff0000000000000
  %"forcond.1" = select  i1 %"step_ge_0.1", i1 %"cond_le.1", i1 %"cond_ge.1"
  br i1 %"forcond.1", label %"for_body.1", label %"for_merge.1"
for_body.1:
  %"row.3" = load double, double* %"row.1"
  %"width.1" = load double, double* %"width"
  %"multmp" = fmul double %"row.3", %"width.1"
  %"col.3" = load double, double* %"col.1"
  %"addtmp" = fadd double %"multmp", %"col.3"
  store double %"addtmp", double* %"idx"
  %"idx.1" = load double, double* %"idx"
  %"idx.2" = load double, double* %"idx"
  %"arr_ptr.16" = load double*, double** %"A"
  %".83" = fptosi double %"idx.2" to i32
  %"elem_ptr.16" = getelementptr double, double* %"arr_ptr.16", i32 %".83"
  %"elem_val.8" = load double, double* %"elem_ptr.16"
  %"idx.3" = load double, double* %"idx"
  %"arr_ptr.17" = load double*, double** %"B"
  %".84" = fptosi double %"idx.3" to i32
  %"elem_ptr.17" = getelementptr double, double* %"arr_ptr.17", i32 %".84"
  %"elem_val.9" = load double, double* %"elem_ptr.17"
  %"addtmp.1" = fadd double %"elem_val.8", %"elem_val.9"
  %"arr_ptr.18" = load double*, double** %"C"
  %".85" = fptosi double %"idx.1" to i32
  %"elem_ptr.18" = getelementptr double, double* %"arr_ptr.18", i32 %".85"
  store double %"addtmp.1", double* %"elem_ptr.18"
  %"col.4" = load double, double* %"col.1"
  %"nextval" = fadd double %"col.4", 0x3ff0000000000000
  store double %"nextval", double* %"col.1"
  br label %"for_cond.1"
for_merge.1:
  %"row.4" = load double, double* %"row.1"
  %"nextval.1" = fadd double %"row.4", 0x3ff0000000000000
  store double %"nextval.1", double* %"row.1"
  br label %"for_cond"
}

@"str_.1" = internal constant [10 x i8] c"Matrix A:\00"
@"fmt_.2" = internal constant [3 x i8] c"%s\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"fmt_.4" = internal constant [6 x i8] c"%.2f \00"
@"fmt_.5" = internal constant [5 x i8] c"%.2f\00"
@"nl_.6" = internal constant [2 x i8] c"\0a\00"
@"fmt_.7" = internal constant [6 x i8] c"%.2f \00"
@"fmt_.8" = internal constant [5 x i8] c"%.2f\00"
@"nl_.9" = internal constant [2 x i8] c"\0a\00"
@"str_.10" = internal constant [10 x i8] c"Matrix B:\00"
@"fmt_.11" = internal constant [3 x i8] c"%s\00"
@"nl_.12" = internal constant [2 x i8] c"\0a\00"
@"fmt_.13" = internal constant [6 x i8] c"%.2f \00"
@"fmt_.14" = internal constant [5 x i8] c"%.2f\00"
@"nl_.15" = internal constant [2 x i8] c"\0a\00"
@"fmt_.16" = internal constant [6 x i8] c"%.2f \00"
@"fmt_.17" = internal constant [5 x i8] c"%.2f\00"
@"nl_.18" = internal constant [2 x i8] c"\0a\00"
@"str_.19" = internal constant [20 x i8] c"Matrix Sum (A + B):\00"
@"fmt_.20" = internal constant [3 x i8] c"%s\00"
@"nl_.21" = internal constant [2 x i8] c"\0a\00"
@"fmt_.22" = internal constant [6 x i8] c"%.2f \00"
@"fmt_.23" = internal constant [5 x i8] c"%.2f\00"
@"nl_.24" = internal constant [2 x i8] c"\0a\00"
@"fmt_.25" = internal constant [6 x i8] c"%.2f \00"
@"fmt_.26" = internal constant [5 x i8] c"%.2f\00"
@"nl_.27" = internal constant [2 x i8] c"\0a\00"
@"str_.28" = internal constant [33 x i8] c"Dot Product (Row 0 A . Col 0 B):\00"
@"fmt_.29" = internal constant [4 x i8] c"%s \00"
@"fmt_.30" = internal constant [5 x i8] c"%.2f\00"
@"nl_.31" = internal constant [2 x i8] c"\0a\00"