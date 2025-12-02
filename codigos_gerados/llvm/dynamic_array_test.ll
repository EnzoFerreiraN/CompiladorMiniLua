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
  %"arr" = alloca i8*
  store i8* null, i8** %"arr"
  %".3" = call i8* @"minilua_new_array"(i32 8)
  store i8* %".3", i8** %"arr"
  %"arr_ptr" = load i8*, i8** %"arr"
  %".5" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".5")
  %"idx_adj" = sub i32 %".5", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr", i32 %"idx_adj")
  %".8" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr")
  %".9" = bitcast i8* %".8" to double*
  %"elem_ptr" = getelementptr double, double* %".9", i32 %"idx_adj"
  store double 0x4024000000000000, double* %"elem_ptr"
  %"arr_ptr.1" = load i8*, i8** %"arr"
  %".11" = fptosi double 0x4018000000000000 to i32
  call void @"minilua_check_index"(i32 %".11")
  %"idx_adj.1" = sub i32 %".11", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.1", i32 %"idx_adj.1")
  %".14" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.1")
  %".15" = bitcast i8* %".14" to double*
  %"elem_ptr.1" = getelementptr double, double* %".15", i32 %"idx_adj.1"
  store double 0x4034000000000000, double* %"elem_ptr.1"
  %"arr_ptr.2" = load i8*, i8** %"arr"
  %".17" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".17")
  %"idx_adj.2" = sub i32 %".17", 1
  %".19" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.2")
  %".20" = bitcast i8* %".19" to double*
  %"elem_ptr.2" = getelementptr double, double* %".20", i32 %"idx_adj.2"
  %"elem_val" = load double, double* %"elem_ptr.2"
  %".21" = fptosi double %"elem_val" to i64
  %".22" = sitofp i64 %".21" to double
  %"is_int" = fcmp oeq double %"elem_val", %".22"
  br i1 %"is_int", label %"print_int", label %"print_float"
print_int:
  %".24" = bitcast [5 x i8]* @"fmt_int_.1" to i8*
  %".25" = call i32 (i8*, ...) @"printf"(i8* %".24", i64 %".21")
  br label %"print_merge"
print_float:
  %".27" = bitcast [6 x i8]* @"fmt_flt_.2" to i8*
  %".28" = call i32 (i8*, ...) @"printf"(i8* %".27", double %"elem_val")
  br label %"print_merge"
print_merge:
  %".30" = bitcast [2 x i8]* @"nl_.3" to i8*
  %".31" = call i32 (i8*, ...) @"printf"(i8* %".30")
  %"arr_ptr.3" = load i8*, i8** %"arr"
  %".32" = fptosi double 0x4018000000000000 to i32
  call void @"minilua_check_index"(i32 %".32")
  %"idx_adj.3" = sub i32 %".32", 1
  %".34" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.3")
  %".35" = bitcast i8* %".34" to double*
  %"elem_ptr.3" = getelementptr double, double* %".35", i32 %"idx_adj.3"
  %"elem_val.1" = load double, double* %"elem_ptr.3"
  %".36" = fptosi double %"elem_val.1" to i64
  %".37" = sitofp i64 %".36" to double
  %"is_int.1" = fcmp oeq double %"elem_val.1", %".37"
  br i1 %"is_int.1", label %"print_int.1", label %"print_float.1"
print_int.1:
  %".39" = bitcast [5 x i8]* @"fmt_int_.4" to i8*
  %".40" = call i32 (i8*, ...) @"printf"(i8* %".39", i64 %".36")
  br label %"print_merge.1"
print_float.1:
  %".42" = bitcast [6 x i8]* @"fmt_flt_.5" to i8*
  %".43" = call i32 (i8*, ...) @"printf"(i8* %".42", double %"elem_val.1")
  br label %"print_merge.1"
print_merge.1:
  %".45" = bitcast [2 x i8]* @"nl_.6" to i8*
  %".46" = call i32 (i8*, ...) @"printf"(i8* %".45")
  %"arr.1" = load i8*, i8** %"arr"
  %"arr_len" = call i32 @"minilua_array_length"(i8* %"arr.1")
  %".47" = sitofp i32 %"arr_len" to double
  %".48" = fptosi double %".47" to i64
  %".49" = sitofp i64 %".48" to double
  %"is_int.2" = fcmp oeq double %".47", %".49"
  br i1 %"is_int.2", label %"print_int.2", label %"print_float.2"
print_int.2:
  %".51" = bitcast [5 x i8]* @"fmt_int_.7" to i8*
  %".52" = call i32 (i8*, ...) @"printf"(i8* %".51", i64 %".48")
  br label %"print_merge.2"
print_float.2:
  %".54" = bitcast [6 x i8]* @"fmt_flt_.8" to i8*
  %".55" = call i32 (i8*, ...) @"printf"(i8* %".54", double %".47")
  br label %"print_merge.2"
print_merge.2:
  %".57" = bitcast [2 x i8]* @"nl_.9" to i8*
  %".58" = call i32 (i8*, ...) @"printf"(i8* %".57")
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