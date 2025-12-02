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
  %"a" = alloca i8*
  store i8* null, i8** %"a"
  %".3" = call i8* @"minilua_new_array"(i32 8)
  store i8* %".3", i8** %"a"
  %"b" = alloca i8*
  store i8* null, i8** %"b"
  %".6" = call i8* @"minilua_new_array"(i32 8)
  store i8* %".6", i8** %"b"
  %"c" = alloca i8*
  store i8* null, i8** %"c"
  %".9" = call i8* @"minilua_new_array"(i32 4)
  store i8* %".9", i8** %"c"
  %"i" = alloca double
  store double 0x3ff0000000000000, double* %"i"
  br label %"for_cond"
for_cond:
  %"i.1" = load double, double* %"i"
  %"step_ge_0" = fcmp oge double 0x3ff0000000000000,              0x0
  %"cond_le" = fcmp ole double %"i.1", 0x4024000000000000
  %"cond_ge" = fcmp oge double %"i.1", 0x4024000000000000
  %"forcond" = select  i1 %"step_ge_0", i1 %"cond_le", i1 %"cond_ge"
  br i1 %"forcond", label %"for_body", label %"for_merge"
for_body:
  %"i.2" = load double, double* %"i"
  %"i.3" = load double, double* %"i"
  %"multmp" = fmul double %"i.3", 0x4000000000000000
  %"arr_ptr" = load i8*, i8** %"b"
  %".14" = fptosi double %"i.2" to i32
  call void @"minilua_check_index"(i32 %".14")
  %"idx_adj" = sub i32 %".14", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr", i32 %"idx_adj")
  %".17" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr")
  %".18" = bitcast i8* %".17" to double*
  %"elem_ptr" = getelementptr double, double* %".18", i32 %"idx_adj"
  store double %"multmp", double* %"elem_ptr"
  %"i.4" = load double, double* %"i"
  %"nextval" = fadd double %"i.4", 0x3ff0000000000000
  store double %"nextval", double* %"i"
  br label %"for_cond"
for_merge:
  %"b.1" = load i8*, i8** %"b"
  %"arr_len" = call i32 @"minilua_array_length"(i8* %"b.1")
  %".22" = sitofp i32 %"arr_len" to double
  %".23" = fptosi double %".22" to i64
  %".24" = sitofp i64 %".23" to double
  %"is_int" = fcmp oeq double %".22", %".24"
  br i1 %"is_int", label %"print_int", label %"print_float"
print_int:
  %".26" = bitcast [5 x i8]* @"fmt_int_.1" to i8*
  %".27" = call i32 (i8*, ...) @"printf"(i8* %".26", i64 %".23")
  br label %"print_merge"
print_float:
  %".29" = bitcast [6 x i8]* @"fmt_flt_.2" to i8*
  %".30" = call i32 (i8*, ...) @"printf"(i8* %".29", double %".22")
  br label %"print_merge"
print_merge:
  %".32" = bitcast [2 x i8]* @"nl_.3" to i8*
  %".33" = call i32 (i8*, ...) @"printf"(i8* %".32")
  %"b.2" = load i8*, i8** %"b"
  store i8* %"b.2", i8** %"a"
  %"arr_ptr.1" = load i8*, i8** %"a"
  %".35" = fptosi double 0x4024000000000000 to i32
  call void @"minilua_check_index"(i32 %".35")
  %"idx_adj.1" = sub i32 %".35", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.1", i32 %"idx_adj.1")
  %".38" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.1")
  %".39" = bitcast i8* %".38" to double*
  %"elem_ptr.1" = getelementptr double, double* %".39", i32 %"idx_adj.1"
  store double              0x0, double* %"elem_ptr.1"
  %"a.1" = load i8*, i8** %"a"
  %"arr_len.1" = call i32 @"minilua_array_length"(i8* %"a.1")
  %".41" = sitofp i32 %"arr_len.1" to double
  %".42" = fptosi double %".41" to i64
  %".43" = sitofp i64 %".42" to double
  %"is_int.1" = fcmp oeq double %".41", %".43"
  br i1 %"is_int.1", label %"print_int.1", label %"print_float.1"
print_int.1:
  %".45" = bitcast [5 x i8]* @"fmt_int_.4" to i8*
  %".46" = call i32 (i8*, ...) @"printf"(i8* %".45", i64 %".42")
  br label %"print_merge.1"
print_float.1:
  %".48" = bitcast [6 x i8]* @"fmt_flt_.5" to i8*
  %".49" = call i32 (i8*, ...) @"printf"(i8* %".48", double %".41")
  br label %"print_merge.1"
