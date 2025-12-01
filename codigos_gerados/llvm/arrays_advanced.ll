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

define void @"modifyArray"(i8* %"arr", double %"idx", double %"val")
{
entry:
  %"arr.1" = alloca i8*
  store i8* %"arr", i8** %"arr.1"
  %"idx.1" = alloca double
  store double %"idx", double* %"idx.1"
  %"val.1" = alloca double
  store double %"val", double* %"val.1"
  %"idx.2" = load double, double* %"idx.1"
  %"val.2" = load double, double* %"val.1"
  %"arr_ptr" = load i8*, i8** %"arr.1"
  %".8" = fptosi double %"idx.2" to i32
  %"idx_adj" = sub i32 %".8", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr", i32 %"idx_adj")
  %".10" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr")
  %".11" = bitcast i8* %".10" to double*
  %"elem_ptr" = getelementptr double, double* %".11", i32 %"idx_adj"
  store double %"val.2", double* %"elem_ptr"
  ret void
}

define void @"printArray"(i8* %"arr")
{
entry:
  %"arr.1" = alloca i8*
  store i8* %"arr", i8** %"arr.1"
  %"i" = alloca double
  store double 0x3ff0000000000000, double* %"i"
  %"length" = alloca double
  %"arr.2" = load i8*, i8** %"arr.1"
  %"arr_len" = call i32 @"minilua_array_length"(i8* %"arr.2")
  %".5" = sitofp i32 %"arr_len" to double
  store double %".5", double* %"length"
  br label %"while_cond"
while_cond:
  %"i.1" = load double, double* %"i"
  %"length.1" = load double, double* %"length"
  %"letmp" = fcmp ole double %"i.1", %"length.1"
  br i1 %"letmp", label %"while_body", label %"while_merge"
while_body:
  %"i.2" = load double, double* %"i"
  %"arr_ptr" = load i8*, i8** %"arr.1"
  %".9" = fptosi double %"i.2" to i32
  %"idx_adj" = sub i32 %".9", 1
  %".10" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr")
  %".11" = bitcast i8* %".10" to double*
  %"elem_ptr" = getelementptr double, double* %".11", i32 %"idx_adj"
  %"elem_val" = load double, double* %"elem_ptr"
  call void @"minilua_print_number"(double %"elem_val")
  %".13" = bitcast [2 x i8]* @"nl_.1" to i8*
  %".14" = call i32 (i8*, ...) @"printf"(i8* %".13")
  %"i.3" = load double, double* %"i"
  %"addtmp" = fadd double %"i.3", 0x3ff0000000000000
  store double %"addtmp", double* %"i"
  br label %"while_cond"
while_merge:
  ret void
}

