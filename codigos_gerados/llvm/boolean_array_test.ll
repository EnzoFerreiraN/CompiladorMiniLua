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
  %"arr" = alloca i8*
  store i8* null, i8** %"arr"
  %".3" = call i8* @"minilua_new_array"(i32 1)
  store i8* %".3", i8** %"arr"
  %"arr_ptr" = load i8*, i8** %"arr"
  %".5" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".5")
  %"idx_adj" = sub i32 %".5", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr", i32 %"idx_adj")
  %".8" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr")
  %".9" = bitcast i8* %".8" to i1*
  %"elem_ptr" = getelementptr i1, i1* %".9", i32 %"idx_adj"
  store i1 1, i1* %"elem_ptr"
  %".11" = bitcast [8 x i8]* @"str_.1" to i8*
  %"arr_ptr.1" = load i8*, i8** %"arr"
  %".12" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".12")
  %"idx_adj.1" = sub i32 %".12", 1
  %".14" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.1")
  %".15" = bitcast i8* %".14" to i1*
  %"elem_ptr.1" = getelementptr i1, i1* %".15", i32 %"idx_adj.1"
  %"elem_val" = load i1, i1* %"elem_ptr.1"
  %".16" = bitcast [4 x i8]* @"fmt_.2" to i8*
  %".17" = call i32 (i8*, ...) @"printf"(i8* %".16", i8* %".11")
  %".18" = bitcast [3 x i8]* @"fmt_.3" to i8*
  %".19" = call i32 (i8*, ...) @"printf"(i8* %".18", i1 %"elem_val")
  %".20" = bitcast [2 x i8]* @"nl_.4" to i8*
  %".21" = call i32 (i8*, ...) @"printf"(i8* %".20")
  %".22" = bitcast [18 x i8]* @"str_.5" to i8*
  %"arr_ptr.2" = load i8*, i8** %"arr"
  %".23" = fptosi double 0x4000000000000000 to i32
  call void @"minilua_check_index"(i32 %".23")
  %"idx_adj.2" = sub i32 %".23", 1
  %".25" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.2")
  %".26" = bitcast i8* %".25" to i1*
  %"elem_ptr.2" = getelementptr i1, i1* %".26", i32 %"idx_adj.2"
  %"elem_val.1" = load i1, i1* %"elem_ptr.2"
  %".27" = bitcast [4 x i8]* @"fmt_.6" to i8*
  %".28" = call i32 (i8*, ...) @"printf"(i8* %".27", i8* %".22")
  %".29" = bitcast [3 x i8]* @"fmt_.7" to i8*
  %".30" = call i32 (i8*, ...) @"printf"(i8* %".29", i1 %"elem_val.1")
  %".31" = bitcast [2 x i8]* @"nl_.8" to i8*
  %".32" = call i32 (i8*, ...) @"printf"(i8* %".31")
  %"arr_ptr.3" = load i8*, i8** %"arr"
  %".33" = fptosi double 0x4000000000000000 to i32
  call void @"minilua_check_index"(i32 %".33")
  %"idx_adj.3" = sub i32 %".33", 1
  %".35" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.3")
  %".36" = bitcast i8* %".35" to i1*
  %"elem_ptr.3" = getelementptr i1, i1* %".36", i32 %"idx_adj.3"
  %"elem_val.2" = load i1, i1* %"elem_ptr.3"
  br i1 %"elem_val.2", label %"then_0", label %"else_0"
if_merge:
  ret i32 0
then_0:
  %".38" = bitcast [22 x i8]* @"str_.9" to i8*
  %".39" = bitcast [3 x i8]* @"fmt_.10" to i8*
  %".40" = call i32 (i8*, ...) @"printf"(i8* %".39", i8* %".38")
  %".41" = bitcast [2 x i8]* @"nl_.11" to i8*
  %".42" = call i32 (i8*, ...) @"printf"(i8* %".41")
  br label %"if_merge"
else_0:
  %".44" = bitcast [21 x i8]* @"str_.12" to i8*
  %".45" = bitcast [3 x i8]* @"fmt_.13" to i8*
  %".46" = call i32 (i8*, ...) @"printf"(i8* %".45", i8* %".44")
  %".47" = bitcast [2 x i8]* @"nl_.14" to i8*
  %".48" = call i32 (i8*, ...) @"printf"(i8* %".47")
  br label %"if_merge"
}

@"str_.1" = internal constant [8 x i8] c"arr[1]:\00"
@"fmt_.2" = internal constant [4 x i8] c"%s \00"
@"fmt_.3" = internal constant [3 x i8] c"%d\00"
@"nl_.4" = internal constant [2 x i8] c"\0a\00"
@"str_.5" = internal constant [18 x i8] c"arr[2] (default):\00"
@"fmt_.6" = internal constant [4 x i8] c"%s \00"
@"fmt_.7" = internal constant [3 x i8] c"%d\00"
@"nl_.8" = internal constant [2 x i8] c"\0a\00"
@"str_.9" = internal constant [22 x i8] c"arr[2] is true (ERRO)\00"
@"fmt_.10" = internal constant [3 x i8] c"%s\00"
@"nl_.11" = internal constant [2 x i8] c"\0a\00"
@"str_.12" = internal constant [21 x i8] c"arr[2] is false (OK)\00"
@"fmt_.13" = internal constant [3 x i8] c"%s\00"
@"nl_.14" = internal constant [2 x i8] c"\0a\00"