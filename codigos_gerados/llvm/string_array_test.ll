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
  %"arr" = alloca i8*
  store i8* null, i8** %"arr"
  %".3" = call i8* @"minilua_new_array"(i32 4)
  store i8* %".3", i8** %"arr"
  %".5" = bitcast [6 x i8]* @"str_.1" to i8*
  %"arr_ptr" = load i8*, i8** %"arr"
  %".6" = fptosi double 0x3ff0000000000000 to i32
  %"idx_adj" = sub i32 %".6", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr", i32 %"idx_adj")
  %".8" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr")
  %".9" = bitcast i8* %".8" to i8**
  %"elem_ptr" = getelementptr i8*, i8** %".9", i32 %"idx_adj"
  store i8* %".5", i8** %"elem_ptr"
  %".11" = bitcast [6 x i8]* @"str_.2" to i8*
  %"arr_ptr.1" = load i8*, i8** %"arr"
  %".12" = fptosi double 0x4008000000000000 to i32
  %"idx_adj.1" = sub i32 %".12", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.1", i32 %"idx_adj.1")
  %".14" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.1")
  %".15" = bitcast i8* %".14" to i8**
  %"elem_ptr.1" = getelementptr i8*, i8** %".15", i32 %"idx_adj.1"
  store i8* %".11", i8** %"elem_ptr.1"
  %".17" = bitcast [9 x i8]* @"str_.3" to i8*
  %"arr_ptr.2" = load i8*, i8** %"arr"
  %".18" = fptosi double 0x3ff0000000000000 to i32
  %"idx_adj.2" = sub i32 %".18", 1
  %".19" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.2")
  %".20" = bitcast i8* %".19" to i8**
  %"elem_ptr.2" = getelementptr i8*, i8** %".20", i32 %"idx_adj.2"
  %"elem_val" = load i8*, i8** %"elem_ptr.2"
  %"is_null" = icmp eq i8* %"elem_val", null
  %".21" = bitcast [1 x i8]* @"empty_string_const" to i8*
  %"safe_str" = select  i1 %"is_null", i8* %".21", i8* %"elem_val"
  %".22" = bitcast [4 x i8]* @"fmt_.4" to i8*
  %".23" = call i32 (i8*, ...) @"printf"(i8* %".22", i8* %".17")
  %".24" = bitcast [3 x i8]* @"fmt_.5" to i8*
  %".25" = call i32 (i8*, ...) @"printf"(i8* %".24", i8* %"safe_str")
  %".26" = bitcast [2 x i8]* @"nl_.6" to i8*
  %".27" = call i32 (i8*, ...) @"printf"(i8* %".26")
  %".28" = bitcast [18 x i8]* @"str_.7" to i8*
  %"arr_ptr.3" = load i8*, i8** %"arr"
  %".29" = fptosi double 0x4000000000000000 to i32
  %"idx_adj.3" = sub i32 %".29", 1
  %".30" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.3")
  %".31" = bitcast i8* %".30" to i8**
  %"elem_ptr.3" = getelementptr i8*, i8** %".31", i32 %"idx_adj.3"
  %"elem_val.1" = load i8*, i8** %"elem_ptr.3"
  %"is_null.1" = icmp eq i8* %"elem_val.1", null
  %".32" = bitcast [1 x i8]* @"empty_string_const" to i8*
  %"safe_str.1" = select  i1 %"is_null.1", i8* %".32", i8* %"elem_val.1"
  %".33" = bitcast [4 x i8]* @"fmt_.8" to i8*
  %".34" = call i32 (i8*, ...) @"printf"(i8* %".33", i8* %".28")
  %".35" = bitcast [3 x i8]* @"fmt_.9" to i8*
  %".36" = call i32 (i8*, ...) @"printf"(i8* %".35", i8* %"safe_str.1")
  %".37" = bitcast [2 x i8]* @"nl_.10" to i8*
  %".38" = call i32 (i8*, ...) @"printf"(i8* %".37")
  %".39" = bitcast [9 x i8]* @"str_.11" to i8*
  %"arr_ptr.4" = load i8*, i8** %"arr"
  %".40" = fptosi double 0x4008000000000000 to i32
  %"idx_adj.4" = sub i32 %".40", 1
  %".41" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.4")
  %".42" = bitcast i8* %".41" to i8**
  %"elem_ptr.4" = getelementptr i8*, i8** %".42", i32 %"idx_adj.4"
  %"elem_val.2" = load i8*, i8** %"elem_ptr.4"
  %"is_null.2" = icmp eq i8* %"elem_val.2", null
  %".43" = bitcast [1 x i8]* @"empty_string_const" to i8*
  %"safe_str.2" = select  i1 %"is_null.2", i8* %".43", i8* %"elem_val.2"
  %".44" = bitcast [4 x i8]* @"fmt_.12" to i8*
  %".45" = call i32 (i8*, ...) @"printf"(i8* %".44", i8* %".39")
  %".46" = bitcast [3 x i8]* @"fmt_.13" to i8*
  %".47" = call i32 (i8*, ...) @"printf"(i8* %".46", i8* %"safe_str.2")
  %".48" = bitcast [2 x i8]* @"nl_.14" to i8*
  %".49" = call i32 (i8*, ...) @"printf"(i8* %".48")
  ret i32 0
}

@"str_.1" = internal constant [6 x i8] c"Hello\00"
@"str_.2" = internal constant [6 x i8] c"World\00"
@"str_.3" = internal constant [9 x i8] c"Index 1:\00"
@"empty_string_const" = internal constant [1 x i8] c"\00"
@"fmt_.4" = internal constant [4 x i8] c"%s \00"
@"fmt_.5" = internal constant [3 x i8] c"%s\00"
@"nl_.6" = internal constant [2 x i8] c"\0a\00"
@"str_.7" = internal constant [18 x i8] c"Index 2 (uninit):\00"
@"fmt_.8" = internal constant [4 x i8] c"%s \00"
@"fmt_.9" = internal constant [3 x i8] c"%s\00"
@"nl_.10" = internal constant [2 x i8] c"\0a\00"
@"str_.11" = internal constant [9 x i8] c"Index 3:\00"
@"fmt_.12" = internal constant [4 x i8] c"%s \00"
@"fmt_.13" = internal constant [3 x i8] c"%s\00"
@"nl_.14" = internal constant [2 x i8] c"\0a\00"