@"nl_.1" = internal constant [2 x i8] c"\0a\00"
define i32 @"main"()
{
entry:
  %".2" = bitcast [34 x i8]* @"str_.2" to i8*
  %".3" = bitcast [3 x i8]* @"fmt_.3" to i8*
  %".4" = call i32 (i8*, ...) @"printf"(i8* %".3", i8* %".2")
  %".5" = bitcast [2 x i8]* @"nl_.4" to i8*
  %".6" = call i32 (i8*, ...) @"printf"(i8* %".5")
  %".7" = bitcast [28 x i8]* @"str_.5" to i8*
  %".8" = bitcast [3 x i8]* @"fmt_.6" to i8*
  %".9" = call i32 (i8*, ...) @"printf"(i8* %".8", i8* %".7")
  %".10" = bitcast [2 x i8]* @"nl_.7" to i8*
  %".11" = call i32 (i8*, ...) @"printf"(i8* %".10")
  %"a" = alloca i8*
  store i8* null, i8** %"a"
  %".13" = call i8* @"minilua_new_array"(i32 8)
  store i8* %".13", i8** %"a"
  %"arr_ptr" = load i8*, i8** %"a"
  %".15" = fptosi double 0x3ff0000000000000 to i32
  %"idx_adj" = sub i32 %".15", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr", i32 %"idx_adj")
  %".17" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr")
  %".18" = bitcast i8* %".17" to double*
  %"elem_ptr" = getelementptr double, double* %".18", i32 %"idx_adj"
  store double 0x4024000000000000, double* %"elem_ptr"
  %".20" = bitcast [7 x i8]* @"str_.8" to i8*
  %"arr_ptr.1" = load i8*, i8** %"a"
  %".21" = fptosi double 0x3ff0000000000000 to i32
  %"idx_adj.1" = sub i32 %".21", 1
  %".22" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.1")
  %".23" = bitcast i8* %".22" to double*
  %"elem_ptr.1" = getelementptr double, double* %".23", i32 %"idx_adj.1"
  %"elem_val" = load double, double* %"elem_ptr.1"
  %".24" = bitcast [4 x i8]* @"fmt_.9" to i8*
  %".25" = call i32 (i8*, ...) @"printf"(i8* %".24", i8* %".20")
  call void @"minilua_print_number"(double %"elem_val")
  %".27" = bitcast [2 x i8]* @"nl_.10" to i8*
  %".28" = call i32 (i8*, ...) @"printf"(i8* %".27")
  %"a.1" = load i8*, i8** %"a"
  call void @"modifyArray"(i8* %"a.1", double 0x3ff0000000000000, double 0x408f380000000000)
  %".30" = bitcast [23 x i8]* @"str_.11" to i8*
  %"arr_ptr.2" = load i8*, i8** %"a"
  %".31" = fptosi double 0x3ff0000000000000 to i32
  %"idx_adj.2" = sub i32 %".31", 1
  %".32" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.2")
  %".33" = bitcast i8* %".32" to double*
  %"elem_ptr.2" = getelementptr double, double* %".33", i32 %"idx_adj.2"
  %"elem_val.1" = load double, double* %"elem_ptr.2"
  %".34" = bitcast [4 x i8]* @"fmt_.12" to i8*
  %".35" = call i32 (i8*, ...) @"printf"(i8* %".34", i8* %".30")
  call void @"minilua_print_number"(double %"elem_val.1")
  %".37" = bitcast [2 x i8]* @"nl_.13" to i8*
  %".38" = call i32 (i8*, ...) @"printf"(i8* %".37")
  %".39" = bitcast [41 x i8]* @"str_.14" to i8*
  %".40" = bitcast [3 x i8]* @"fmt_.15" to i8*
  %".41" = call i32 (i8*, ...) @"printf"(i8* %".40", i8* %".39")
  %".42" = bitcast [2 x i8]* @"nl_.16" to i8*
  %".43" = call i32 (i8*, ...) @"printf"(i8* %".42")
  %"is_prime" = alloca i8*
  store i8* null, i8** %"is_prime"
  %".45" = call i8* @"minilua_new_array"(i32 1)
  store i8* %".45", i8** %"is_prime"
  %"limit" = alloca double
  store double 0x4034000000000000, double* %"limit"
  %"i" = alloca double
  store double 0x4000000000000000, double* %"i"
  br label %"while_cond"
while_cond:
  %"i.1" = load double, double* %"i"
  %"limit.1" = load double, double* %"limit"
  %"letmp" = fcmp ole double %"i.1", %"limit.1"
  br i1 %"letmp", label %"while_body", label %"while_merge"
while_body:
  %"i.2" = load double, double* %"i"
  %"arr_ptr.3" = load i8*, i8** %"is_prime"
  %".51" = fptosi double %"i.2" to i32
  %"idx_adj.3" = sub i32 %".51", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.3", i32 %"idx_adj.3")
  %".53" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.3")
  %".54" = bitcast i8* %".53" to i1*
  %"elem_ptr.3" = getelementptr i1, i1* %".54", i32 %"idx_adj.3"
  store i1 1, i1* %"elem_ptr.3"
  %"i.3" = load double, double* %"i"
  %"addtmp" = fadd double %"i.3", 0x3ff0000000000000
  store double %"addtmp", double* %"i"
  br label %"while_cond"
while_merge:
  %"p" = alloca double
  store double 0x4000000000000000, double* %"p"
  br label %"while_cond.1"
while_cond.1:
  %"p.1" = load double, double* %"p"
  %"p.2" = load double, double* %"p"
  %"multmp" = fmul double %"p.1", %"p.2"
  %"limit.2" = load double, double* %"limit"
  %"letmp.1" = fcmp ole double %"multmp", %"limit.2"
  br i1 %"letmp.1", label %"while_body.1", label %"while_merge.1"
while_body.1:
  %"p.3" = load double, double* %"p"
  %"arr_ptr.4" = load i8*, i8** %"is_prime"
  %".61" = fptosi double %"p.3" to i32
  %"idx_adj.4" = sub i32 %".61", 1
  %".62" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.4")
  %".63" = bitcast i8* %".62" to i1*
  %"elem_ptr.4" = getelementptr i1, i1* %".63", i32 %"idx_adj.4"
  %"elem_val.2" = load i1, i1* %"elem_ptr.4"
  br i1 %"elem_val.2", label %"then_0", label %"else_0"
while_merge.1:
  store double 0x4000000000000000, double* %"i"
  br label %"while_cond.3"
if_merge:
  %"p.7" = load double, double* %"p"
  %"addtmp.2" = fadd double %"p.7", 0x3ff0000000000000
  store double %"addtmp.2", double* %"p"
  br label %"while_cond.1"
then_0:
  %"mult" = alloca double
  %"p.4" = load double, double* %"p"
  %"p.5" = load double, double* %"p"
  %"multmp.1" = fmul double %"p.4", %"p.5"
  store double %"multmp.1", double* %"mult"
  br label %"while_cond.2"
else_0:
  br label %"if_merge"
while_cond.2:
  %"mult.1" = load double, double* %"mult"
  %"limit.3" = load double, double* %"limit"
  %"letmp.2" = fcmp ole double %"mult.1", %"limit.3"
  br i1 %"letmp.2", label %"while_body.2", label %"while_merge.2"
while_body.2:
  %"mult.2" = load double, double* %"mult"
  %"arr_ptr.5" = load i8*, i8** %"is_prime"
  %".68" = fptosi double %"mult.2" to i32
  %"idx_adj.5" = sub i32 %".68", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.5", i32 %"idx_adj.5")
  %".70" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.5")
  %".71" = bitcast i8* %".70" to i1*
  %"elem_ptr.5" = getelementptr i1, i1* %".71", i32 %"idx_adj.5"
  store i1 0, i1* %"elem_ptr.5"
  %"mult.3" = load double, double* %"mult"
  %"p.6" = load double, double* %"p"
  %"addtmp.1" = fadd double %"mult.3", %"p.6"
  store double %"addtmp.1", double* %"mult"
  br label %"while_cond.2"
while_merge.2:
  br label %"if_merge"
while_cond.3:
  %"i.4" = load double, double* %"i"
  %"limit.4" = load double, double* %"limit"
  %"letmp.3" = fcmp ole double %"i.4", %"limit.4"
  br i1 %"letmp.3", label %"while_body.3", label %"while_merge.3"
while_body.3:
  %"i.5" = load double, double* %"i"
  %"arr_ptr.6" = load i8*, i8** %"is_prime"
  %".82" = fptosi double %"i.5" to i32
  %"idx_adj.6" = sub i32 %".82", 1
  %".83" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.6")
  %".84" = bitcast i8* %".83" to i1*
  %"elem_ptr.6" = getelementptr i1, i1* %".84", i32 %"idx_adj.6"
  %"elem_val.3" = load i1, i1* %"elem_ptr.6"
  br i1 %"elem_val.3", label %"then_0.1", label %"else_0.1"
while_merge.3:
  %".93" = bitcast [29 x i8]* @"str_.18" to i8*
  %".94" = bitcast [3 x i8]* @"fmt_.19" to i8*
  %".95" = call i32 (i8*, ...) @"printf"(i8* %".94", i8* %".93")
  %".96" = bitcast [2 x i8]* @"nl_.20" to i8*
  %".97" = call i32 (i8*, ...) @"printf"(i8* %".96")
  %"matrix" = alloca i8*
  store i8* null, i8** %"matrix"
  %".99" = call i8* @"minilua_new_array"(i32 8)
  store i8* %".99", i8** %"matrix"
  %"rows" = alloca double
  store double 0x4008000000000000, double* %"rows"
  %"cols" = alloca double
  store double 0x4008000000000000, double* %"cols"
  %"r" = alloca double
  store double 0x3ff0000000000000, double* %"r"
  br label %"while_cond.4"
if_merge.1:
  %"i.7" = load double, double* %"i"
  %"addtmp.3" = fadd double %"i.7", 0x3ff0000000000000
  store double %"addtmp.3", double* %"i"
  br label %"while_cond.3"
then_0.1:
  %"i.6" = load double, double* %"i"
  call void @"minilua_print_number"(double %"i.6")
  %".87" = bitcast [2 x i8]* @"nl_.17" to i8*
  %".88" = call i32 (i8*, ...) @"printf"(i8* %".87")
  br label %"if_merge.1"
else_0.1:
  br label %"if_merge.1"
while_cond.4:
  %"r.1" = load double, double* %"r"
  %"rows.1" = load double, double* %"rows"
  %"letmp.4" = fcmp ole double %"r.1", %"rows.1"
  br i1 %"letmp.4", label %"while_body.4", label %"while_merge.4"
while_body.4:
  %"c" = alloca double
  store double 0x3ff0000000000000, double* %"c"
  br label %"while_cond.5"
while_merge.4:
  %".119" = bitcast [20 x i8]* @"str_.21" to i8*
  %".120" = bitcast [3 x i8]* @"fmt_.22" to i8*
  %".121" = call i32 (i8*, ...) @"printf"(i8* %".120", i8* %".119")
  %".122" = bitcast [2 x i8]* @"nl_.23" to i8*
  %".123" = call i32 (i8*, ...) @"printf"(i8* %".122")
  %"k" = alloca double
  store double 0x3ff0000000000000, double* %"k"
  br label %"while_cond.6"
while_cond.5:
  %"c.1" = load double, double* %"c"
  %"cols.1" = load double, double* %"cols"
  %"letmp.5" = fcmp ole double %"c.1", %"cols.1"
  br i1 %"letmp.5", label %"while_body.5", label %"while_merge.5"
while_body.5:
  %"idx" = alloca double
  %"r.2" = load double, double* %"r"
  %"subtmp" = fsub double %"r.2", 0x3ff0000000000000
  %"cols.2" = load double, double* %"cols"
  %"multmp.2" = fmul double %"subtmp", %"cols.2"
  %"c.2" = load double, double* %"c"
  %"addtmp.4" = fadd double %"multmp.2", %"c.2"
  store double %"addtmp.4", double* %"idx"
  %"idx.1" = load double, double* %"idx"
  %"r.3" = load double, double* %"r"
  %"multmp.3" = fmul double %"r.3", 0x4024000000000000
  %"c.3" = load double, double* %"c"
  %"addtmp.5" = fadd double %"multmp.3", %"c.3"
  %"arr_ptr.7" = load i8*, i8** %"matrix"
  %".110" = fptosi double %"idx.1" to i32
  %"idx_adj.7" = sub i32 %".110", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.7", i32 %"idx_adj.7")
  %".112" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.7")
  %".113" = bitcast i8* %".112" to double*
  %"elem_ptr.7" = getelementptr double, double* %".113", i32 %"idx_adj.7"
  store double %"addtmp.5", double* %"elem_ptr.7"
  %"c.4" = load double, double* %"c"
  %"addtmp.6" = fadd double %"c.4", 0x3ff0000000000000
  store double %"addtmp.6", double* %"c"
  br label %"while_cond.5"
while_merge.5:
  %"r.4" = load double, double* %"r"
  %"addtmp.7" = fadd double %"r.4", 0x3ff0000000000000
  store double %"addtmp.7", double* %"r"
  br label %"while_cond.4"
while_cond.6:
  %"k.1" = load double, double* %"k"
  %"rows.2" = load double, double* %"rows"
  %"letmp.6" = fcmp ole double %"k.1", %"rows.2"
  br i1 %"letmp.6", label %"while_body.6", label %"while_merge.6"
while_body.6:
  %"idx.2" = alloca double
  %"k.2" = load double, double* %"k"
  %"subtmp.1" = fsub double %"k.2", 0x3ff0000000000000
  %"cols.3" = load double, double* %"cols"
  %"multmp.4" = fmul double %"subtmp.1", %"cols.3"
  %"k.3" = load double, double* %"k"
  %"addtmp.8" = fadd double %"multmp.4", %"k.3"
  store double %"addtmp.8", double* %"idx.2"
  %"idx.3" = load double, double* %"idx.2"
  %"arr_ptr.8" = load i8*, i8** %"matrix"
  %".128" = fptosi double %"idx.3" to i32
  %"idx_adj.8" = sub i32 %".128", 1
  %".129" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.8")
  %".130" = bitcast i8* %".129" to double*
  %"elem_ptr.8" = getelementptr double, double* %".130", i32 %"idx_adj.8"
  %"elem_val.4" = load double, double* %"elem_ptr.8"
  call void @"minilua_print_number"(double %"elem_val.4")
  %".132" = bitcast [2 x i8]* @"nl_.24" to i8*
  %".133" = call i32 (i8*, ...) @"printf"(i8* %".132")
  %"k.4" = load double, double* %"k"
  %"addtmp.9" = fadd double %"k.4", 0x3ff0000000000000
  store double %"addtmp.9", double* %"k"
  br label %"while_cond.6"
while_merge.6:
  %".136" = bitcast [24 x i8]* @"str_.25" to i8*
  %".137" = bitcast [3 x i8]* @"fmt_.26" to i8*
  %".138" = call i32 (i8*, ...) @"printf"(i8* %".137", i8* %".136")
  %".139" = bitcast [2 x i8]* @"nl_.27" to i8*
  %".140" = call i32 (i8*, ...) @"printf"(i8* %".139")
  %"b" = alloca i8*
  store i8* null, i8** %"b"
  %".142" = call i8* @"minilua_new_array"(i32 8)
  store i8* %".142", i8** %"b"
  %"arr_ptr.9" = load i8*, i8** %"b"
  %".144" = fptosi double 0x3ff0000000000000 to i32
  %"idx_adj.9" = sub i32 %".144", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.9", i32 %"idx_adj.9")
  %".146" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.9")
  %".147" = bitcast i8* %".146" to double*
  %"elem_ptr.9" = getelementptr double, double* %".147", i32 %"idx_adj.9"
  store double 0x4049000000000000, double* %"elem_ptr.9"
  %"c.5" = alloca i8*
  %"b.1" = load i8*, i8** %"b"
  store i8* %"b.1", i8** %"c.5"
  %"arr_ptr.10" = load i8*, i8** %"c.5"
  %".150" = fptosi double 0x3ff0000000000000 to i32
  %"idx_adj.10" = sub i32 %".150", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.10", i32 %"idx_adj.10")
  %".152" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.10")
  %".153" = bitcast i8* %".152" to double*
  %"elem_ptr.10" = getelementptr double, double* %".153", i32 %"idx_adj.10"
  store double 0x4059000000000000, double* %"elem_ptr.10"
  %".155" = bitcast [21 x i8]* @"str_.28" to i8*
  %"arr_ptr.11" = load i8*, i8** %"b"
  %".156" = fptosi double 0x3ff0000000000000 to i32
  %"idx_adj.11" = sub i32 %".156", 1
  %".157" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.11")
  %".158" = bitcast i8* %".157" to double*
  %"elem_ptr.11" = getelementptr double, double* %".158", i32 %"idx_adj.11"
  %"elem_val.5" = load double, double* %"elem_ptr.11"
  %".159" = bitcast [4 x i8]* @"fmt_.29" to i8*
  %".160" = call i32 (i8*, ...) @"printf"(i8* %".159", i8* %".155")
  call void @"minilua_print_number"(double %"elem_val.5")
  %".162" = bitcast [2 x i8]* @"nl_.30" to i8*
  %".163" = call i32 (i8*, ...) @"printf"(i8* %".162")
  ret i32 0
}