print_merge.1:
  %".51" = bitcast [2 x i8]* @"nl_.6" to i8*
  %".52" = call i32 (i8*, ...) @"printf"(i8* %".51")
  %"a.2" = load i8*, i8** %"a"
  %"arr_len.2" = call i32 @"minilua_array_length"(i8* %"a.2")
  %".53" = sitofp i32 %"arr_len.2" to double
  %"i.5" = alloca double
  store double 0x3ff0000000000000, double* %"i.5"
  br label %"for_cond.1"
for_cond.1:
  %"i.6" = load double, double* %"i.5"
  %"step_ge_0.1" = fcmp oge double 0x3ff0000000000000,              0x0
  %"cond_le.1" = fcmp ole double %"i.6", %".53"
  %"cond_ge.1" = fcmp oge double %"i.6", %".53"
  %"forcond.1" = select  i1 %"step_ge_0.1", i1 %"cond_le.1", i1 %"cond_ge.1"
  br i1 %"forcond.1", label %"for_body.1", label %"for_merge.1"
for_body.1:
  %"i.7" = load double, double* %"i.5"
  %"arr_ptr.2" = load i8*, i8** %"a"
  %".57" = fptosi double %"i.7" to i32
  call void @"minilua_check_index"(i32 %".57")
  %"idx_adj.2" = sub i32 %".57", 1
  %".59" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.2")
  %".60" = bitcast i8* %".59" to double*
  %"elem_ptr.2" = getelementptr double, double* %".60", i32 %"idx_adj.2"
  %"elem_val" = load double, double* %"elem_ptr.2"
  %".61" = fptosi double %"elem_val" to i64
  %".62" = sitofp i64 %".61" to double
  %"is_int.2" = fcmp oeq double %"elem_val", %".62"
  br i1 %"is_int.2", label %"print_int.2", label %"print_float.2"
for_merge.1:
  %"arr_ptr.3" = load i8*, i8** %"b"
  %".74" = fptosi double 0x4024000000000000 to i32
  call void @"minilua_check_index"(i32 %".74")
  %"idx_adj.3" = sub i32 %".74", 1
  %".76" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.3")
  %".77" = bitcast i8* %".76" to double*
  %"elem_ptr.3" = getelementptr double, double* %".77", i32 %"idx_adj.3"
  %"elem_val.1" = load double, double* %"elem_ptr.3"
  %".78" = fptosi double %"elem_val.1" to i64
  %".79" = sitofp i64 %".78" to double
  %"is_int.3" = fcmp oeq double %"elem_val.1", %".79"
  br i1 %"is_int.3", label %"print_int.3", label %"print_float.3"
print_int.2:
  %".64" = bitcast [5 x i8]* @"fmt_int_.7" to i8*
  %".65" = call i32 (i8*, ...) @"printf"(i8* %".64", i64 %".61")
  br label %"print_merge.2"
print_float.2:
  %".67" = bitcast [6 x i8]* @"fmt_flt_.8" to i8*
  %".68" = call i32 (i8*, ...) @"printf"(i8* %".67", double %"elem_val")
  br label %"print_merge.2"
print_merge.2:
  %".70" = bitcast [2 x i8]* @"nl_.9" to i8*
  %".71" = call i32 (i8*, ...) @"printf"(i8* %".70")
  %"i.8" = load double, double* %"i.5"
  %"nextval.1" = fadd double %"i.8", 0x3ff0000000000000
  store double %"nextval.1", double* %"i.5"
  br label %"for_cond.1"
print_int.3:
  %".81" = bitcast [5 x i8]* @"fmt_int_.10" to i8*
  %".82" = call i32 (i8*, ...) @"printf"(i8* %".81", i64 %".78")
  br label %"print_merge.3"
print_float.3:
  %".84" = bitcast [6 x i8]* @"fmt_flt_.11" to i8*
  %".85" = call i32 (i8*, ...) @"printf"(i8* %".84", double %"elem_val.1")
  br label %"print_merge.3"
print_merge.3:
  %".87" = bitcast [2 x i8]* @"nl_.12" to i8*
  %".88" = call i32 (i8*, ...) @"printf"(i8* %".87")
  ret i32 0
}

@"fmt_int_.1" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.2" = internal constant [6 x i8] c"%.14g\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.4" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.5" = internal constant [6 x i8] c"%.14g\00"
@"nl_.6" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.7" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.8" = internal constant [6 x i8] c"%.14g\00"
@"nl_.9" = internal constant [2 x i8] c"\0a\00"
@"fmt_int_.10" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.11" = internal constant [6 x i8] c"%.14g\00"
@"nl_.12" = internal constant [2 x i8] c"\0a\00"