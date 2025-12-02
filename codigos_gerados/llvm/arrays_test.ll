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
  call void @"minilua_print_number"(double %".22")
  %".24" = bitcast [2 x i8]* @"nl_.1" to i8*
  %".25" = call i32 (i8*, ...) @"printf"(i8* %".24")
  %"b.2" = load i8*, i8** %"b"
  store i8* %"b.2", i8** %"a"
  %"arr_ptr.1" = load i8*, i8** %"a"
  %".27" = fptosi double 0x4024000000000000 to i32
  call void @"minilua_check_index"(i32 %".27")
  %"idx_adj.1" = sub i32 %".27", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.1", i32 %"idx_adj.1")
  %".30" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.1")
  %".31" = bitcast i8* %".30" to double*
  %"elem_ptr.1" = getelementptr double, double* %".31", i32 %"idx_adj.1"
  store double              0x0, double* %"elem_ptr.1"
  %"a.1" = load i8*, i8** %"a"
  %"arr_len.1" = call i32 @"minilua_array_length"(i8* %"a.1")
  %".33" = sitofp i32 %"arr_len.1" to double
  call void @"minilua_print_number"(double %".33")
  %".35" = bitcast [2 x i8]* @"nl_.2" to i8*
  %".36" = call i32 (i8*, ...) @"printf"(i8* %".35")
  %"a.2" = load i8*, i8** %"a"
  %"arr_len.2" = call i32 @"minilua_array_length"(i8* %"a.2")
  %".37" = sitofp i32 %"arr_len.2" to double
  %"i.5" = alloca double
  store double 0x3ff0000000000000, double* %"i.5"
  br label %"for_cond.1"
for_cond.1:
  %"i.6" = load double, double* %"i.5"
  %"step_ge_0.1" = fcmp oge double 0x3ff0000000000000,              0x0
  %"cond_le.1" = fcmp ole double %"i.6", %".37"
  %"cond_ge.1" = fcmp oge double %"i.6", %".37"
  %"forcond.1" = select  i1 %"step_ge_0.1", i1 %"cond_le.1", i1 %"cond_ge.1"
  br i1 %"forcond.1", label %"for_body.1", label %"for_merge.1"
for_body.1:
  %"i.7" = load double, double* %"i.5"
  %"arr_ptr.2" = load i8*, i8** %"a"
  %".41" = fptosi double %"i.7" to i32
  call void @"minilua_check_index"(i32 %".41")
  %"idx_adj.2" = sub i32 %".41", 1
  %".43" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.2")
  %".44" = bitcast i8* %".43" to double*
  %"elem_ptr.2" = getelementptr double, double* %".44", i32 %"idx_adj.2"
  %"elem_val" = load double, double* %"elem_ptr.2"
  call void @"minilua_print_number"(double %"elem_val")
  %".46" = bitcast [2 x i8]* @"nl_.3" to i8*
  %".47" = call i32 (i8*, ...) @"printf"(i8* %".46")
  %"i.8" = load double, double* %"i.5"
  %"nextval.1" = fadd double %"i.8", 0x3ff0000000000000
  store double %"nextval.1", double* %"i.5"
  br label %"for_cond.1"
for_merge.1:
  %"arr_ptr.3" = load i8*, i8** %"b"
  %".50" = fptosi double 0x4024000000000000 to i32
  call void @"minilua_check_index"(i32 %".50")
  %"idx_adj.3" = sub i32 %".50", 1
  %".52" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.3")
  %".53" = bitcast i8* %".52" to double*
  %"elem_ptr.3" = getelementptr double, double* %".53", i32 %"idx_adj.3"
  %"elem_val.1" = load double, double* %"elem_ptr.3"
  call void @"minilua_print_number"(double %"elem_val.1")
  %".55" = bitcast [2 x i8]* @"nl_.4" to i8*
  %".56" = call i32 (i8*, ...) @"printf"(i8* %".55")
  ret i32 0
}

@"nl_.1" = internal constant [2 x i8] c"\0a\00"
@"nl_.2" = internal constant [2 x i8] c"\0a\00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"nl_.4" = internal constant [2 x i8] c"\0a\00"