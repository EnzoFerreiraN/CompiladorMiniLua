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

define i32 @"main"()
{
entry:
  %".2" = bitcast [29 x i8]* @"str_.1" to i8*
  %".3" = bitcast [3 x i8]* @"fmt_.2" to i8*
  %".4" = call i32 (i8*, ...) @"printf"(i8* %".3", i8* %".2")
  %".5" = bitcast [2 x i8]* @"nl_.3" to i8*
  %".6" = call i32 (i8*, ...) @"printf"(i8* %".5")
  %"arr" = alloca i8*
  store i8* null, i8** %"arr"
  %".8" = call i8* @"minilua_new_array"(i32 8)
  store i8* %".8", i8** %"arr"
  %"arr_ptr" = load i8*, i8** %"arr"
  %".10" = fptosi double 0x3ff0000000000000 to i32
  %"idx_adj" = sub i32 %".10", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr", i32 %"idx_adj")
  %".12" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr")
  %".13" = bitcast i8* %".12" to double*
  %"elem_ptr" = getelementptr double, double* %".13", i32 %"idx_adj"
  store double 0x4050000000000000, double* %"elem_ptr"
  %"arr_ptr.1" = load i8*, i8** %"arr"
  %".15" = fptosi double 0x4000000000000000 to i32
  %"idx_adj.1" = sub i32 %".15", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.1", i32 %"idx_adj.1")
  %".17" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.1")
  %".18" = bitcast i8* %".17" to double*
  %"elem_ptr.1" = getelementptr double, double* %".18", i32 %"idx_adj.1"
  store double 0x4041000000000000, double* %"elem_ptr.1"
  %"arr_ptr.2" = load i8*, i8** %"arr"
  %".20" = fptosi double 0x4008000000000000 to i32
  %"idx_adj.2" = sub i32 %".20", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.2", i32 %"idx_adj.2")
  %".22" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.2")
  %".23" = bitcast i8* %".22" to double*
  %"elem_ptr.2" = getelementptr double, double* %".23", i32 %"idx_adj.2"
  store double 0x4039000000000000, double* %"elem_ptr.2"
  %"arr_ptr.3" = load i8*, i8** %"arr"
  %".25" = fptosi double 0x4010000000000000 to i32
  %"idx_adj.3" = sub i32 %".25", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.3", i32 %"idx_adj.3")
  %".27" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.3")
  %".28" = bitcast i8* %".27" to double*
  %"elem_ptr.3" = getelementptr double, double* %".28", i32 %"idx_adj.3"
  store double 0x4028000000000000, double* %"elem_ptr.3"
  %"arr_ptr.4" = load i8*, i8** %"arr"
  %".30" = fptosi double 0x4014000000000000 to i32
  %"idx_adj.4" = sub i32 %".30", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.4", i32 %"idx_adj.4")
  %".32" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.4")
  %".33" = bitcast i8* %".32" to double*
  %"elem_ptr.4" = getelementptr double, double* %".33", i32 %"idx_adj.4"
  store double 0x4036000000000000, double* %"elem_ptr.4"
  %"arr_ptr.5" = load i8*, i8** %"arr"
  %".35" = fptosi double 0x4018000000000000 to i32
  %"idx_adj.5" = sub i32 %".35", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.5", i32 %"idx_adj.5")
  %".37" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.5")
  %".38" = bitcast i8* %".37" to double*
  %"elem_ptr.5" = getelementptr double, double* %".38", i32 %"idx_adj.5"
  store double 0x4026000000000000, double* %"elem_ptr.5"
  %"arr_ptr.6" = load i8*, i8** %"arr"
  %".40" = fptosi double 0x401c000000000000 to i32
  %"idx_adj.6" = sub i32 %".40", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.6", i32 %"idx_adj.6")
  %".42" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.6")
  %".43" = bitcast i8* %".42" to double*
  %"elem_ptr.6" = getelementptr double, double* %".43", i32 %"idx_adj.6"
  store double 0x4056800000000000, double* %"elem_ptr.6"
  %"n" = alloca double
  store double              0x0, double* %"n"
  %"arr.1" = load i8*, i8** %"arr"
  %"arr_len" = call i32 @"minilua_array_length"(i8* %"arr.1")
  %".46" = sitofp i32 %"arr_len" to double
  store double %".46", double* %"n"
  %".48" = bitcast [16 x i8]* @"str_.4" to i8*
  %".49" = bitcast [3 x i8]* @"fmt_.5" to i8*
  %".50" = call i32 (i8*, ...) @"printf"(i8* %".49", i8* %".48")
  %".51" = bitcast [2 x i8]* @"nl_.6" to i8*
  %".52" = call i32 (i8*, ...) @"printf"(i8* %".51")
  %"k" = alloca double
  store double 0x3ff0000000000000, double* %"k"
  br label %"while_cond"
while_cond:
  %"k.1" = load double, double* %"k"
  %"n.1" = load double, double* %"n"
  %"letmp" = fcmp ole double %"k.1", %"n.1"
  br i1 %"letmp", label %"while_body", label %"while_merge"
while_body:
  %"k.2" = load double, double* %"k"
  %"arr_ptr.7" = load i8*, i8** %"arr"
  %".56" = fptosi double %"k.2" to i32
  %"idx_adj.7" = sub i32 %".56", 1
  %".57" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.7")
  %".58" = bitcast i8* %".57" to double*
  %"elem_ptr.7" = getelementptr double, double* %".58", i32 %"idx_adj.7"
  %"elem_val" = load double, double* %"elem_ptr.7"
  %".59" = bitcast [5 x i8]* @"fmt_.7" to i8*
  %".60" = call i32 (i8*, ...) @"printf"(i8* %".59", double %"elem_val")
  %".61" = bitcast [2 x i8]* @"nl_.8" to i8*
  %".62" = call i32 (i8*, ...) @"printf"(i8* %".61")
  %"k.3" = load double, double* %"k"
  %"addtmp" = fadd double %"k.3", 0x3ff0000000000000
  store double %"addtmp", double* %"k"
  br label %"while_cond"
while_merge:
  %"i" = alloca double
  store double 0x3ff0000000000000, double* %"i"
  %"j" = alloca double
  store double              0x0, double* %"j"
  %"temp" = alloca double
  store double              0x0, double* %"temp"
  br label %"while_cond.1"
while_cond.1:
  %"i.1" = load double, double* %"i"
  %"n.2" = load double, double* %"n"
  %"lttmp" = fcmp olt double %"i.1", %"n.2"
  br i1 %"lttmp", label %"while_body.1", label %"while_merge.1"
while_body.1:
  store double 0x3ff0000000000000, double* %"j"
  br label %"while_cond.2"
while_merge.1:
  %".103" = bitcast [16 x i8]* @"str_.9" to i8*
  %".104" = bitcast [3 x i8]* @"fmt_.10" to i8*
  %".105" = call i32 (i8*, ...) @"printf"(i8* %".104", i8* %".103")
  %".106" = bitcast [2 x i8]* @"nl_.11" to i8*
  %".107" = call i32 (i8*, ...) @"printf"(i8* %".106")
  store double 0x3ff0000000000000, double* %"k"
  br label %"while_cond.3"
while_cond.2:
  %"j.1" = load double, double* %"j"
  %"n.3" = load double, double* %"n"
  %"i.2" = load double, double* %"i"
  %"subtmp" = fsub double %"n.3", %"i.2"
  %"letmp.1" = fcmp ole double %"j.1", %"subtmp"
  br i1 %"letmp.1", label %"while_body.2", label %"while_merge.2"
while_body.2:
  %"j.2" = load double, double* %"j"
  %"arr_ptr.8" = load i8*, i8** %"arr"
  %".73" = fptosi double %"j.2" to i32
  %"idx_adj.8" = sub i32 %".73", 1
  %".74" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.8")
  %".75" = bitcast i8* %".74" to double*
  %"elem_ptr.8" = getelementptr double, double* %".75", i32 %"idx_adj.8"
  %"elem_val.1" = load double, double* %"elem_ptr.8"
  %"j.3" = load double, double* %"j"
  %"addtmp.1" = fadd double %"j.3", 0x3ff0000000000000
  %"arr_ptr.9" = load i8*, i8** %"arr"
  %".76" = fptosi double %"addtmp.1" to i32
  %"idx_adj.9" = sub i32 %".76", 1
  %".77" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.9")
  %".78" = bitcast i8* %".77" to double*
  %"elem_ptr.9" = getelementptr double, double* %".78", i32 %"idx_adj.9"
  %"elem_val.2" = load double, double* %"elem_ptr.9"
  %"gttmp" = fcmp ogt double %"elem_val.1", %"elem_val.2"
  br i1 %"gttmp", label %"then_0", label %"else_0"
while_merge.2:
  %"i.3" = load double, double* %"i"
  %"addtmp.5" = fadd double %"i.3", 0x3ff0000000000000
  store double %"addtmp.5", double* %"i"
  br label %"while_cond.1"
if_merge:
  %"j.8" = load double, double* %"j"
  %"addtmp.4" = fadd double %"j.8", 0x3ff0000000000000
  store double %"addtmp.4", double* %"j"
  br label %"while_cond.2"
then_0:
  %"j.4" = load double, double* %"j"
  %"arr_ptr.10" = load i8*, i8** %"arr"
  %".80" = fptosi double %"j.4" to i32
  %"idx_adj.10" = sub i32 %".80", 1
  %".81" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.10")
  %".82" = bitcast i8* %".81" to double*
  %"elem_ptr.10" = getelementptr double, double* %".82", i32 %"idx_adj.10"
  %"elem_val.3" = load double, double* %"elem_ptr.10"
  store double %"elem_val.3", double* %"temp"
  %"j.5" = load double, double* %"j"
  %"j.6" = load double, double* %"j"
  %"addtmp.2" = fadd double %"j.6", 0x3ff0000000000000
  %"arr_ptr.11" = load i8*, i8** %"arr"
  %".84" = fptosi double %"addtmp.2" to i32
  %"idx_adj.11" = sub i32 %".84", 1
  %".85" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.11")
  %".86" = bitcast i8* %".85" to double*
  %"elem_ptr.11" = getelementptr double, double* %".86", i32 %"idx_adj.11"
  %"elem_val.4" = load double, double* %"elem_ptr.11"
  %"arr_ptr.12" = load i8*, i8** %"arr"
  %".87" = fptosi double %"j.5" to i32
  %"idx_adj.12" = sub i32 %".87", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.12", i32 %"idx_adj.12")
  %".89" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.12")
  %".90" = bitcast i8* %".89" to double*
  %"elem_ptr.12" = getelementptr double, double* %".90", i32 %"idx_adj.12"
  store double %"elem_val.4", double* %"elem_ptr.12"
  %"j.7" = load double, double* %"j"
  %"addtmp.3" = fadd double %"j.7", 0x3ff0000000000000
  %"temp.1" = load double, double* %"temp"
  %"arr_ptr.13" = load i8*, i8** %"arr"
  %".92" = fptosi double %"addtmp.3" to i32
  %"idx_adj.13" = sub i32 %".92", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.13", i32 %"idx_adj.13")
  %".94" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.13")
  %".95" = bitcast i8* %".94" to double*
  %"elem_ptr.13" = getelementptr double, double* %".95", i32 %"idx_adj.13"
  store double %"temp.1", double* %"elem_ptr.13"
  br label %"if_merge"
else_0:
  br label %"if_merge"
while_cond.3:
  %"k.4" = load double, double* %"k"
  %"n.4" = load double, double* %"n"
  %"letmp.2" = fcmp ole double %"k.4", %"n.4"
  br i1 %"letmp.2", label %"while_body.3", label %"while_merge.3"
while_body.3:
  %"k.5" = load double, double* %"k"
  %"arr_ptr.14" = load i8*, i8** %"arr"
  %".111" = fptosi double %"k.5" to i32
  %"idx_adj.14" = sub i32 %".111", 1
  %".112" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.14")
  %".113" = bitcast i8* %".112" to double*
  %"elem_ptr.14" = getelementptr double, double* %".113", i32 %"idx_adj.14"
  %"elem_val.5" = load double, double* %"elem_ptr.14"
  %".114" = bitcast [5 x i8]* @"fmt_.12" to i8*
  %".115" = call i32 (i8*, ...) @"printf"(i8* %".114", double %"elem_val.5")
  %".116" = bitcast [2 x i8]* @"nl_.13" to i8*
  %".117" = call i32 (i8*, ...) @"printf"(i8* %".116")
  %"k.6" = load double, double* %"k"
  %"addtmp.6" = fadd double %"k.6", 0x3ff0000000000000
  store double %"addtmp.6", double* %"k"
  br label %"while_cond.3"
while_merge.3:
  ret i32 0
}

@"str_.1" = internal constant [29 x i8] c"=== Teste 7: Bubble Sort ===\00"
@"fmt_.2" = internal constant [3 x i8] c"%s\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"str_.4" = internal constant [16 x i8] c"Array original:\00"
@"fmt_.5" = internal constant [3 x i8] c"%s\00"
@"nl_.6" = internal constant [2 x i8] c"\0a\00"
@"fmt_.7" = internal constant [5 x i8] c"%.2f\00"
@"nl_.8" = internal constant [2 x i8] c"\0a\00"
@"str_.9" = internal constant [16 x i8] c"Array ordenado:\00"
@"fmt_.10" = internal constant [3 x i8] c"%s\00"
@"nl_.11" = internal constant [2 x i8] c"\0a\00"
@"fmt_.12" = internal constant [5 x i8] c"%.2f\00"
@"nl_.13" = internal constant [2 x i8] c"\0a\00"