@"str_.2" = internal constant [34 x i8] c"=== Teste 9: Arrays Avancados ===\00"
@"fmt_.3" = internal constant [3 x i8] c"%s\00"
@"nl_.4" = internal constant [2 x i8] c"\0a\00"
@"str_.5" = internal constant [28 x i8] c"1. Passagem por Referencia:\00"
@"fmt_.6" = internal constant [3 x i8] c"%s\00"
@"nl_.7" = internal constant [2 x i8] c"\0a\00"
@"str_.8" = internal constant [7 x i8] c"Antes:\00"
@"fmt_.9" = internal constant [4 x i8] c"%s \00"
@"nl_.10" = internal constant [2 x i8] c"\0a\00"
@"str_.11" = internal constant [23 x i8] c"Depois (esperado 999):\00"
@"fmt_.12" = internal constant [4 x i8] c"%s \00"
@"nl_.13" = internal constant [2 x i8] c"\0a\00"
@"str_.14" = internal constant [41 x i8] c"2. Crivo de Eratostenes (Primos ate 20):\00"
@"fmt_.15" = internal constant [3 x i8] c"%s\00"
@"nl_.16" = internal constant [2 x i8] c"\0a\00"
@"nl_.17" = internal constant [2 x i8] c"\0a\00"
@"str_.18" = internal constant [29 x i8] c"3. Matriz em Array 1D (3x3):\00"
@"fmt_.19" = internal constant [3 x i8] c"%s\00"
@"nl_.20" = internal constant [2 x i8] c"\0a\00"
@"str_.21" = internal constant [20 x i8] c"Diagonal Principal:\00"
@"fmt_.22" = internal constant [3 x i8] c"%s\00"
@"nl_.23" = internal constant [2 x i8] c"\0a\00"
@"nl_.24" = internal constant [2 x i8] c"\0a\00"
@"str_.25" = internal constant [24 x i8] c"4. Copia de Referencia:\00"
@"fmt_.26" = internal constant [3 x i8] c"%s\00"
@"nl_.27" = internal constant [2 x i8] c"\0a\00"
@"str_.28" = internal constant [21 x i8] c"b[1] (esperado 100):\00"
@"fmt_.29" = internal constant [4 x i8] c"%s \00"
@"nl_.30" = internal constant [2 x i8] c"\0a\00"